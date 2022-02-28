CREATE DATABASE bdVendas

USE bdVendas

CREATE TABLE tbFabricante(
	idFabricante INT PRIMARY KEY IDENTITY (1,1)
	, nomeFabricante VARCHAR (80) NOT NULL 
	, cnpjFabricante VARCHAR (18) NOT NULL
)
CREATE TABLE tbProduto(
	idProduto INT PRIMARY KEY IDENTITY (1,1)
	, nomeProduto VARCHAR (120) NOT NULL
	, precoProduto SMALLMONEY NOT NULL
	, pesoProduto VARCHAR (10) NOT NULL
	, idFabricante INT FOREIGN KEY REFERENCES tbFabricante(idFabricante)
)