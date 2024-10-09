# Relatório de Estudos

**Nome do Estagiário:** Gabriel Alvim  
**Data:** 02/08/2024
#
## Engenharia de Dados

A Engenharia de Dados é essencial para transformar dados brutos em informações valiosas. Ela envolve a coleta, processamento, armazenamento e análise de grandes volumes de dados, utilizando diversas tecnologias.


## Resumo dos módulos 

Durante meu aprendizado em Engenharia de Dados, desenvolvi várias competências essenciais para lidar com grandes volumes de dados. Na **aquisição de dados**, aprendi a coletar informações de diversas fontes, como bancos de dados, APIs, arquivos e sensores, o que me ajudou a reunir uma base de dados ampla e diversificada. No **armazenamento de dados**, estudei e apliquei (simulações) soluções que suportam grandes volumes de informações, como data warehouses, data lakes e bancos de dados distribuídos, fundamentais para manter os dados organizados e acessíveis.

Entendi a importância do **processamento de dados**, onde aprendi a transformar e limpar dados, removendo duplicatas, tratando valores ausentes e normalizando informações para garantir sua qualidade. Na **integração de dados**, adquiri habilidades para unificar dados de diferentes fontes de forma consistente, essencial para análises completas e precisas. A **automatização de pipelines de dados** foi uma etapa crucial, permitindo criar fluxos contínuos e automatizados, desde a coleta até a análise, otimizando processos e minimizando erros manuais.

Por fim, em **segurança e governança de dados**, aprendi a importância de armazenar e manipular dados de maneira segura, seguindo regulamentações e políticas de privacidade, garantindo a proteção e a confiança nas informações gerenciadas. Essas habilidades são fundamentais para entender e aplicar o papel da Engenharia de Dados na era da informação.

## Links de Laboratórios 
Mesmo se tratando de engenharia de dados adicionei um link de estudos da matéria de Data Science, onde foi aplicado alguns conceitos que percorrem ambas as áreas como importação de bibliotecas, verificação de dataframes e manuzeio de dados entre saídas e valores;

- [Google Colab Exemplo](https://colab.research.google.com/drive/1iI8I42mCEPaCWAFIvKmEf85CjRqD5tSL?usp=sharing)

## Recursos Utilizados:
- [Alura](https://www.alura.com.br/artigos/engenharia-dados)
- [GitHub](https://github.com/lvgalvao/data-engineering-roadmap)
- [Coursera](https://www.coursera.org/)
- [ChatGPT](https://chatgpt.com/)
- [PDF](https://aimlcommunity.com/wp-content/uploads/2019/09/Data-Engineering.pdf)

## Principais comandos:

### Importando as bibiliotecas

**`import pandas as pd`** *dataframes (tabelas)*

**`import numpy as np`** *funções matemáticas*

**`import matplotlib.pyplot as plt`** *plotar gráficos*

### Leitura de Dados

**ler arquivo CSV** `df = pd.read_csv('dados.csv')`


**lerarquivo Excel** `df = pd.read_exce('dados.xlsx')`

### Inspeção de Dados
**estatísticas descritivas** `print(df.describe())`


### Limpeza de Dados
**tratar valores ausentes** `df = df.dropna()`

### Transformação de Dados
**converter tipos de dados** `df['coluna'] = df['coluna'].astype(int)`


## Tecnologias
- Bancos de Dados: **MySQL, PostgreSQL, MongoDB, Cassandra**;
- Data Warehousing: **Amazon Redshift, Google BigQuery, Snowflake**;

- Processamento de Dados: **ApacheHadoop, ApacheSpark, ApacheFlink**;
Ferramentas ETL (Extract, Transform, Load): **ApacheNifi, ApacheAirflow, Airbyte, Dataflow**;
- Linguagens de Programação: **Python, SQL, Java, Scala, R**;


**Desafios Encontrados:**  
O desafio que encontrei foi aplicar os conhecimentos adquiridos em ambientes de testes, os quais não tem a possibilidade de perfomar execuções reais como o cumprimento de demandas dia-a-dia.

**Feedback e Ajustes:**  
A introdução foi bem enxuta e abrangente, onde ao invés de apenas ler o conteúdo, pesquisei  cada conceito e tecnologias a parte para poder vizualizar e tentar colocar a técnica em prática.

**Próximos Passos:**  
A seguir irei avançar para mais conceitos que compõe a área de Engenharia de Dados, e continuar me aprofundando nos quais já estou familiarizado. 
