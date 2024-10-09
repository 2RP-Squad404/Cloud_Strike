## Organização

A organização no Google Cloud Platform (GCP) é essencial para garantir uma governança eficiente e centralizada dos projetos, além de oferecer uma visibilidade completa dos recursos. Com uma organização bem estruturada, é possível gerenciar permissões de forma granular e segura, assegurando que os usuários tenham acesso apenas aos recursos adequados, o que facilita o compliance e auditorias. À medida que a empresa cresce, essa estrutura permite escalar sem perder o controle.

As principais vantagens incluem uma hierarquia clara, com pastas e projetos, políticas de segurança centralizadas e a capacidade de compartilhar recursos entre projetos. Isso melhora a visibilidade e facilita o controle dos recursos, além de reduzir o risco de erros de configuração.

Por outro lado, não utilizar uma organização no GCP dificulta o gerenciamento de vários projetos, prejudica a consistência de políticas e complica auditorias e compliance, além de aumentar o risco de custos ineficientes.

Para implementar uma organização no GCP, é necessário configurar uma conta de organização associada a um domínio no Google Workspace. Em seguida, deve-se estruturar a hierarquia com pastas para organizar os projetos e aplicar políticas de segurança e IAM centralizadas. O uso de ferramentas de automação, como Terraform ou Deployment Manager, ajuda a manter essa estrutura de forma eficiente.


### Criação de Organização no GCP

1. Criação de domínio (Infinity Free ou outra plataforma de hospedagem)
Acesse o site de hospedagem gratuito (como InfinityFree) ou outro provedor de domínios.
Crie um domínio personalizado para sua empresa ou projeto.
Selecione o domínio com um nome relacionado ao seu negócio e registre-o.
2. Criação de conta GCP vinculada ao domínio pelo Cloud Identity (versão free)
Acesse o Google Cloud e inicie a criação de uma nova conta.
Durante o processo, vincule o domínio criado ao serviço Cloud Identity (versão gratuita). Esse serviço permitirá gerenciar identidades de usuários e suas permissões dentro da organização.
Preencha as informações da empresa e verifique os detalhes de pagamento (mesmo na versão gratuita, é necessário um cartão).
3. Verificação do domínio
No painel do Google Cloud Identity, será solicitado verificar a propriedade do domínio.
Siga as instruções para adicionar um registro DNS no seu provedor de domínio (InfinityFree, por exemplo).
Copie o código de verificação fornecido pelo Google e adicione-o como um registro TXT no painel de gerenciamento DNS do seu provedor.
Após adicionar o registro DNS, aguarde a propagação (pode levar até 48 horas, mas geralmente é mais rápido).
No console do GCP, clique em "Verificar" para concluir o processo de verificação.
4. Criação da Organização
Após verificar o domínio, volte ao console do Google Cloud e faça login com a conta vinculada ao domínio.
A organização será criada automaticamente com base no domínio verificado.
No console do GCP, acesse o painel do Resource Manager e verifique se a organização está listada corretamente.
Se necessário, adicione uma descrição ou tags para identificar a organização de forma clara.
5. Adição de usuários e controle de acessos
No painel do Google Admin ou no GCP, crie contas de usuário utilizando o domínio personalizado (ex: usuario@seu-dominio.com).
Para adicionar usuários, vá até o Admin Console ou Cloud Identity e crie novos usuários com as permissões adequadas, como acesso administrativo, financeiro ou de desenvolvedor.
Defina as permissões de acesso conforme a hierarquia da sua empresa, aplicando IAM Roles apropriados dentro do Google Cloud IAM:
Viewer para acesso de leitura.
Editor para permissões de edição.
Owner para controle total.
Lembre-se de aplicar políticas de least privilege (menor privilégio), concedendo apenas as permissões necessárias para cada função.
Use Grupos para facilitar o gerenciamento de permissões para equipes, como "Engenheiros de Dados" ou "Analistas", e aplique as permissões por grupos de usuários.


## Google Admin Console

Gerenciar o Google Cloud Platform (GCP) pela Google Admin Console traz várias vantagens. A interface unificada permite um controle centralizado sobre usuários e serviços, enquanto o gerenciamento de identidades facilita a atribuição de permissões. A ferramenta é intuitiva, reduzindo a curva de aprendizado e melhorando a administração.

Além disso, oferece integração com outros produtos do Google Workspace, facilitando a colaboração. As funcionalidades de monitoramento e relatórios ajudam na tomada de decisões baseadas em dados, e a segurança é aprimorada com a implementação eficaz de políticas. Assim, a Google Admin Console torna o gerenciamento do GCP mais eficiente e seguro.

## Grupos

Gerenciar permissões por grupos, em vez de um sistema unificado, oferece várias vantagens. Facilita o gerenciamento, permitindo atribuir permissões a múltiplos usuários de uma vez, e proporciona escalabilidade ao adicionar ou remover usuários facilmente.

Além disso, garante consistência nas permissões, flexibilidade na criação de grupos e simplifica mudanças de função. Também aprimora a segurança ao permitir políticas específicas para cada grupo. Essas características tornam o gerenciamento por grupos uma prática eficiente e segura.

## PAM

O Gerenciador de Acesso Privilegiado (PAM) é uma solução de segurança que controla e monitora o acesso a recursos sensíveis dentro de uma organização. Ele permite elevações de acesso temporárias, garantindo que usuários recebam as permissões necessárias no momento certo, mas com restrições de tempo. Além disso, o PAM oferece uma trilha de auditoria que registra eventos relacionados a essas elevações, permitindo uma análise detalhada e melhorando a conformidade e a segurança.

## Migração de projetos

A migração de projetos no Google Cloud Platform (GCP) é essencial por diversas razões. Primeiramente, ela promove uma melhor reorganização, permitindo uma estrutura mais eficiente de recursos e gestão de acesso. Além disso, facilita a implementação de políticas de segurança em níveis organizacionais ou por pastas. A migração também simplifica a administração, agrupando projetos relacionados para uma gestão mais eficaz. Por fim, possibilita uma análise e controle de custos de forma mais granular, otimizando a alocação de recursos financeiros.

#### Pontos cruciais

A migração de projetos inteiros só é possível se realizada dentro de uma mesma organização ou de uma organização para outra. Caso contrário, só é viável realizar uma espécie de clone, como, por exemplo, clonar um bucket e copiá-lo para outro. No entanto, esse processo é muito mais trabalhoso. Portanto, trabalhar dentro de uma organização é a opção mais eficiente.

