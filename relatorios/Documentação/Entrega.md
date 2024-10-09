## Organização

A organização no Google Cloud Platform (GCP) é essencial para garantir uma governança de dados eficiente e centralizada dos projetos, além de oferecer uma visibilidade completa dos recursos. Com uma organização bem estruturada, é possível gerenciar permissões de forma granular e segura, assegurando que os usuários tenham acesso apenas aos recursos adequados, o que facilita o compliance e auditorias. À medida que a empresa cresce, essa estrutura permite escalar sem perder o controle.

As principais vantagens incluem uma hierarquia clara, com pastas e projetos, políticas de segurança centralizadas e a capacidade de compartilhar recursos entre projetos. Isso melhora a visibilidade e facilita o controle dos recursos, além de reduzir o risco de erros de configuração.

Por outro lado, não utilizar uma organização no GCP dificulta o gerenciamento de vários projetos, prejudica a consistência de políticas e complica auditorias e compliance. Dessa forma atividades repetitivas seriam feitas diversas vezes, como gerenciar custos, configurar alertas de erros, configurar regras de negócio; Além de aumentar o risco de custos ineficientes, os profissionais fariam o serviço uma só vez a nivel de organização.

## Google Admin Console

Google Admin Console traz uma interface unificada permitindo um controle centralizado sobre usuários e serviços. A ferramenta é intuitiva, de fácil aprendizado e melhorando a administração.

Além disso, oferece integração com outros produtos do Google Workspace, facilitando a colaboração. As funcionalidades de monitoramento e relatórios ajudam na tomada de decisões baseadas em dados, e a segurança é aprimorada com a implementação eficaz de políticas. Assim, a Google Admin Console torna o gerenciamento do GCP mais eficiente e seguro.

## Grupos

Gerenciar permissões por grupos, em vez de um sistema unificado, oferece várias vantagens. Facilita o gerenciamento, permitindo atribuir permissões a múltiplos usuários de uma vez, e proporciona escalabilidade ao adicionar ou remover usuários facilmente.

## PAM

O Gerenciador de Acesso Privilegiado (PAM) é uma solução de segurança que controla e monitora o acesso a recursos sensíveis dentro de uma organização. Ele permite elevações de acesso temporárias, garantindo que usuários recebam as permissões necessárias no momento certo, mas com restrições de tempo, evitando o retrabalho de posteriormente retirar as permissões.

## Migração de projetos

A migração de projetos no Google Cloud Platform (GCP) é essencial por diversas razões. Primeiramente, ela promove uma melhor reorganização, garantindo a possibilidade de mover projetos dentro de pastas, dessa forma os projetos podem ser agrupados conforme a necessidade.

Criação da Organização by Gabriel Perosa

- Criação de domínio (Infinity Free)
	acessar o site citado para criar um domínio próprio.

- Criar conta gcp c/ domínio vinculado pelo Cloud Identity (versão free)
	criar a conta gcp c/ o domínio no cloud identity 

- Verificação do domínio
	adicionar registro dns fornecido pela google (gcp)

- Criar organização
	acessar o GCP e logar na conta criada utilizando o domínio, a organização deve ter sido gerada.

- Adição de usuários e controle de acessos
	criação de usuários utilizando o domínio com as permissões necessárias.