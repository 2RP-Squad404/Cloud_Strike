# Relatório de Estudos

**Nome do Estagiário:** Gabriel Alvim  
**Data:** 14/08/2024
#

## Mensageria
### Tecnologias Utilizadas: 
- RabbitMQ
- Apache Kafka
- Google Cloud Pub/Sub
- Apache ActiveMQ


A mensageria é usada para facilitar a comunicação entre diferentes componentes de um sistema de forma desacoplada e assíncrona. Ela pode ser aplicada em cenários onde sistemas distribuídos precisam se comunicar sem depender da disponibilidade imediata do receptor, permitindo a escalabilidade e a resiliência.

### Imagem exemplo, Mensageria:
![Imagem](/Reports/imagens/mensageria_arq.png)

**Quando Usar**: Em sistemas onde a comunicação assíncrona é importante, como em arquiteturas de microserviços, processamento de eventos em tempo real, e em integrações entre sistemas heterogêneos.

**Integração**: O Google Cloud Pub/Sub pode ser integrado facilmente com outros serviços do Google Cloud, como BigQuery e Dataflow, para processamento e análise de dados em tempo real.
#

## CI/CD (continuous integration & continuous deployment)
### Tecnologias Utilizadas:
 - Docker
 - Kubernets
 - Jenkins
 - GitLab CI

CI/CD envolve a automação dos processos de build, teste e implantação de software, garantindo que cada alteração no código seja integrada e entregue de forma contínua. Ferramentas como Docker e Kubernetes ajudam a criar ambientes consistentes e escaláveis para CI/CD.

### Imagem exemplo, CI/CD (pipeline):
![Imagem](/Reports/imagens/ci_cd.png)

**Quando Usar**: CI/CD deve ser utilizado em projetos que exigem frequentes atualizações de software, garantindo que novas funcionalidades sejam rapidamente testadas e lançadas com segurança. É ideal para equipes de desenvolvimento ágil *(SCRUM)*  que querem minimizar o tempo de entrega.

**Integração**: Docker e Kubernetes integram-se bem para orquestrar contêineres durante os *pipelines* de CI/CD, permitindo que cada versão do software seja testada e implantada em ambientes que replicam a produção.
#

## VM's (Virtual Machines)
### Tecnologias Utilizadas: 
- VMware ESXi
- Compute Engine (Google Cloud)
- Microsoft Hyper-V
- Oracle VirtualBox

As VMs são usadas para criar múltiplos ambientes isolados em um único hardware físico, permitindo que diferentes sistemas operacionais e aplicações rodem simultaneamente. Elas são configuradas e gerenciadas por meio de um *hypervisor* (software para executar VMs em uma máquina física).

### Imagem exemplo, VMs (arquitetura):
![Imagem](/Reports/imagens/vms.webp)


**Quando Usar**: A utilização de VMs se da quando é necessário isolamento entre aplicações, execução de sistemas operacionais antigos, ambientes de teste e desenvolvimento, ou para consolidar servidores e *maximizar o uso de hardware*.

**Integração**: Máquinas virtuais podem ser integradas a soluções de backup e recuperação de desastres, ou combinadas com **contêineres** para oferecer um ambiente híbrido de alta flexibilidade.
#

## BigQuery (Google Cloud)
O Google BigQuery é utilizado para armazenar e processar grandes volumes de dados, permitindo consultas SQL rápidas e escaláveis. Ele é ideal para análise de dados em tempo real e criação de relatórios.

### Imagem exemplo, BigQuery (código):
![Imagem](/Reports/imagens/big_query.png)

**Quando Usar**: Utilizar o Google BigQuery em projetos que requerem a análise de grandes quantidades de dados, como em análise de logs, inteligência de negócios, ou para suportar aplicações que demandam consultas rápidas e eficientes em *datasets massivos*.

**Integração**: Google **BigQuery** pode ser integrado com Google Cloud **Pub/Sub** para *análise em tempo real, capturando e processando dados à medida que são gerados*. Também pode ser combinado com ferramentas de visualização de dados para gerar insights em tempo real.
#

## VMs & Docker
Docker é uma plataforma de código aberto que os desenvolvedores usam para empacotar software em unidades padronizadas chamadas de *contêineres*. 

O contêiner ("empacotamento de aplicação") tem o código da aplicação e seu ambiente, incluindo bibliotecas, ferramentas do sistema e tempo de execução. 

Usando o Docker, você pode implantar e escalar aplicações em qualquer máquina e garantir que seu código seja executado de maneira consistente. 

Por outro lado, uma máquina virtual é uma cópia digital de uma máquina física. Você pode ter várias máquinas virtuais com seus próprios sistemas operacionais individuais em execução no mesmo sistema operacional host. 

Os desenvolvedores configuram a máquina virtual para criar o ambiente da aplicação. Também é possível executar contêineres do Docker em máquinas virtuais.

## Recursos Utilizados
#### Mensageria
- [Web](https://medium.com/@devbrito91/mensageria-1330c6032049)
- [Aula](https://www.youtube.com/watch?v=U5h6B7eSiAE)

#### Pub/Sub
- [Aula](https://www.youtube.com/watch?v=0UQwSeCX82Y)
- [Documentação](https://cloud.google.com/pubsub/docs/overview?hl=pt-br)

#### CI/CD
- [Aula](https://www.youtube.com/watch?v=AZtTd3pFVTY)
- [Unity](https://unity.com/pt/topics/what-is-ci-cd)

#### VMs
- [Azure](https://azure.microsoft.com/pt-br/resources/cloud-computing-dictionary/what-is-a-virtual-machine)
- [Aula](https://www.youtube.com/watch?v=FZR0rG3HKIk)

#### Kubernets
- [Aula](https://www.youtube.com/watch?v=kTp5xUtcalw&t=20029s)
- [Aula 02](https://www.youtube.com/watch?v=wxLvvMxzc1Q)
- [Google Cloud](https://cloud.google.com/learn/what-is-kubernetes?hl=pt-BR)

#### Containers
- [Aula](https://www.youtube.com/watch?v=wxLvvMxzc1Q)
- [Aula 02](https://www.youtube.com/watch?v=-pUZBovqRcU)
- [Google Cloud](https://cloud.google.com/build/docs?hl=pt-br)

#### BigQuery
- [Google Cloud](https://cloud.google.com/bigquery?utm_source=google&utm_medium=cpc&utm_campaign=latam-BR-all-pt-dr-BKWS-all-all-trial-p-dr-1707800-LUAC0020573&utm_content=text-ad-none-any-DEV_c-CRE_688140022988-ADGP_Hybrid+%7C+BKWS+-+PHR+%7C+Txt_Usecases-Big+Query-KWID_43700079279114490-kwd-2226157135582&utm_term=KW_google+cloud+big+query-ST_Google+Cloud+big+query&gad_source=1&gclid=Cj0KCQjwq_G1BhCSARIsACc7NxrmvF3B3GwM-HjQ37OLR5yQ6m4fWvZh7PCeBUR8rr58iqtI97KbWz4aAjbHEALw_wcB&gclsrc=aw.ds&hl=pt_br)
- [Badge: insights from BigQuery Data](https://www.cloudskillsboost.google/public_profiles/0de06c9e-a45f-4b8e-aab9-89268348b2ea/badges/9363705)
- [Badge: ML Models with BigQuery](https://www.cloudskillsboost.google/public_profiles/0de06c9e-a45f-4b8e-aab9-89268348b2ea/badges/9044716)
#

## Conclusão
Essas tecnologias se complementam e podem ser integradas para criar sistemas robustos, escaláveis e eficientes. A mensageria, virtualização, CI/CD, e BigQuery são fundamentais para a construção de arquiteturas modernas, permitindo a criação de soluções que atendem a diferentes demandas de processamento, comunicação e análise de dados.
#

**Desafios Encontrados:**  
Aprofundar em diferentes vertentes do mesmo serviço/tecnologia.

**Feedback e Ajustes:**  
Com a conlusão dessa trilha fortifico os conceitos abordados.

**Próximos Passos:**  
Continuar me aprofundando para conseguir extrair o máximo de aprendizado possível.