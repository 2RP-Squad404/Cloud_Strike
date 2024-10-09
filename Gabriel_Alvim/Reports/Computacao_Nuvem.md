# Relatório de Estudos

**Nome do Estagiário:** Gabriel Alvim  
**Data:** 20/08/2024
#
## Computação em Nuvem
Estudando Computação em Nuvem, adquiri um entendimento profundo sobre diversos serviços da Google Cloud Platform que são essenciais para o processamento, análise e gerenciamento de dados em larga escala.
#
### Tecnologias Utilizadas: 
**Google Cloud Platform (GCP)**

- Google Cloud Dataflow
- Google Cloud Dataproc
- Google Cloud Composer
- Google Cloud Functions
- BigQuery
- Cloud Storage
- Cloud Pub/Sub

**Apache Software**
- Apache Beam (usado pelo Google Cloud Dataflow)
- Apache Hadoop (usado pelo Google Cloud Dataproc)
- Apache Spark (usado pelo Google Cloud Dataproc)
- Apache Hive (usado pelo Google Cloud Dataproc)
- Apache Airflow (usado pelo Google Cloud Composer)

**Frameworks e Tecnologias Associadas**

- *Spark MLlib* (usado para machine learning no Dataproc)
- *HTTP* (usado para gatilhos no Google Cloud Functions)

**Linguagens de Programação Suportadas no Google Cloud Functions**
- Node.js
- Python
- Go
- Java

## Google Cloud Dataflow
 Serviço gerenciado para processamento de dados em tempo real e batch, utilizando o modelo de programação do Apache Beam. É integrado com BigQuery e Cloud Storage, oferecendo escalabilidade automática e flexibilidade para diferentes necessidades de projeto.

## Google Cloud Dataproc
Serviço que simplifica o uso de clusters baseados em Apache Hadoop e Spark, ideal para processamento intensivo de dados e machine learning. Ele otimiza recursos e custos, especialmente em tarefas de ETL e análise de big data.

## Google Cloud Composer
Serviço de orquestração de workflows baseado em Apache Airflow. Facilita a criação, execução e monitoramento de pipelines de dados complexos, com integração ao ecossistema Google Cloud, permitindo automação eficiente de processos.

## Google Cloud Functions
Serviço serverless que executa código em resposta a eventos, sem a necessidade de gerenciar infraestrutura. É ideal para aplicações que exigem respostas rápidas, como APIs e automação de processos, com escalabilidade automática.
#
Esses serviços oferecem uma base sólida para criar, gerenciar e escalar soluções de dados, proporcionando flexibilidade, eficiência e integração com o ecossistema Google Cloud.
#
## Virtualização vs. Computação em Nuvem
Virtualização e computação em nuvem, embora frequentemente relacionadas, são conceitos distintos com finalidades e aplicações diferentes. No contexto da Google Cloud Platform (GCP) e dos serviços estudados, essas diferenças tornam-se claras.

**Virtualização**: Criação de versões virtuais de recursos físicos, como servidores, redes ou sistemas operacionais. É uma tecnologia que permite que múltiplas máquinas virtuais (VMs) sejam executadas em um único servidor físico, otimizando o uso de hardware. Essa abordagem reduz a necessidade de infraestrutura física, simplifica o gerenciamento de recursos e aumenta a eficiência dos processos de DevOps. A virtualização pode ser usada dentro de uma solução de computação em nuvem, mas seu escopo é mais limitado e específico.

**Computação em Nuvem**: Se refere ao fornecimento de recursos e serviços de TI via internet, como armazenamento, processamento e aplicações. Na GCP, por exemplo, serviços como Google Cloud Dataflow, Google Cloud Dataproc e Google Cloud Composer são exemplos de computação em nuvem, pois oferecem funcionalidades escaláveis e gerenciadas para processamento e análise de dados, sem a necessidade de gerenciar a infraestrutura subjacente. A computação em nuvem oferece flexibilidade, escalabilidade e acessibilidade, permitindo que as empresas se concentrem em suas aplicações e dados sem se preocupar com a manutenção de hardware.

A diferença chave é que a virtualização é uma tecnologia subjacente que pode ser usada para criar e gerenciar ambientes de computação em nuvem, mas a computação em nuvem é uma abordagem mais abrangente que envolve a entrega de serviços completos via internet, muitas vezes sem que o usuário precise lidar diretamente com a virtualização.
#
No contexto da GCP, a computação em nuvem aproveita a virtualização para fornecer serviços gerenciados e escaláveis que permitem o desenvolvimento, processamento e análise de dados de forma eficiente e integrada.
#
## Recursos Utilizados
#### Dataflow
- [Doc](https://cloud.google.com/dataflow/docs/overview?hl=pt-br)
- [Aula](https://www.youtube.com/watch?v=b0v0XzHZrVU)
- [Aula 2](https://www.youtube.com/watch?v=g9OqgYS6ICI)

#### Data Proc
- [Aula](https://www.youtube.com/watch?v=_lwrfxE2RtE)
- [Aula 2](https://www.youtube.com/watch?v=wxHvaG5j4hU)
- [Doc](https://cloud.google.com/dataproc-serverless/docs?hl=pt-br)

#### Cloud Composer
- [Aula](https://www.youtube.com/watch?v=ZV8LJTEk0wE)
- [Doc](https://cloud.google.com/composer?hl=pt_br)

#### Cloud Functions
- [Doc](https://cloud.google.com/functions?hl=pt_br)
- [Aula](https://www.youtube.com/watch?v=3mpbhztd1Y0)
#
**Desafios Encontrados:**  
Escolher uma vertente mais especifíca centralizando uma ferramenta.

**Feedback e Ajustes:**  
Bons segmentos apresentados.

**Próximos Passos:**  
Aprofundar na utilização das ferramentas.