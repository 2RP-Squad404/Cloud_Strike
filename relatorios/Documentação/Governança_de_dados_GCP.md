# Governança de dados no GCP


## Dataplex
Principais ferramentas dataplex para governança de dados CATALOG, PROFILE e DATAQUALITY.

Para refinar o catálogo, utilizar da documentação com TAG TEMPLATE.

Centralizar permissionamento, mapeamento dos lakes, segurança de acesso no dataplex, MANAGE LAKES.


### 📚 Catalog

* **Contacts (novo Catalog)** - Responsáveis pelo processo de curadoria de uma informação específica, além de times envolvidos (grupos ou indivíduos).

* **Steward (antigo Catalog)** - lista dos responsáveis pela catalogação, grupos ou indivíduos (para caso necessidade de comunicar com essas pessoas)

* **Lineage** - Rastreamento dos dados (onde estão sendo utilizados, e os Jobs que o utilizam).

* **Overview** - Possibilidade de detalhar melhor as informações do asset (tabela, bucket).

* **Tags Dataplex** -  Informações sobre os dados que foram catalogados. 
    * Adicionadas as tabelas do dataplex de forma a documentar melhor o catalogo.
    * Baseada nos templates criados no **Tag Templates**, utilizando chave/valor.
    * Os valores da tag são gerados na atribuição da tag a tabela/colunas.

* **Tags BigQuery** - Gerenciamento de permissões dentro do BigQuery, como gerenciar quem pode ou não realizar querys com colunas específicas.




### 📰 Profile 

Monitoramento, realiza um scan que possui as principais características das estruturas das tabelas existentes *interessante para Engenheiros de dados*

* **Criar um Scan** 

* **Table to Scan** - Determinar o asset a ser escaneado (tabela).

* **Scope** 
    * Determinar se será escaneado todos os dados, ou apenas o incremento daquela tabela, ou seja, os dados adicionados naquela tabelas desde o ultimo scan. 
    * Determinar nos filtros o quanto daquela tabela vai ser escaneado

* Determinar a frequência do escaneamento

* Possível schedular uma recorrencia para o profiling (geralemente quando for incremental)

* Possibilidade de publicar no BigQuery (gera informações importantes para auditoria)

* **Resultado -** Informações importantes para engenharia, como: 
    * Principais estatísticas do objeto, 
    * Domínio das colunas, 
    * Tipo de conteúdo em cada coluna, 
    * Estatísticas de cada coluna,
    * Pode ser usado como base para data quality.




### 📊 Data Quality 
Reliza um scan nos dados de forma a identificar padrões como, valores nulos, tipos de dados, além de verificações mais personalizadas relacionado a como deveriam estar seus dados, e com isso existe a possibilidade de gerar alertas.
Tabelas com profile tendem a ter possibilidades de scan dos dados mais personalizada de acordo com os próprios dados.

* **Criar um Scan -** Vincular o que vai ser scaneado 

* **Quality rules -** Define o que vai ser verificado para manter a qualidade dos dados, podendo utilizar regras padrões, regras baseadas no profile, e baseadas em SQL, como:
	* Null check de email, cpf, etc,
	* Se o domínio do dado procede,
	* Se o dado encontrado com uma regex segue um padrão estabelecido,
	* Checagem de linhas.
	
* **Additional Settings -** Exportar resultados para o bigquery, é possível criar um dashboard com o resultado da qualidade de dados gerada.



### 🗂️ Manage
Permite centralizar o gerenciamento de dados, garantindo governança, segurança e conformidade, especialmente em ambiente onde os dados estão espalhados por diferentes armazenamentos como BigQuery, Cloud Storage, etc.

* **Lakes e Zones:** Os dados são organizados em *lakes* que podem ser subdivididos em *zonas* (zonas). Cada zona pode conter dados brutos, processados ou analíticos, oferecendo uma estrutura lógica para categorização e segmentação de dados.

* **Descoberta de dados automática:** O dataplex permite a descoberta autmatica dos dados armazenados, categorizando e gerando insights sobre os dados sem a necessidade da intervenção manual.



### 🔒 Secure

Determinar permissões via Dataplex a nível de detasets, utilizando permissões de dataplex.



## IAM/PAM

### 🔑 IAM Quotas e System Limits 

* Filtrar querys por usuarios, 

* Geralmente configuradas para valores ilimitados,

* Gerar um teto a nível de projeto para o quanto querys podem utilizar de **recursos por DIA**, e **por DIA por USUARIO** (quotas distribuídas igualmente por usuários).

* Ao atingir o limite, gera uma mensagem de LIMITE.



### ⏳ PAM 

Gerenciamento de permissões temporárias (requisição, e aprovação),

* Usuários podem requisitar uma permissão com limite máximo de 24 horas para utilizar.



## Bigquery

### ⚖️ Capacity Management
Designar uma capacidade para grupos de times, possibilitando dosar a quantidade de recursos para a utilização seja com processamento de consultas ou workflows.


* **Slot estimator -** uma calculadora que analisa os ultimos 30 dias de utilização, e estima um serviço, como **on demand** ou **flat-rate pricing** 
* **Create reservation -** escolher a edição da reserva, provavelmente utilizar o STANDARD inicialmente, se for utilizar machine learning, policy tags (bq), usar o ENTERPRISE. 
* **Max reservation -** determina o máximo de slots que podem ser utilizados
* **Baseline Slots -** Mínimo para manter 100% dos Jobs operacionais. Dimensionar com o valor médio de slots que consome.
* **Idle Slots -** Permite que a reserva caso ultrapasse o máximo de slots, utilize os slots que estão parados e sem utilização de outra reserva. Ou seja, utiliza os recursos ociosos.



### 📈 BI Engine
É uma ferramenta que otimiza a performance de consultas em dados no BigQuery, especialmente para o uso em ferramentas de BI como **Google Data Studio**, **Looker**. Ele é voltado para acelerar a experiência de consulta ao processar dados diretamente na ram, reduzindo o tempo de resposta  e melhorando a performance de dashboards e relatórios.

* Interessante para tabelas que não tem processamento em tempo real, D -1,
* Define o que vai pra **cache** de forma **automática** (a partir das querys geradas pelas ou para as ferramentas de BI),
* Possível definir as tabelas de preferencia para o armazenamento disponibilizado.



### 🪙 Analytics Hub 
Facilita a dinâmica de billing de forma a quando alguém fizer uma consulta um dataset o custo disso fica pra ele, não pro billing do dataset.

* **Criar uma Exchange** - Área de troca, pode definir quem são os usuários que devem podem acessar essa informação.

* **Criar um Listing** - Determinar o dataset a ser compartilhado, determinar restrições, documentar em **details**.

* No **BigQuery** Ao adicionar uma nova fonte de dados e adicionar um dataset existente a ele via **Analytics hub**, é possível você acessar um **dataset X** vindo do **projeto X** e o custo do seu uso dentro dele vai para o billing do **projeto Y** que é o assinante que recebeu o dataset.

* Os usuários inscritos no Analitycs hub podem escolher visualizar aqueles dados ou não, e chega como um projeto linkado.


## Folders

Utilizar folder para determinar as áreas de atuação que realmente utilizam e analisam os dados na organização (que possuem Centro de Custo),

* Determinar folders para áreas que necessitam de um centro de custo EXCLUSIVO (utilizam diversos recursos GCP),

* **Dinâmicas dia a dia:**  alguém pediu um projeto, criou o projeto, na segunda vez que alguém da mesma área requisitar um projeto, CRIAR A FOLDER.


## Anotações sem tópicos

* Caso esteja utilizando apenas o bigquery, vale a pena gerenciar o permissionamento apenas via bigquery (mais granular).

* O controle do dataplex para permissionamento, não permite permissões muito granulares, permissionamento feito via dataset.

* Realizar algo como definir no IAM a permissão de BIGQUERY JOB USER, e dentro do dataplex secure, definir se o usuário tem permissão de acessar os dados BIQUERY DATA VIEWER.

