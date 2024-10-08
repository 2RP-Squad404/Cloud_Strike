# Relatório SP01-3009 / Cloud Strike  

## 🎯 Objetivo
Foram realizadas atividades referente a criação de regras de permissionamento por **grupos** e **tags**, mascaramento de *dados sensíveis* do **BigQuery** com o **DLP (Data Loss Protection)** e a utilização de uma **organização** no ambiente **GCP**.
<br/>
<br/>

## 🌐 Tecnologias
* **Python 3**

* **Google Cloud Plataform**

* **Google Console Admin**

* **APIs do GCP e BigQuery**

* **APIs do Pub/Sub e Cloud Functions**
<br/>
<br/>

## Fluxograma de migração (sem processamento de dados) v.02

```mermaid
flowchart TD
    subgraph Migração de Dados
        A[Cloudera] -->|Transf. de Dados| B[BigQuery - Armazenar Dados]
        B --> C[Dataplex - Catalogação e Governança]
    end

    subgraph Segurança e Permissões
        C -->|Criptografia e Mascaramento| D[DLP - Mascaramento de Dados Sensíveis]
        C -->|Policy Tags e IAM| E[Controle de Acesso - IAM + Tags]
        E --> F[Usuários/Grupos de Acesso - DataEng, DataAnalytic, DevOps, DBA, FinOps]
        E --> G[Permissões por Tags - Área e Funções]
    end

    subgraph Automação de Processos
        H[Cloud Scheduler] -->|Pub/Sub| I[Pub/Sub - Mensagens Criptografadas]
        I -->|Cloud Functions| J[Cloud Functions - Descriptografia e Processamento]
    end

    subgraph Processamento e Views
        B --> K[BigQuery API - Consultar Dados Eventos]
        K -->|Python Script| L[VertexAI - Geração de Query Automática]
        L --> M[Upload Query - BigQuery]
        M -->|Views Automatizadas| N[BigQuery Views]
    end

    subgraph Governança e Monitoramento
        C --> O[Dataplex - Monitoramento de Dados]
        O --> P[Cloud Monitoring - Alertas e Dashboards]
        P -->|Exportação de Métricas| Q[BigQuery - Armazenar Métricas]
        Q --> R[ETL - Validação de Reservas e Distribuição de Slots]
    end

    subgraph Otimização de Custos e Labels
        R --> S[Dataform - Implementação de Labels e Tagueamentos]
        S --> T[Redução de Custos - Análise e Otimização de Slots BigQuery]
    end
```

## 🛡️ Mascaramento de dados no BigQuery
O mascaramento de dados no BigQuery pode ser realizados de diversas formas, porém a forma que parece ser mais efetiva e de menor custo é utilizando o DLP (Data Loss Prevention). 
Durante a sprint testamos diversas formas de realizar essa atividade, sendo elas:

* **Utilização do Sensitive Data Protection com o Console -** O qual só foi possível realizar o mascaramento dos dados **RAW** como um **CSV**, e daí então criar uma tabela no BigQuery. O que não faz muito sentido visando a necessidade do projeto.

![Dados mascarados via DLP console](../img/masked_data.png)

* **Utilização do Cloud Functions para mascaramento -** Após diversas tentativas, foi realizado o mascaramento, porém a function roda um script que faz um `UPDATE` via SQL para atualizar os dados da coluna sensível, o que seria trabalhoso e custoso para realizar em todas as tabelas.

* **Utilização do Cloud Run com Scheduler -** Realizado o mascaramento, porém a function roda um script que faz um `UPDATE` via SQL agendado via **Scheduler** para atualizar os dados da coluna sensível, o que seria trabalhoso e custoso para realizar em todas as tabelas.

![Dados mascarados via Cloud Run com Scheduler](../img/mock_data_mask.png)
<br/>
<br/>

## 🔐 Criptografia de mensagens do Pub/Sub

### > Fluxo
1. **Cloud Scheduler**: Agendador envia mensagem.
2. **Pub/Sub**: Tópico recebe e distribui.
3. **Cloud Functions**: Processa a mensagem.

### > Mensagens: Criptografia Personalizada
- **Definição**: Criptografia aplicada às mensagens antes do envio.
- **Exemplo**: Uso de AES (Advanced Encryption Standard) para garantir acesso apenas a destinatários autorizados.

### > Criação do temporizador

![Cloud Scheduler](../img/image-2.png)

### > Criação da função / Código (Python)
![Cloud Functions](../img/image.png)


### > 👨‍💻 Código utilizado

```python
import base64
import functions_framework


@functions_framework.cloud_event
def funcao_criptografia(cloud_event):
    # Parte do código que criptografa
    encrypted_message = cloud_event.data["message"]["data"]
    print(f"Mensagem criptografada: {encrypted_message}")

    # Parte do código que descriptografa
    decoded_message = base64.b64decode(encrypted_message)
    print(decoded_message)
```

### Visualização da POC (LOG)

![POC](../img/image-1.png)
<br/>
<br/>

## 📌 Gerenciamento de permissões via Tags 

Ao ter a catalogação dos dados no dataplex com as tags necessárias, é possível realizar o permissionamento atrevés delas, determinando quem pode ou não visualizar os dados marcados por aquelas tags. 

![Tags em Colunas](../img/column_tag.png)

* Necessário **conta Organizacional**.


## 🏢 [Organização GCP](../relatorios/Organização_GCP.md)

