%hive
CREATE TABLE client_summary AS
SELECT 
    -- id cliente
    p.client_id,
    
    -- local de compra mais frequente para o cliente, calculado em uma subconsulta
    ranked.most_purchase_location,
    
    -- Determino a data da primeira compra do cliente
    MIN(p.purchase_datetime) AS first_purchase,
    
    -- Determino a data da última compra do cliente
    MAX(p.purchase_datetime) AS last_purchase,

    -- Calculo o total gasto pelo cliente, ajustando a precisão para duas casas decimais
    COALESCE(ROUND(SUM(p.price * p.amount * (1 - p.discount_applied)), 2), 0) AS total_price,
    
    -- Encontro o número total de campanhas recebidas pelo cliente, excluindo as com status "error"
    COALESCE(most_campaigns.most_campaign, 0) AS most_campaign,
    
    -- Conto o número de campanhas com status "error" para cada cliente
    COALESCE(quantity_error.error_count, 0) AS quantity_error,
     
    -- data atual como YYYY-MM-DD
    CAST(CURRENT_DATE() AS STRING) AS date_today,
    
    -- data atual como MMYYYY
    CAST(CONCAT(LPAD(CAST(MONTH(CURRENT_DATE()) AS STRING), 2, '0'), CAST(YEAR(CURRENT_DATE()) AS STRING)) AS INT) AS anomes_today
FROM 
    -- tabela principal de compras
    purchases p

-- join com a subconsulta que encontra o local de compra mais frequente
LEFT JOIN (
    SELECT
        client_id,
        purchase_location AS most_purchase_location,
        ROW_NUMBER() OVER (PARTITION BY client_id ORDER BY COUNT(*) DESC) AS rn
    FROM
        purchases
    GROUP BY
        client_id, purchase_location
) ranked
ON p.client_id = ranked.client_id AND ranked.rn = 1

-- join com a subconsulta que calcula a quantidade de campanhas e campanhas com status "error"
LEFT JOIN (
    SELECT
        client_id,
        COUNT(CASE WHEN return_status != 'error' THEN 1 END) AS most_campaign,
        COUNT(CASE WHEN return_status = 'error' THEN 1 END) AS error_count
    FROM
        campaigns_2023
    GROUP BY
        client_id
) most_campaigns
ON p.client_id = most_campaigns.client_id

-- join com a subconsulta que conta as campanhas com status "error"
LEFT JOIN (
    SELECT
        client_id,
        COUNT(*) AS error_count
    FROM
        campaigns_2023
    WHERE
        return_status = 'error'
    GROUP BY
        client_id
) quantity_error
ON p.client_id = quantity_error.client_id

-- agrupando os resultados finais por cliente e outras dimensões calculadas
GROUP BY
    p.client_id, ranked.most_purchase_location, most_campaigns.most_campaign, quantity_error.error_count
