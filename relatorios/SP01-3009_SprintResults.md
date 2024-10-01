# Relatório SP01-3009 / Cloud Strike

## Criptografia de mensagens e arquivos no Pub/Sub através de um trigger


## Mascaramento de dados no BigQuery
O mascaramento de dados no BigQuery pode ser realizados de diversas formas, porém a forma que parece ser mais efetiva e de menor custo é utilizando o DLP (Data Loss Prevention). 
Durante a sprint testamos diversas formas de realizar essa atividade, sendo elas:

* **Utilização do Sensitive Data Protection com o Console -** O qual só foi possível realizar o mascaramento dos dados **RAW** como um **CSV**, e daí então criar uma tabela no BigQuery. O que não faz muito sentido visando a necessidade do projeto.

* **Utilização do Cloud Functions para mascaramento -** Após diversas tentativas, foi realizado o mascaramento, porém a function roda um script que faz um `UPDATE` via SQL para atualizar os dados da coluna sensível, o que seria trabalhoso e custoso para realizar em todas as tabelas.

* **Utilização do Cloud Run com Scheduler -** Realizado o mascaramento, porém a function roda um script que faz um `UPDATE` via SQL agendado via **Scheduler** para atualizar os dados da coluna sensível, o que seria trabalhoso e custoso para realizar em todas as tabelas.

* **Utilização do DLP para mascaramento no BigQuery via python -** Está andamento a criação de um script `python` para mascarar os dados de tabelas do BigQuery utilizando o DLP. Atualmente existe apenas a necessidade de autenticar o permissionamento e autenticação de usuário para ser possível realizar os primeiros testes.


## Permissionamento por Roles

## Permissionamento por Tags

## Organização no GCP

A organização no Google Cloud Platform (GCP) é essencial para garantir uma governança de dados eficiente e centralizada dos projetos, além de oferecer uma visibilidade completa dos recursos. Com uma organização bem estruturada, é possível gerenciar permissões de forma granular e segura, assegurando que os usuários tenham acesso apenas aos recursos adequados, o que facilita o compliance e auditorias. À medida que a empresa cresce, essa estrutura permite escalar sem perder o controle. As principais vantagens incluem:

* **Hierarquia clara, com pastas e projetos** 

* **Políticas de segurança centralizadas**

* **Capacidade de compartilhar recursos entre projetos**

O que melhora a visibilidade e facilita o controle dos recursos, além de reduzir o risco de erros de configuração. Por outro lado, não utilizar uma organização no GCP dificulta:

* **O gerenciamento de vários projetos**

* **Prejudica a consistência de políticas**

* **Complica auditorias e compliance**

Dessa forma atividades repetitivas seriam feitas diversas vezes, como gerenciar custos, configurar alertas de erros, configurar regras de negócio, além de aumentar o risco de custos ineficientes.

Ou seja, com a utilização correta da organização os profissionais fariam o serviço apenas uma vez, de forma mais organizada e estruturada, permitindo uma boa segurança dos dados, além da centralização de politicas de segurança, da visualização dos dados e dos custos.

## Possibilidades com uma organização

### > Google Admin Console

Google Admin Console traz uma interface unificada permitindo um controle centralizado sobre usuários e serviços. A ferramenta é intuitiva, de fácil aprendizado e administração.

Além disso, oferece integração com outros produtos do Google Workspace, facilitando a colaboração. As funcionalidades de monitoramento e relatórios ajudam na tomada de decisões baseadas em dados, e a segurança é aprimorada com a implementação eficaz de políticas. Assim, a Google Admin Console torna o gerenciamento do GCP mais eficiente e seguro.

### > Grupos

Gerenciar permissões por grupos, em vez de um sistema unificado, oferece várias vantagens. Facilita o gerenciamento, permitindo atribuir permissões a múltiplos usuários de uma vez, e proporciona escalabilidade ao adicionar ou remover usuários facilmente.

### > PAM

O Gerenciador de Acesso Privilegiado (PAM) é uma solução de segurança que controla e monitora o acesso a recursos sensíveis dentro de uma organização. Ele permite elevações de acesso temporárias, garantindo que usuários recebam as permissões necessárias no momento certo, mas com restrições de tempo, evitando o retrabalho de posteriormente retirar as permissões.

### > Migração de projetos

A migração de projetos no Google Cloud Platform (GCP) é essencial por diversas razões. Primeiramente, ela promove uma melhor reorganização, garantindo a possibilidade de mover projetos dentro de pastas, dessa forma os projetos podem ser agrupados conforme a necessidade.