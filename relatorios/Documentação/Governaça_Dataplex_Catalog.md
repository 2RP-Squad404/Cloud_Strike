# Relatório de Estudos

**Nome:** Lucas Lima Leite  
**Data:** 2ª Semana de Setembro 2024

## Assuntos

- [Governança de Dados](#governança-de-dados)
    - [Benefícios](#benefícios)
    - [Função da governança de dados](#função-da-governança-de-dados)
- [Dataplex](#dataplex)
    - [Governança de dados no BigQuery](#governança-de-dados-no-bigquery)
    - [Descoberta automatizada de dados com o Data Catalog](#descoberta-automatizada-de-dados-com-o-data-catalog)
- [Data Catalog](#data-catalog)
    - [Benefícios](#benefícios-1)
- [Dataplex + Data Catalog](#dataplex--data-catalog)
    - [Benefícios](#benefícios-2)
- [LABS](#labs)
    - [Dataplex](#dataplex-1)
        - [Dataplex: Qwik Start - Console/Command Line](#dataplex-qwik-start---consolecommand-line)
        - [Tagging Dataplex Assets](#tagging-dataplex-assets)
        - [Get Started with Dataplex: Challenge Lab](#get-started-with-dataplex-challenge-lab)
- [Recursos Utilizados](#recursos-utilizados)


## Governança de Dados

A governança de dados é **tudo** o que você faz para garantir que os **dados sejam seguros, privados, precisos, disponíveis e utilizáveis**. Isso inclui as ações que as pessoas devem realizar, os processos que devem seguir e a tecnologia que oferece suporte durante todo o ciclo de vida dos dados.

Governança de dados significa definir padrões internos (**políticas de dados**) que se aplicam a forma como os dados são coletados, armazenados, processados e descartados. Ela **controla quem pode acessar quais tipos de dados e quais tipos de dados estão sob governança**. A governança de dados também envolve a conformidade com padrões externos definidos por associações do setor, agências governamentais e outras partes interessadas.

### Benefícios
* **Melhora na tomada de decisões:** Os usuários conseguem os dados que precisam para **alcançar e atender clientes, projetar e melhorar produtos e serviços e aproveitar oportunidades de novas receitas**.

* **Melhorar o controle de custos:** **Os dados ajudam a gerenciar os recursos de maneira mais eficaz**. Possibilitando **eliminar a duplicação de dados causada por silos de informações** (unidades de armazenamento de dados que não se comunicam entre si), tirando a necessidade de comprar hardware excedente e nem manter hardware caro.

* **Melhora na conformidade regulatória:** Um cenário regulatório cada vez mais complexo exigiu que as organizações estabelecessem práticas robustas de governança de dados. **Possibilidade de evitar riscos associados à não conformidade enquanto antecipa proativamente novas regulamentações**.

* **Gerenciamento de riscos:** Com uma governança forte, você elimina as preocupações sobre a exposição de dados sensíveis a indivíduos ou sistemas que não têm a autorização adequada, a violações de segurança de usuários externos mal-intencionados ou mesmo a usuários internos que acessam dados que não têm o direito de ver. 

* **Maior permissão de acesso da equipe:** Uma governança de dados eficiente permite que mais funcionários acessem mais dados, com a confiança de que esses funcionários têm acesso aos dados corretos e que essa democratização de dados não terá um impacto negativo na organização.


### Função da governança de dados
A governança de dados é necessária para garantir que os dados estejam seguros, protegidos, privados, utilizáveis e em conformidade com as políticas de dados internos e externos. A governança de dados permite definir e aplicar controles que permitem maior acesso aos dados, conquistando a segurança e a privacidade dos controles de dados. Casos de uso comuns :

* **Administração de dados -** Governança de dados muitas vezes significa conceder aos "administradores de dados" a responsabilidade pelos próprios dados e pelos processos que garantem o uso adequado dos dados.

* **Qualidade dos dados -** A governança de dados também é usada para garantir a qualidade dos dados, que se refere a quaisquer atividades ou técnicas projetadas para garantir que os dados sejam adequados para serem usados. A qualidade dos dados é geralmente avaliada em seis dimensões: acurácia, integridade, consistência, oportunidade, validade e exclusividade.

* **Gerenciamento de dados -** Este é um conceito amplo que abrange todos os aspectos do gerenciamento de dados como um ativo empresarial, desde a coleta e o armazenamento até o uso e a supervisão, garantindo que os dados sejam utilizados de forma segura, eficiente e econômica antes de serem descartados.

## Dataplex
O Dataplex do Google Cloud Platform (GCP) é um serviço para **gerenciamento de dados em larga escala**, oferecendo uma plataforma **centralizada** para organizar, monitorar e governar dados de forma distribuída. Ele permite que as empresas **unifiquem seus dados de diferentes fontes** (como data lakes e data warehouses), **automatizem a catalogação e a governança**, além de aplicar políticas de segurança e compliance. O Dataplex facilita a análise de dados com ferramentas nativas do GCP, como BigQuery, e fornece uma camada de abstração para simplificar o acesso aos dados.

### Governança de dados no BigQuery
Para dar suporte ao ciclo de vida completo dos dados e facilitar o gerenciamento, a descoberta e a governança dos dados para os clientes, é possível utilizar recursos do Dataplex diretamente no BigQuery, incluindo qualidade e linhagem de dados, e criação de perfil.

### Descoberta automatizada de dados com o Data Catalog
Com o data catalog é possivel automatizar a descoberta de dados, a classificação e o enriquecimento de metadados de dados estruturados, semiestruturados e não estruturados, armazenados no Google Cloud e em outros locais, com inteligência de dados integrada.

## Data Catalog
É um serviço de gerenciamento de metadados que permite catalogar, organizar e pesquisar datasets de forma eficiente. O Data Catalog automaticamente cataloga metadados de fontes do Google Cloud, como BigQuery, Vertex AI, Pub/Sub, Spanner, Bigtable, etc. Ele também indexa metadados de tabelas e conjuntos de arquivos do Cloud Storage por meio de pesquisa.

### Benefícios
* **Catalogação Automática:** O Data Catalog é capaz de **catalogar automaticamente** os datasets, views e tabelas que estão no **BigQuery**, além de dados **raw** como no **Cloud Storage**. Ele também permite que metadados adicionais (como descrições, tags e termos de taxonomia) sejam atribuídos para enriquecer o contexto dos dados.

* **Pesquisa e Descoberta:** Proporciona uma busca eficiente por dados no BigQuery, facilitando que os usuários encontrem datasets e views relevantes através de **descrições e tags**.

* **Tagging e Classificação:** Permite adicionar **tags personalizadas e classificações** (como sensibilidade de dados) para melhorar o gerenciamento e a governança, especialmente no contexto de conformidade com normas como **GDPR** ou **LGPD**.

* **Integração com o IAM:** Integra-se com o sistema de gerenciamento de identidades e acessos (**IAM**) do GCP, permitindo que as permissões de acesso aos dados sejam gerenciadas de forma **centralizada**.



## Dataplex + Data Catalog

O **Dataplex** oferece uma camada abrangente de gerenciamento e segurança de dados, enquanto o **Data Catalog** garante a organização e descoberta eficiente, ambos complementando-se para garantir uma governança de dados eficiente no BigQuery.  

*↓ Exemplo malha de dados ↓*

![Exemplo Malha de dados](https://www.gstatic.com/bricks/image/0f8c7252d6344b571c3569a83b8f41d5189eafbae9cbfb4b73165513cd34ddb8.svg)

### Benefícios

* **Visão Centralizada e Unificada dos Dados:** Usar o **Dataplex** para unificar diferentes fontes de dados (mesmo que estejam em outros ambientes além do BigQuery) e o **Data Catalog** para fornecer uma catalogação detalhada.

* **Governança em Grande Escala:** Aplicar políticas de segurança e governança **automatizadas** em todos os datasets e views no BigQuery.

* **Aprimoramento de Qualidade e Conformidade:** Monitorar continuamente a qualidade dos dados no Dataplex e garantir a conformidade com regulamentações por meio de tags e auditorias no Data Catalog.

* **Documentação e Descoberta de Dados:** A capacidade de documentar os dados com descrições ricas e classificar os dados de acordo com níveis de confidencialidade ou uso.

### Separações interessantes das ZONAS

* **RAW DATA ZONE -** Dados *RAW* a serem utilizados para gerar outras tabelas.
* **CURATED DATA ZONE -** Dados tratados gerados através de dados de tabelas *RAW*.
* **DATA PRODUCT ZONE -** Um produto a partir dos dados, com valor, o qual se pode tomar decisões.

### Permissões básicas Dataplex

| Papel                          | Descrição                                                                 |
|---------------------------------|---------------------------------------------------------------------------|
| Leitor do Dataplex              | Capacidade de visualizar, mas não editar, o lake e as zonas e os recursos configurados. |
| Editor do Dataplex              | Capacidade de editar o lake. Pode criar e configurar lakes, zonas, recursos e tarefas.   |
| Administrador do Dataplex       | Capacidade de administrar um lake.                                         |
| Desenvolvedor do Dataplex       | Capacidade de executar cargas de trabalho de análise de dados em um lake.  |

### Permissões para metadados Dataplex

| Papel                           | Descrição                                                          |
|----------------------------------|--------------------------------------------------------------------|
| Gravador de metadados do Dataplex| Capacidade de atualizar os metadados de um determinado recurso.     |
| Leitor de metadados do Dataplex  | Capacidade de ler os metadados (por exemplo, consultar uma tabela). |

### Mais permissões

| Papel                         | Descrição                                                                                                                             |
|--------------------------------|---------------------------------------------------------------------------------------------------------------------------------------|
| Leitor de dados do Dataplex    | Capacidade de ler dados do armazenamento anexado a recursos, incluindo buckets de armazenamento e conjuntos de dados do BigQuery (e seus conteúdos). |
| Gravador de dados do Dataplex  | Capacidade de gravar nos recursos subjacentes indicados pelo recurso.                                                                 |
| Proprietário de dados do Dataplex | Concede o papel de Proprietário aos recursos subjacentes, incluindo a capacidade de gerenciar recursos filhos. Por exemplo, como proprietário dos dados de um conjunto de dados do BigQuery, você pode gerenciar as tabelas subjacentes. |




## LABS
### Dataplex
---
### [Dataplex: Qwik Start - Console/Command Line:](https://www.cloudskillsboost.google/course_templates/726?catalog_rank=%7B%22rank%22%3A1%2C%22num_filters%22%3A1%2C%22has_search%22%3Atrue%7D&search_id=36198280)

* **Ativar a API do Dataplex**,
* **Criar um lake** um lake no dataplex é o domínio organizacional mais elevado que representa uma área de dados específica, uma unidade de negócios ou um departamento. O que permite organizar e fornecer dados para um grupo de usuários específico.
* **Particionar o data lake com Zonas -** As *"zones"* são subdomínios dentro do lake que permite categorizar os dados de forma mais detalhada. Podendo categorizar os dados por estágio, uso ou restrições.  

    * **Tipos de Zonas:**

        * **Raw zones -** Contêm dados em formato bruto (como arquivos em buckets do Cloud Storage) e não estão sujeitos a validações rigorosas de tipo.
        * **Curated Zones -** Contêm dados transformados, que foram limpos, formatados e estão prontos para análise, como datasets do BigQuery.

* **Adicionar conteudo(*assets*) as Zonas -** Os dados armazenados em buckets do Cloud Storage ou datasets do BigQuery podem ser vinculados como *assets* (ativos) a *zones* dentro de um *lake* no Dataplex.

### [Tagging Dataplex Assets:](https://www.cloudskillsboost.google/course_templates/726/labs/461570)

* **Ativar a API do Dataplex**
* **Criar um lake**
* **Criar uma Zona (Curated Zone)**
* **Adicionar um asset a Zona criada**

* **Criar uma Tag Template -** Para realizar a tag dos dados, é necessário *criar um Template de Tag*, que pode ser **publica (recomendado)** ou privada. Usuários que **possuem as permissões necessárias** para vizualizar um ativo de dados podem ver **todas as tags publicas associadas a ele**. Isso facilita a **busca e descoberta dos dados**, ao mesmo tempo em que **respeita os controles de acesso** aos dados já implementados nos dados subjacentes.

* **Associar uma *Tag Template* a um *Asset* -** Após criar uma tag template, é possível usa-lo para anexar *Tags* a qualquer ativo de dados desejados, desde que tenha acesso a esses ativos.

* **Buscar *Assets* utilizando *Tags* -** Depois associar *tags* aos *assets* desejados, é possível buscar todos os assets associados a uma ou mais tags.

### [Get Started with Dataplex: Challenge Lab:](https://www.cloudskillsboost.google/course_templates/726/labs/461571)
* **Ativar a API do Dataplex**

* **Criar um lake (Customer Engagements)**

* **Criar uma Zona "Raw" (Raw Event Data)**

* **Criar e Adicionar um Bucket (*asset*) a Zona**

* **Criar e aplicar um Tag Template a Zona (Raw Event Data)**


### Recursos Utilizados:
- [LABS](#labs)
- [Manage and govern distributed data with Dataplex](https://www.youtube.com/watch?v=a6QVNAlAAl0)
- [Google Cloud Day: Governança de Dados na prática usando o GCP](https://www.youtube.com/watch?v=5-NtozDQVBQ&t=1096s)

