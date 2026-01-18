# 📊 Sistema de Controle de Estudos (SQL)

Este projeto foi desenvolvido para automatizar o registro de horas de estudo e permitir uma análise clara de produtividade.

## 🛠️ Tecnologias e Conceitos Aplicados
* **Banco de Dados**: PostgreSQL (pgAdmin 4).
* **Modelagem Relacional**: Estrutura com Chaves Primárias (PK) e Chaves Estrangeiras (FK).
* **Consultas Analíticas**: Uso de `JOIN`, `GROUP BY` e funções de agregação como `SUM()` e `COUNT()`.

## 📁 Estrutura do Projeto
- `disciplina`: Tabela mestre contendo as matérias.
- `registros`: Tabela de fatos com as sessões de estudo, datas e durações.

## 🚀 Como Executar
Basta rodar o arquivo `sistema_controle_estudos.sql` em seu cliente SQL favorito. O script é autoexecutável: ele limpa versões anteriores, cria a estrutura do zero, popula com dados de teste e gera um relatório final de minutos estudados por matéria.
