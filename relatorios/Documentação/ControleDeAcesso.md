#### No Google Cloud Platform (GCP), existem várias formas de gerenciar e atribuir permissões para controlar o acesso a recursos. Cada método possui suas características específicas e níveis de granularidade. Abaixo estão as principais formas de permissionamento no GCP, com uma breve explicação de cada uma e como elas se diferenciam das outras.

## IAM Roles (Papéis IAM)
- Descrição: O IAM (Identity and Access Management) permite conceder permissões através de papéis predefinidos. Os papéis IAM podem ser atribuídos a usuários, grupos ou contas de serviço.
Tipos de Papéis:
- Papéis Básicos: Viewer (visualização), Editor (edição), Owner (proprietário).
- Papéis Predefinidos: São mais específicos e focados em um serviço ou recurso específico, como Storage Admin, Compute Engine Admin, etc.
Diferenciação: Os papéis IAM são a forma principal e mais usada de permissionamento no GCP. O uso de papéis predefinidos oferece um controle granular, mas limitado ao que o Google oferece.

## Papéis Personalizados (Custom Roles)
Descrição: Permite a criação de papéis personalizados com permissões específicas para atender a requisitos exclusivos da organização.
- Diferenciação: Diferente dos papéis predefinidos, os papéis personalizados permitem maior flexibilidade, permitindo escolher exatamente as permissões necessárias para o papel.

## Permissões Específicas (IAM Permissions)
Descrição: As permissões são os blocos de construção que compõem os papéis. Cada papel é um conjunto de permissões. No GCP, você pode visualizar ou editar permissões de recursos individuais quando cria ou personaliza papéis.
- Diferenciação: Ao contrário dos papéis, que são coleções de permissões, este método envolve gerenciar permissões em um nível muito mais granular e preciso, mas requer a criação de papéis personalizados para implementar isso.

## IAM Conditions (Condições IAM)
Descrição: Permitem adicionar condições às permissões IAM, restringindo-as com base em atributos como horário (horas de trabalho), endereço IP ou estado de conformidade de um recurso.
- Diferenciação: Oferece um controle de acesso dinâmico, adicionando uma camada extra de contexto e permitindo que permissões sejam aplicadas somente em certas condições, algo que papéis tradicionais não permitem.

## Contas de Serviço (Service Accounts)
Descrição: São contas especializadas usadas por aplicativos e serviços para acessar recursos. Podem ser associadas a instâncias de VMs, contêineres ou outros serviços para realizar ações automatizadas com permissões atribuídas.
- Diferenciação: Ao invés de serem usadas por pessoas, as contas de serviço são usadas para permitir que sistemas interajam com o GCP com permissões específicas, e são essenciais para automação.

## Grupos do Google (Google Groups)
Descrição: Os grupos do Google podem ser usados para gerenciar permissões em conjunto, aplicando um conjunto de papéis a vários usuários simultaneamente, organizados em um grupo.
- Diferenciação: Usar grupos simplifica o gerenciamento de permissões para um grande número de usuários, reduzindo a necessidade de atribuir permissões individualmente.

## Organizações e Pastas (Organization & Folders)
Descrição: Permissões podem ser aplicadas em níveis hierárquicos dentro de uma organização. Isso permite que permissões sejam herdadas por projetos e recursos dentro dessa estrutura.
- Diferenciação: A principal diferença aqui é o escopo e a hierarquia. A atribuição de permissões no nível da organização ou pasta afeta todos os projetos e recursos abaixo dela.

## Permissões Temporárias com IAM (IAM Temporary Permissions)
Descrição: Usadas para conceder permissões temporárias usando PAM (Privileged Access Management) ou "delegação temporária". Os acessos são concedidos por um tempo limitado para tarefas específicas.
- Diferenciação: Ao contrário dos papéis permanentes, as permissões temporárias são úteis para conceder acesso restrito no tempo, reduzindo o risco de acessos desnecessários ou prolongados.

## VPC Service Controls
Descrição: Permitem a criação de perímetros de segurança em torno de serviços do GCP, limitando o acesso a dados e APIs de fora de uma rede virtual privada (VPC) ou de um ambiente específico.
- Diferenciação: Focado em controlar o acesso aos serviços e dados do GCP com base na rede, não nas identidades. Isso é útil para proteger dados sensíveis contra acesso fora do perímetro definido.

## Identity-Aware Proxy (IAP)
Descrição: Protege o acesso aos aplicativos em execução no GCP, verificando identidades de usuários e aplicando políticas de IAM antes de permitir o acesso.
- Diferenciação: Atua no controle de acesso a aplicativos e recursos com base na identidade do usuário e não diretamente nas permissões do IAM associadas a papéis.

## Permissionamento por Tags (Tags de Recurso)
Descrição: As tags de recurso permitem aplicar políticas de IAM com base em tags associadas aos recursos. Elas são úteis para gerenciar acesso a grupos de recursos com atributos específicos.
- Diferenciação: Oferece uma forma dinâmica de aplicar permissões, permitindo que políticas de acesso sejam aplicadas a recursos com certas tags, ao invés de gerenciar permissões diretamente nos recursos ou projetos. Isso facilita a organização e o controle de acesso em ambientes grandes e complexos.





