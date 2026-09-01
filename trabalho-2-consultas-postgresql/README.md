# Trabalho 2 - Banco de Dados I

Projeto acadêmico desenvolvido na disciplina de **Banco de Dados I** do curso de **Sistemas de Informação da Universidade Federal de Uberlândia (UFU)**.

O trabalho consiste na elaboração de consultas SQL sobre uma base de dados de uma locadora, utilizando **PostgreSQL**. A atividade apresenta diferentes situações de consulta e manipulação lógica das informações armazenadas no banco de dados.

## Objetivo

Aplicar na prática conceitos de SQL e banco de dados relacional por meio da construção de consultas capazes de recuperar e relacionar informações sobre filmes, clientes, atores, diretores e empréstimos.

Foram desenvolvidas 14 consultas, com diferentes níveis de complexidade.

## Conceitos aplicados

Durante o desenvolvimento foram utilizados conceitos e recursos como:

- `SELECT`
- `WHERE`
- `ORDER BY`
- `LIKE`
- `UNION`
- `JOIN`
- Múltiplos `JOINs`
- Funções de agregação (`COUNT`, `AVG` e `SUM`)
- `GROUP BY`
- `HAVING`
- Manipulação de datas com `EXTRACT`
- Relacionamentos entre diferentes tabelas
- Self Join

## Exemplos de consultas desenvolvidas

Entre os problemas solucionados estão:

- Listagem e filtragem de filmes por duração, categoria e data;
- Consulta de clientes a partir de informações de telefone;
- União de dados de atores e diretores;
- Relacionamento entre empréstimos e clientes;
- Identificação dos diretores dos filmes alugados por cada cliente;
- Relacionamento entre clientes e atores dos filmes alugados;
- Cálculo do tempo total de filmes alugados por cliente;
- Contagem de empréstimos associados aos filmes de cada ator;
- Relacionamento entre clientes e seus respectivos indicadores.

## Tecnologias

- SQL
- PostgreSQL
- Banco de Dados Relacional

## Estrutura

```text
trabalho-2-consultas-postgresql/
├── consultas.sql
├── locadora_criacao_postgre.sql
├── locadora_insercao.sql
├── enunciado.pdf
└── README.md