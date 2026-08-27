# Projeto de Análise de Vendas

Projeto individual de análise de dados desenvolvido com o objetivo de transformar dados de vendas em informações úteis para a análise do desempenho comercial.

O projeto integra **Excel, Power Query, MySQL, SQL e Power BI**, reproduzindo um fluxo completo de análise: desde a preparação dos dados até à modelagem, exploração, criação de indicadores e visualização dos resultados.

---

## Objetivo do Projeto

O principal objetivo foi analisar o desempenho das vendas entre **2020 e 2022**, identificando padrões, produtos e lojas com melhor desempenho e construindo indicadores capazes de apoiar a interpretação dos resultados comerciais.

O projeto foi desenvolvido como parte da construção de um **portfólio prático em análise de dados**, procurando integrar diferentes ferramentas em um único fluxo de trabalho.

---

## Perguntas de Negócio

A análise foi orientada por perguntas de negócio, entre elas:

* Como evoluiu a receita ao longo dos anos?
* Qual foi o desempenho das vendas entre 2020 e 2022?
* Quais foram os produtos mais vendidos?
* Quais produtos geraram maior receita?
* Quais produtos apresentaram maior lucro bruto?
* Quais lojas apresentaram melhor desempenho?
* Como evoluiu a receita das lojas ao longo do período?
* Qual foi a margem bruta obtida nas vendas?

Essas perguntas orientaram a construção das consultas SQL, medidas DAX e visualizações no Power BI.

---

## Dados

Os dados utilizados são **fictícios** e foram disponibilizados para fins de estudo e desenvolvimento do projeto.

O conjunto de dados contém informações relacionadas a:

* Vendas
* Produtos
* Clientes
* Lojas
* Localidades
* Devoluções

### Principais campos

**Vendas**

* Data da Venda
* Ordem de Compra
* SKU
* ID Cliente
* Quantidade Vendida
* ID Loja

**Produtos**

* SKU
* Produto
* Marca
* Tipo do Produto
* Preço Unitário
* Custo Unitário

**Clientes**

* ID Cliente
* Nome
* Email
* Género
* Data de Nascimento
* Estado Civil
* Número de Filhos
* Nível Escolar

**Lojas**

* ID Loja
* Nome da Loja
* Quantidade de Colaboradores
* Tipo
* ID Localidade
* Gerente da Loja

**Localidades**

* ID Localidade
* País
* Continente

**Devoluções**

* Data da Devolução
* ID Loja
* SKU
* Quantidade Devolvida
* Motivo da Devolução

---

## Fluxo do Projeto

O projeto foi desenvolvido seguindo um fluxo integrado de análise de dados:

```text
Dados de origem
      ↓
Excel / Power Query
      ↓
Tratamento e consolidação
      ↓
MySQL
      ↓
Consultas SQL
      ↓
Modelagem dos dados
      ↓
Power BI / DAX
      ↓
Dashboard
      ↓
Análise dos resultados
```

Cada ferramenta foi utilizada de acordo com a sua finalidade dentro do processo.

---

## Tratamento e Preparação dos Dados

A preparação dos dados foi realizada principalmente através do **Excel e Power Query**.

Entre as etapas realizadas estão:

* Consolidação dos arquivos de vendas de 2020, 2021 e 2022;
* Verificação da estrutura dos dados;
* Identificação de possíveis inconsistências;
* Ajuste dos tipos de dados;
* Integração das informações de vendas com os dados dos produtos;
* Criação de campos derivados;
* Preparação dos dados para armazenamento e análise.

A utilização do Power Query permitiu tornar o processo de transformação mais organizado e reproduzível.

---

## Banco de Dados e SQL

Os dados foram posteriormente organizados em uma base de dados **MySQL**, permitindo trabalhar com os dados através de uma estrutura relacional.

Foram utilizadas consultas SQL para realizar operações como:

* `SELECT`
* `WHERE`
* `GROUP BY`
* `HAVING`
* `ORDER BY`
* `LIMIT`
* `JOIN`
* Agregações
* Subconsultas e outras técnicas de análise

As consultas foram desenvolvidas para responder às perguntas de negócio definidas no projeto.

---

## Modelagem dos Dados

Os dados foram organizados de forma a facilitar a análise no Power BI.

A estrutura considera uma tabela de vendas como principal fonte de fatos e tabelas relacionadas com informações descritivas, como:

```text
                 Produtos
                    │
                    │
Clientes ─────── Vendas ─────── Lojas
                    │
                    │
               Localidades
```

Essa organização permite analisar as vendas sob diferentes perspectivas, como produto, loja, cliente, localização e período.

---

## Medidas e Indicadores

Foram criadas medidas no **Power BI utilizando DAX** para calcular os principais indicadores do projeto.

### Principais KPIs

* Quantidade Vendida
* Receita
* Custo
* Lucro Bruto
* Margem Bruta

### Exemplo conceitual

**Receita**

> Preço Unitário × Quantidade Vendida

**Lucro Bruto**

> Receita − Custo

**Margem Bruta**

> Lucro Bruto ÷ Receita

Esses indicadores foram utilizados para analisar diferentes dimensões do desempenho comercial.

---

## Dashboard

O resultado final foi apresentado através de um **dashboard interativo desenvolvido no Power BI**.

O dashboard apresenta indicadores e visualizações relacionadas com:

* Evolução da receita;
* Produtos mais vendidos;
* Produtos com maior receita;
* Produtos com maior lucro;
* Desempenho das lojas;
* Evolução das vendas;
* Distribuição da receita por categorias;
* Principais KPIs comerciais.

### Dashboard
**[Visualizar Dashboard](resultados/dashboard_analise_vendas.png)**

## Principais Resultados

A análise permitiu identificar diferenças relevantes no desempenho entre produtos, lojas e períodos.

Entre os principais resultados observados:

* **2022 apresentou o melhor desempenho geral de vendas** no período analisado;
* Alguns produtos apresentaram elevado volume de vendas sem necessariamente serem os produtos de maior receita;
* Produtos com maior receita não são obrigatoriamente os mesmos que apresentam maior lucro bruto;
* A análise conjunta de quantidade vendida, receita, lucro bruto e margem proporciona uma visão mais completa do desempenho comercial;
* O desempenho das lojas apresentou diferenças que podem ser exploradas através dos filtros e visualizações do dashboard.

Esses resultados demonstram a importância de analisar diferentes indicadores em conjunto, evitando conclusões baseadas em apenas uma métrica.

---

## Tecnologias Utilizadas

| Tecnologia      | Utilização                              |
| --------------- | --------------------------------------- |
| **Excel**       | Exploração e análise inicial dos dados  |
| **Power Query** | Tratamento e consolidação dos dados     |
| **MySQL**       | Armazenamento e gerenciamento dos dados |
| **SQL**         | Consultas e análises                    |
| **Power BI**    | Modelagem, visualização e dashboard     |
| **DAX**         | Criação dos indicadores e medidas       |

---

## Estrutura do Repositório

```text
projeto-analise-vendas/
│
├── README.md
│
├── dados/
│   ├── dados_originais/
│   └── dados_tratados/
│
├── sql/
│   └── analises_vendas.sql
│
├── power_bi/
│   └── analise_vendas_2020_2022.pbix
│
├── relatorio/
│   └── relatorio_analise_vendas.pdf
│
└── imagens/
    └── dashboard.png
```

---

## Documentação

A documentação completa do projeto encontra-se disponível no relatório, contendo o desenvolvimento das etapas, metodologia, análises e resultados.

**[Consultar relatório](imagens/relatorio_analise_vendas.pdf)**

---

## Aprendizados

O desenvolvimento deste projeto permitiu consolidar conhecimentos práticos em diferentes etapas do processo de análise de dados, incluindo:

* Tratamento e preparação de dados;
* Power Query;
* SQL e consultas relacionais;
* Modelagem de dados;
* Criação de medidas com DAX;
* Construção de dashboards;
* Definição de KPIs;
* Transformação de perguntas de negócio em análises;
* Integração de diferentes ferramentas num único fluxo de trabalho.

Mais do que trabalhar individualmente com cada ferramenta, o projeto permitiu compreender como elas podem ser utilizadas de forma complementar dentro de um processo de análise de dados.

---

## Possíveis Evoluções

O projeto pode ser expandido futuramente com:

* Automação da ingestão de novos dados;
* Cargas incrementais no banco de dados;
* Atualização automatizada do Power BI;
* Análises utilizando Python;
* Análise de devoluções;
* Análise temporal mais aprofundada;
* Previsão de vendas;
* Análise de comportamento dos clientes;
* Novos indicadores de desempenho.

---

## Observação

Os dados utilizados neste projeto são **fictícios** e destinam-se exclusivamente a fins de estudo, prática e demonstração de competências técnicas.

---

## Autor

**Emílio Tucayano Ferraz Gaspar**

Projeto desenvolvido individualmente como parte de um portfólio prático na área de **Análise de Dados e Business Intelligence**.
