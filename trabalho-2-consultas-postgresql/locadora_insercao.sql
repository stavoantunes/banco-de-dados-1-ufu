-- script para insercao noo banco de dados locadora
-- adaptado do material da prof Maria Camila Barioni - FACOM - UFU

SET search_path TO locadora;  -- define que locadora será o esquema default, isto é, o esquema onde serão aplicados os comandos sql

INSERT INTO cliente VALUES (1, 'João José da Silva', 'Rua das Dores, 1687, Ipiranga', '(91) 3524-4651', '(91) 9254-4651', NULL);
INSERT INTO cliente VALUES (2, 'Maria Joaquina Magalhães', 'Av. Litorânia, 5484, Praia do Morro', '(28) 3842-9741', '(28) 9954-9741', NULL);
INSERT INTO cliente VALUES (3, 'Abelita Valéria Fernandes', 'Av. Marechal Deodoro da Fonseca, 842, Santa Maria', '(21) 2164-8974', '(21) 9988-8974', 1);
INSERT INTO cliente VALUES (4, 'Belarmino Jhones', 'Rua Joaquim Aníbal, 21, Centro', '(31) 3249-1245', '(31) 8821-1245', 3);
INSERT INTO cliente VALUES (5, 'Bosco Calcido das Cruzes', 'Rua da Curva, 10, Pelorinho', '(71) 3984-5566', '(71) 9287-5566', NULL);
INSERT INTO cliente VALUES (6, 'Delfim Vieira Neto', 'Av. Dr. Roberto Luzitano, 5543, Ala Oeste', '(55) 3218-7138', '(55) 8671-7138', 6);
INSERT INTO cliente VALUES (7, 'Gabriela Bochelli Soviersovisk', 'Av. Atlântica, 1111, Orla', '(98) 3285-4712', '(98) 8137-4712', 5);
INSERT INTO cliente VALUES (8, 'Jessica Gomes', 'Rua das rosas, Bangu, 1206', '(21) 5555-1234', NULL, 4);
INSERT INTO cliente VALUES (9, 'Rachel Maia', 'Rua sorriso aberto, Vista Alegre, 33', NULL, '(21) 5555-4321', 7);

INSERT INTO classificacao VALUES (1,'Super-lançamento',15.00);
INSERT INTO classificacao VALUES (2,'Lançamento',10.00);
INSERT INTO classificacao VALUES (3,'Acervo',5.00);

INSERT INTO filme VALUES (1, 'The Godfather', 'O Poderoso Chefão', 175,'1972-03-24', 'Francis Ford Coppola', 'Crime/Drama', 3);
INSERT INTO filme VALUES (2, 'Over Flew Over The Cuckoos Nest', 'Um Estranho no Ninho', 133,'1975-11-21', 'Millos Forman', 'Drama', 3);
INSERT INTO filme VALUES (3, 'The Avengers', 'Os Vingadores', 143,'2012-04-26', 'Joss Whedon', 'Ação', 2);
INSERT INTO filme VALUES (4, 'A Clockwork Orange', 'Laranja Mecânica', 136,'1972-01-13', 'Stanley Kubrick', 'Crime/Drama/Ficção Científica', 3);
INSERT INTO filme VALUES (5, 'Inception', 'A Origem', 148,'2010-07-16', 'Christopher Nolan', 'Ação/Aventura/Mistério', 2);
INSERT INTO filme VALUES (6, 'Pulp Fiction', 'Pulp Fiction: Tempo de Violência', 154,'1994-10-21', 'Quentin Tarantino', 'Crime/Drama/Thriller', 3);
INSERT INTO filme VALUES (7, 'The Hangover Part III', 'Se Beber, Não Case! Parte: 3', 100,'2013-05-24', 'Tood Phillips', 'Comédia', 1);
INSERT INTO filme VALUES (8, 'The Silence of the Lambs', 'O Silêncio dos Inocentes', 118,'1991-05-31', 'Jonathan Demme', 'Crime/Drama/Thriller', 1);
INSERT INTO filme VALUES (9, 'Memento', 'Amnésia', 113,'2000-10-20', 'Christopher Nolan', 'Mistério/Thriller', 3);
INSERT INTO filme VALUES (10, 'Les Misérables', 'Os Miseráveis', 158,'2013-01-11', 'Tom Hooper', 'Drama/Musical/Romance', 1);
INSERT INTO filme VALUES (11, 'The Pianist', 'O Pianista', 150,'2003-01-24', 'Roman Polanski', 'Biografia/Drama/História', 3);
INSERT INTO filme VALUES (12, 'Citizen Kane', 'Cidadão Kane', 119,'1942-01-24', 'Orson Welles', 'Drama/Mistério', 3);
INSERT INTO filme VALUES (13, 'The Shining', 'O Iluminado', 146,'1980-12-25', 'Stanley Kubrick', 'Terror/Mistério', 3);
INSERT INTO filme VALUES (14, 'World War Z', 'Guerra Mundial Z', 116,'2013-06-21', 'Marc Forster', 'Ação/Drama/Terror', 1);
INSERT INTO filme VALUES (15, 'Django Unchained', 'Django Livre', 165,'2013-01-18', 'Quentin Tarantino', 'Aventura/Velho-Oeste', 1);

-- Super-lançamentos
INSERT INTO midia VALUES (7,1,'Blu-ray');
INSERT INTO midia VALUES (7,2,'DVD');
INSERT INTO midia VALUES (10,1,'Blu-ray');
INSERT INTO midia VALUES (14,1,'Blu-ray');
INSERT INTO midia VALUES (14,2,'DVD');
INSERT INTO midia VALUES (14,3,'VHS');
INSERT INTO midia VALUES (15,1,'Blu-ray');

-- Lançamentos
INSERT INTO midia VALUES (3,1,'Blu-ray');
INSERT INTO midia VALUES (3,2,'DVD');
INSERT INTO midia VALUES (3,3,'VHS');
INSERT INTO midia VALUES (5,1,'Blu-ray');
INSERT INTO midia VALUES (5,2,'DVD');

-- Acervo
INSERT INTO midia VALUES (1,1,'DVD');
INSERT INTO midia VALUES (1,2,'DVD');
INSERT INTO midia VALUES (1,3,'VHS');
INSERT INTO midia VALUES (2,1,'VHS');
INSERT INTO midia VALUES (2,2,'VHS');
INSERT INTO midia VALUES (4,1,'VHS');
INSERT INTO midia VALUES (6,1,'DVD');
INSERT INTO midia VALUES (8,1,'VHS');
INSERT INTO midia VALUES (9,1,'DVD');
INSERT INTO midia VALUES (11,1,'DVD');
INSERT INTO midia VALUES (12,1,'VHS');
INSERT INTO midia VALUES (13,1,'DVD');

INSERT INTO emprestimo VALUES (1,3,'VHS',1,'1978-08-15','2013-06-27', 63675.00);
INSERT INTO emprestimo VALUES (2,1,'VHS',2,'2013-01-12','2013-01-14', 5.00);
INSERT INTO emprestimo VALUES (3,1,'Blu-ray',3,'2012-04-29','2012-04-30', 10.00);
INSERT INTO emprestimo VALUES (4,1,'VHS',4,'2013-01-01','2013-01-03', 5.00);
INSERT INTO emprestimo VALUES (5,1,'Blu-ray',5,'2012-09-30','2012-10-01', 10.00);
INSERT INTO emprestimo VALUES (6,1,'DVD',6,'2013-05-04','2013-05-06', 5.00);
INSERT INTO emprestimo VALUES (7,1,'Blu-ray',7,'2013-05-27','2013-05-28', 15.00);
INSERT INTO emprestimo VALUES (8,1,'VHS',1,'2013-03-16','2013-03-17', 15.00);
INSERT INTO emprestimo VALUES (9,1,'DVD',2,'2013-03-24','2013-03-25', 5.00);
INSERT INTO emprestimo VALUES (10,1,'Blu-ray',3,'2013-06-22','2013-06-23', 15.00);
INSERT INTO emprestimo VALUES (11,1,'DVD',4,'2013-01-12','2013-01-14', 5.00);
INSERT INTO emprestimo VALUES (12,1,'VHS',5,'2013-02-12','2013-02-14', 5.00);
INSERT INTO emprestimo VALUES (13,1,'DVD',6,'2012-10-12','2012-10-15', 5.00);
INSERT INTO emprestimo VALUES (14,1,'Blu-ray',7,'2013-06-23','2013-06-27', 30.00);
INSERT INTO emprestimo VALUES (15,1,'Blu-ray',1,'2013-02-15','2013-02-19', 45.00);
INSERT INTO emprestimo VALUES (1,1,'DVD',2,'2013-05-02','2013-05-05', 5.00);
INSERT INTO emprestimo VALUES (2,2,'VHS',3,'2013-04-09','2013-04-12', 10.00);
INSERT INTO emprestimo VALUES (3,1,'Blu-ray',4,'2013-02-19','2013-02-20', 10.00);
INSERT INTO emprestimo VALUES (4,1,'VHS',5,'2013-06-07','2013-06-08', 5.00);
INSERT INTO emprestimo VALUES (5,1,'Blu-ray',6,'2013-06-14','2013-06-27', 65.00);
INSERT INTO emprestimo VALUES (5,1,'Blu-ray', 7,'2013-08-16','2013-08-29', 65.00);

INSERT INTO ator VALUES (1,'1923-04-03', 'USA', 'Marlon Brando Jr.', 'Marlon Brando');
INSERT INTO ator VALUES (2,'1940-04-25', 'USA', 'Alfredo James Pacino', 'Al Pacino');
INSERT INTO ator VALUES (3,'1940-03-26', 'USA', 'James Edmund Caan', 'James Caan');
INSERT INTO ator VALUES (4,'1937-04-22', 'USA', 'John Joseph Nicholson', 'Jack Nicholson');
INSERT INTO ator VALUES (5,'1944-11-17', 'USA', 'Daniel Michae DeVito Jr.', 'Danny DeVito');
INSERT INTO ator VALUES (6,'1938-10-22', 'USA', 'Christopher Allen Lloyd', 'Christopher Lloyd');
INSERT INTO ator VALUES (7,'1965-04-04', 'USA', 'Robert John Downey Jr.', 'Robert Downey Jr.');
INSERT INTO ator VALUES (8,'1967-12-22', 'USA', 'Mark Alan Ruffalo', 'Mark Ruffalo');
INSERT INTO ator VALUES (9,'1984-11-22', 'USA', 'Scarlett Ingrid Johansson', 'Scarlett Johansson');
INSERT INTO ator VALUES (10,'1943-06-13', 'UK', 'Malcolm John Taylor', 'Malcolm McDowell');
INSERT INTO ator VALUES (11,'1947-04-26', 'UK', 'Alan Clarke', 'Warren Clarke');
INSERT INTO ator VALUES (12,'1930-11-13', 'UK', 'Adrienne Riccoboni', 'Adrienne Corri');
INSERT INTO ator VALUES (13,'1974-11-11', 'USA', 'Leonardo Wilhelm DiCaprio', 'Leonardo DiCaprio');
INSERT INTO ator VALUES (14,'1981-02-17', 'USA', 'Joseph Leonard Gordon-Levitt', 'Joseph Gordon-Levitt');
INSERT INTO ator VALUES (15,'1987-02-21', 'Canadá', 'Ellen Philpotts-Page', 'Ellen Page');
INSERT INTO ator VALUES (16,'1954-02-18', 'USA', 'John Joseph Travolta', 'John Travolta');
INSERT INTO ator VALUES (17,'1948-12-21', 'USA', 'Samuel Leroy Jackson', 'Samuel L. Jackson');
INSERT INTO ator VALUES (18,'1955-03-19', 'Alemanha Ocidental', 'Walter Bruce Willis', 'Bruce Willis');
INSERT INTO ator VALUES (19,'1975-01-05', 'USA', 'Bradley Charles Cooper', 'Bradley Cooper');
INSERT INTO ator VALUES (20,'1974-01-24', 'USA', 'Edward Paul Helms', 'Ed Helms');
INSERT INTO ator VALUES (21,'1969-10-01', 'USA', 'Zacharius Knight Galifianakis', 'Zach Galifianakis');
INSERT INTO ator VALUES (22,'1937-12-31', 'UK', 'Philip Anthony Hopkins', 'Anthony Hopkins');
INSERT INTO ator VALUES (23,'1962-11-19', 'USA', 'Alicia Christian Foster', 'Jodie Foster');
INSERT INTO ator VALUES (24,'1944-08-25', 'USA', 'Philip Anthony Mair Heald', 'Anthony Heald');
INSERT INTO ator VALUES (25,'1967-10-05', 'UK', 'Guy Edward Peace', 'Guy Pearce');
INSERT INTO ator VALUES (26,'1967-08-21', 'Canadá', 'Carrie-Anne Moss', 'Carrie-Anne Moss');
INSERT INTO ator VALUES (27,'1951-09-12', 'USA', 'Joseph Peter Pantoliano', 'Joe Pantoliano');
INSERT INTO ator VALUES (28,'1968-10-12', 'Austrália', 'Hugh Michael Jackman', 'Hugh Jackman');
INSERT INTO ator VALUES (29,'1964-04-07', 'Nova Zelândia', 'Russel Ira Crowe', 'Russel Crowe');
INSERT INTO ator VALUES (30,'1985-12-03', 'USA', 'Amanda Michelle Seyfried', 'Amanda Seyfried');
INSERT INTO ator VALUES (31,'1973-04-14', 'USA', 'Adrien Brody', 'Adrien Brody');
INSERT INTO ator VALUES (32,'1964-07-31', 'UK', 'Emilia Lydia Rose Fox', 'Emilia Fox');
INSERT INTO ator VALUES (33,'1926-08-06', 'UK', 'Francis Finlay', 'Frank Finlay');
INSERT INTO ator VALUES (34,'1905-05-15', 'USA', 'Joseph Cheshire Cotten', 'Joseph Cotten');
INSERT INTO ator VALUES (35,'1913-08-24', 'USA', 'Margaret Louise Comingore', 'Dorothy Comingore');
INSERT INTO ator VALUES (36,'1900-12-06', 'USA', 'Agnes Robertson Moorehead', 'Agnes Moorehead');
INSERT INTO ator VALUES (37,'1949-07-07', 'USA', 'Shelley Alexis Duvall', 'Shelley Duvall');
INSERT INTO ator VALUES (38,'1910-05-23', 'USA', 'Bejamin Sherman Crothers', 'Scatman Crothers');
INSERT INTO ator VALUES (39,'1963-12-18', 'USA', 'William Bradley Pitt', 'Brad Pitt');
INSERT INTO ator VALUES (40,'1975-09-22', 'USA', 'Mireille Enos', 'Mireille Enos');
INSERT INTO ator VALUES (41,'1966-07-14', 'USA', 'Matthew Chandler Fox', 'Matthew Fox');
INSERT INTO ator VALUES (42,'1967-12-13', 'USA', 'Eric Marlon Bishop', 'Jamie Foxx');
INSERT INTO ator VALUES (43,'1956-10-04', 'Áustria', 'Christoph Waltz', 'Christoph Waltz');


-- The Godfather
INSERT INTO estrela VALUES (1,1);
INSERT INTO estrela VALUES (1,2);
INSERT INTO estrela VALUES (1,3);

-- Over Flew Over The Cuckoos Nest
INSERT INTO estrela VALUES (2,4);
INSERT INTO estrela VALUES (2,5);
INSERT INTO estrela VALUES (2,6);

-- The Avengers
INSERT INTO estrela VALUES (3,7);
INSERT INTO estrela VALUES (3,8);
INSERT INTO estrela VALUES (3,9);

-- A Clockwork Orange
INSERT INTO estrela VALUES (4,10);
INSERT INTO estrela VALUES (4,11);
INSERT INTO estrela VALUES (4,12);

-- Inception
INSERT INTO estrela VALUES (5,13);
INSERT INTO estrela VALUES (5,14);
INSERT INTO estrela VALUES (5,15);

-- Pulp Fiction
INSERT INTO estrela VALUES (6,16);
INSERT INTO estrela VALUES (6,17);
INSERT INTO estrela VALUES (6,18);

-- The Hangover Part III
INSERT INTO estrela VALUES (7,19);
INSERT INTO estrela VALUES (7,20);
INSERT INTO estrela VALUES (7,21);

-- The Silence of the Lambs
INSERT INTO estrela VALUES (8,22);
INSERT INTO estrela VALUES (8,23);
INSERT INTO estrela VALUES (8,24);

-- Memento
INSERT INTO estrela VALUES (9,25);
INSERT INTO estrela VALUES (9,26);
INSERT INTO estrela VALUES (9,27);

-- Les Misérables
INSERT INTO estrela VALUES (10,28);
INSERT INTO estrela VALUES (10,29);
INSERT INTO estrela VALUES (10,30);

-- The Pianist
INSERT INTO estrela VALUES (11,31);
INSERT INTO estrela VALUES (11,32);
INSERT INTO estrela VALUES (11,33);

-- Citizen Kane
INSERT INTO estrela VALUES (12,34);
INSERT INTO estrela VALUES (12,35);
INSERT INTO estrela VALUES (12,36);

-- The Shining
INSERT INTO estrela VALUES (13,4);
INSERT INTO estrela VALUES (13,37);
INSERT INTO estrela VALUES (13,38);

-- World War Z
INSERT INTO estrela VALUES (14,39);
INSERT INTO estrela VALUES (14,40);
INSERT INTO estrela VALUES (14,41);

-- Django Unchained
INSERT INTO estrela VALUES (15,13);
INSERT INTO estrela VALUES (15,42);
INSERT INTO estrela VALUES (15,43);

-- TESTE: exibindo os atores de cada filme
SELECT ator.nomeartistico,filme.titulo_original
FROM ator,estrela,filme
WHERE ator.cod = estrela.codator AND 
	filme.numFilme = estrela.numFilme;
