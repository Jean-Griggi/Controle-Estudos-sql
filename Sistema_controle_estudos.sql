--Para rodar o codigo todo de uma vez sem erros
DROP TABLE IF EXISTS registros;
DROP TABLE IF EXISTS disciplina;

--Criação das tabelas
CREATE TABLE disciplina(
id_disciplina INT NOT NULL PRIMARY KEY,-- Definindo a chave primária e impedindo ela de ser nula
nome_materia VARCHAR(100) NOT NULL
);

CREATE TABLE registros(
id_registros INT NOT NULL PRIMARY KEY,
data_estudo DATE NOT NULL,-- Definindo a data de estudos, com o data type (DATE) para informar a data exata
tempo_estudo INT NOT NULL, -- Utilizei o data type (INT) ao invés do DATETIME para ser mais simples o calculo
id_disciplina INT NOT NULL, -- Chave estrangeira (FK)
FOREIGN KEY (id_disciplina) REFERENCES disciplina(id_disciplina)
);

-- Populando a tabela
INSERT INTO disciplina(id_disciplina, nome_materia)
VALUES 
(1, 'Banco de dados'),
(2, 'Programação Orientada Objeto'),
(3, 'Programação WEB'),
(4, 'UI/UX');

INSERT INTO registros (id_registros, data_estudo, tempo_estudo, id_disciplina)
VALUES
(1, '2026-01-12', 90, 1),
(2, '2026-01-14', 90, 4),
(3, '2026-01-15', 90, 1),
(4, '2026-01-16', 90, 3),
(5, '2026-01-19', 90, 2);

--Fazendo a seleção para exibir os resultados
SELECT nome_materia, --Exibindo o nome das matérias
SUM (tempo_estudo) AS total_estudado, --Somando todos os valores da coluna e dando um nome para esta nova coluna
COUNT(*) AS dias_estudados  -- Somando quantas vezes a matéria apareceu e dando um nome para a coluna
FROM disciplina -- Falando de onde as informações irão vir
JOIN registros ON disciplina.id_disciplina = registros.id_disciplina -- Juntando o nome da matéria ao tempo utilizando o ID para fazer esta ligação
GROUP BY nome_materia -- Cria um grupo para cada materia e faz a soma dentro dos grupos
ORDER BY total_estudado DESC; -- Oganiza os resultados do maior para o menor