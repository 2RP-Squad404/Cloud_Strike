## Documentação Script - tarefa 2
 **Estagiário**: Gabriel Alvim  
 **Data**: 29/08/2023
 #
 Este script SQL foi desenvolvido para criar uma tabela de resumo chamada '**client_summary**', que consolida informações essenciais sobre clientes a partir de dois datasets principais: '**purchases**' (*informações de compras*) e '**campaigns_2023**' (*informações de campanhas promocionais*). A consulta é executada no interpretador Hive, e a tabela resultante fornece insights detalhados sobre o comportamento de compra e interação dos clientes com campanhas promocionais.
 
 ## Estrutura do Script
**Criação da Tabela** *client_summary*: A criação da tabela é feita por meio de uma consulta `CREATE TABLE AS SELECT`, que permite a geração e armazenamento dos resultados em uma nova tabela.

**Seleção e Cálculo de Campos**:
- **client_id**: Identificação única do cliente, derivada da tabela purchases (p.client_id).

- **most_purchase_location**:
Local mais frequente onde o cliente realiza suas compras (por exemplo, website, app, loja). Este valor é determinado por uma subconsulta (ranked) que agrupa as compras por client_id e purchase_location, utilizando a função `ROW_NUMBER()` para selecionar a localização com maior frequência.

- **first_purchase**:
Data da primeira compra do cliente, calculada usando a função `MIN()` sobre o campo purchase_datetime da tabela purchases.

- **last_purchase**:
Data da última compra do cliente, calculada usando a função `MAX()` sobre o campo purchase_datetime da tabela purchases.

- **total_price**:
Total gasto pelo cliente, calculado como a soma dos produtos de price, amount e discount_applied ajustados para duas casas decimais. A função `COALESCE()` é usada para garantir que valores nulos sejam substituídos por zero.

- **most_campaign**:
Número total de campanhas recebidas pelo cliente, excluindo aquelas com status "error". Este valor é derivado de uma subconsulta (most_campaigns) que agrupa os dados de campaigns_2023 por client_id, utilizando a função `COUNT()` com uma condição CASE para excluir campanhas com status "error".

- **quantity_error**:
Quantidade de campanhas que retornaram o status "error" para o cliente. Este valor é calculado na subconsulta quantity_error usando uma condição `WHERE` para filtrar campanhas com status "error" e contá-las com a função `COUNT()`.

- **date_today**:
Data atual formatada como YYYY-MM-DD, obtida usando a função `CURRENT_DATE()` e convertida para string.

- **anomes_today**:
Data atual formatada como MMYYYY (tipo INT), obtida concatenando o mês e o ano da data atual.

**Subconsultas Utilizadas**:

- *ranked*:
Esta subconsulta agrupa os dados de compras por client_id e purchase_location, utilizando `ROW_NUMBER()` para ordenar as localizações de compra por frequência. A subconsulta retorna o local mais frequente para cada cliente.

- *most_campaigns*:
Subconsulta que agrupa os dados de campanhas por client_id, contando o número total de campanhas recebidas (most_campaign) e o número de campanhas com status "error" (error_count). O uso da condição CASE dentro da função `COUNT()` permite a separação dessas duas métricas.

- *quantity_error*:
Subconsulta adicional para contar especificamente o número de campanhas com status "error" para cada cliente, filtrando as campanhas com return_status = 'error' na tabela campaigns_2023.

**Join e Agrupamento**:
O script realiza **LEFT JOINs** entre a tabela purchases e as subconsultas ranked, most_campaigns, e quantity_error para combinar as informações derivadas dessas subconsultas. Finalmente, o agrupamento é feito por client_id, most_purchase_location, most_campaign, e quantity_error para gerar os resultados finais na tabela client_summary.

## Algumas funções SQL utilizadas

`CASE`  
- Uso: *CASE WHEN return_status != 'error' THEN 1 END*  

    Propósito: Condicional utilizado dentro de COUNT() para incluir ou excluir campanhas no cálculo, dependendo do status (return_status).

`CAST()`  
- Uso: *CAST(CURRENT_DATE() AS STRING), CAST(CONCAT(LPAD(CAST(MONTH(CURRENT_DATE()) AS STRING), 2, '0'), CAST(YEAR(CURRENT_DATE()) AS STRING)) AS INT)*    

    Propósito: Converte o tipo de dados da data atual para string (YYYY-MM-DD) e para um inteiro formatado como MMYYYY, permitindo manipulação de formatos de data.

`CONCAT()`
- Uso: *CONCAT(LPAD(CAST(MONTH(CURRENT_DATE()) AS STRING), 2, '0'), CAST(YEAR(CURRENT_DATE()) AS STRING))*

    Propósito: Concatena o mês e o ano da data atual para formar o valor de anomes_today no formato MMYYYY.

`LPAD()`
- Uso: *LPAD(CAST(MONTH(CURRENT_DATE()) AS STRING), 2, '0')*

    Propósito: Preenche o mês com um zero à esquerda se necessário, garantindo que o mês tenha sempre dois dígitos no formato MMYYYY.
## Considerações Finais 
Este script fornece um resumo abrangente das atividades de compra e envolvimento dos clientes com campanhas promocionais, permitindo uma análise detalhada que pode ser utilizada para decisões estratégicas de marketing e vendas. As subconsultas são otimizadas para garantir a precisão e integridade dos dados agregados.