--Criando Banco de dados
CREATE DATABASE producaodb
GO

USE producaodb
GO

--Criando Tabelas
CREATE TABLE Fabricante(
codfabricante SMALLINT PRIMARY KEY IDENTITY(1,1),
nomefabricante VARCHAR(30)
);

CREATE TABLE Produto(
codproduto INT PRIMARY KEY IDENTITY(10,1),
nomeproduto VARCHAR(30),
codfabricante SMALLINT,
FOREIGN KEY(codfabricante) REFERENCES Fabricante(codfabricante)
);

CREATE TABLE Lote(
numlote INT PRIMARY KEY IDENTITY(1,1),
datavalidade DATE,
precounitario DECIMAL(10,2),
quantidade SMALLINT DEFAULT 100,
valorlote DECIMAL(16,2),
codproduto INT,
FOREIGN KEY(codproduto) REFERENCES Produto(codproduto)
);
GO

--Inserir dados

INSERT INTO Fabricante (nomefabricante) VALUES
('Clear'),
('Rexona'),
('Jhonson & Jhonson'),
('Coleston')
;

SELECT * FROM Fabricante

INSERT INTO Produto (nomeproduto, codfabricante) VALUES
('Sabonete em Barra',2),
('Shampoo Anticaspa',1),
('Desodorante Aerosol Neutro',2),
('Sabonete Liquido',2),
('Protetor Solar 30',3),
('Shampoo 2 em 1',2),
('Desodorante Aerosol de Morango',2),
('Shampoo Anticaspa',2),
('Protetor Solar 60',3),
('Desodorante Rollon', 1)
;

SELECT * FROM Produto