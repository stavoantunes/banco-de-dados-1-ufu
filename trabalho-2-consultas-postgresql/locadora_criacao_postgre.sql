/* script para a criação do banco de dados locadora
 * adaptado do material da prof Maria Camila Barioni - FACOM - UFU */


CREATE SCHEMA locadora;
SET search_path TO locadora;


CREATE TABLE cliente (
	numcliente SERIAL NOT NULL,
	nome VARCHAR(50) NOT NULL,
	endereco VARCHAR(50) NULL,
	foneres VARCHAR(50)  NULL,
	fonecel VARCHAR(50)  NULL,
	numClienteIndicador  INTEGER NULL,
	CONSTRAINT PK_cliente
		PRIMARY KEY (numcliente),
	CONSTRAINT FK_cliente
		FOREIGN KEY (numClienteIndicador) REFERENCES cliente(numcliente)
);

CREATE TABLE ator (
	cod SERIAL NOT NULL,
	datanasc DATE   NULL,
	nacionalidade VARCHAR(50) NULL,
	nomereal VARCHAR(50) NULL,
	nomeartistico VARCHAR(50) NULL,
	CONSTRAINT PK_ator
		PRIMARY KEY (cod)
);

CREATE TABLE classificacao (
	cod SERIAL NOT NULL,
	nome VARCHAR(50) NOT NULL,
	preco FLOAT NOT NULL,
	CONSTRAINT PK_classificacao
		PRIMARY KEY (cod)
);

CREATE TABLE filme (
	numfilme SERIAL NOT NULL,
	titulo_original VARCHAR(50) NOT NULL,
	titulo_pt VARCHAR(50) NULL,
	duracao INTEGER  NULL,
	data_lancamento DATE  NULL,
	direcao VARCHAR(250)  NULL,
	categoria VARCHAR(50)  NULL,
	classificacao INTEGER  NULL,
	CONSTRAINT PK_filme
		PRIMARY KEY (numfilme),
	CONSTRAINT FK_filme
		FOREIGN KEY (classificacao) REFERENCES classificacao(cod)
		ON UPDATE CASCADE
		ON DELETE CASCADE
);

CREATE TABLE midia (
	numfilme INTEGER NOT NULL,
	numero INTEGER NOT NULL,
	tipo VARCHAR(50) NOT NULL,
	CONSTRAINT PK_midia
		PRIMARY KEY (numfilme, numero, tipo),
	CONSTRAINT FK_midia
		FOREIGN KEY (numfilme) REFERENCES filme(numfilme)
		ON UPDATE CASCADE
		ON DELETE CASCADE
);
	
CREATE TABLE estrela (
	numfilme INTEGER NOT NULL,
	codator INTEGER NOT NULL,
	CONSTRAINT PK_estrela
		PRIMARY KEY (numfilme, codator),
	CONSTRAINT FK_estrela
		FOREIGN KEY (numfilme) REFERENCES filme(numfilme)
		ON UPDATE CASCADE
		ON DELETE CASCADE,
		FOREIGN KEY (codator) REFERENCES ator(cod)
		ON UPDATE CASCADE
		ON DELETE CASCADE
);

CREATE TABLE emprestimo (
	numfilme INTEGER NOT NULL,
	numero INTEGER NOT NULL,
	tipo VARCHAR(50) NOT NULL,
	cliente INTEGER NULL,
	dataret DATE NOT NULL,
	datadev DATE  NULL,
	valor_pg FLOAT  NULL,
	CONSTRAINT PK_emprestimo
		PRIMARY KEY (numfilme, numero, tipo, cliente),
	CONSTRAINT FK_emprestimo
		FOREIGN KEY (numfilme, numero, tipo) REFERENCES midia (numfilme, numero, tipo)
		ON UPDATE CASCADE
		ON DELETE CASCADE,
		FOREIGN KEY (cliente) REFERENCES cliente(numcliente)
		ON UPDATE CASCADE
		ON DELETE CASCADE
);

