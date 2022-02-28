CREATE DATABASE bdLojaRoupas

USE bdLojaRoupas

CREATE TABLE tbCliente (
	idCliente INT PRIMARY KEY IDENTITY (1,1)
	, nomeCliente VARCHAR (50) NOT NULL 
	, idadeCliente VARCHAR (3) NOT NULL
)
CREATE TABLE tbVendedor (
	idVendedor INT PRIMARY KEY IDENTITY (1,1)
	, nomeVendedor VARCHAR (50) NOT NULL
)
CREATE TABLE tbVenda (
	idVenda INT PRIMARY KEY IDENTITY (1,1)
	, dataVenda SMALLDATETIME NOT NULL
	, idCliente INT FOREIGN KEY REFERENCES tbCliente (idCliente) 
	, idVendedor INT FOREIGN KEY REFERENCES tbVendedor (idVendedor)
	, totalVendas SMALLMONEY NOT NULL
)
CREATE TABLE tbFabricante (
	idFabricante INT PRIMARY KEY IDENTITY (1,1)
	, nomeFabricante VARCHAR (50) NOT NULL
)
CREATE TABLE tbFuncionario (
	idFuncionario INT PRIMARY KEY IDENTITY (1,1)
	, nomeFuncionario VARCHAR (50) NOT NULL
	, idadeFuncionario VARCHAR (3) NOT NULL
	, dataAdmissao SMALLDATETIME NOT NULL
	, salarioFuncionario SMALLMONEY 
)
CREATE TABLE tbProduto (
	idProduto INT PRIMARY KEY IDENTITY (1,1)
	, nomeProduto VARCHAR (70) NOT NULL
	, precoProduto SMALLMONEY NOT NULL
	, qtdeEstoque INT NOT NULL
	, dataEntradaProduto SMALLDATETIME NOT NULL
	, idFuncionario INT FOREIGN KEY REFERENCES tbFuncionario (idFuncionario)
	, idFabricante INT FOREIGN KEY REFERENCES tbFabricante (idFabricante)
)
CREATE TABLE tbItensVenda (
	idItensVenda INT PRIMARY KEY IDENTITY (1,1)
	, idVenda INT FOREIGN KEY REFERENCES tbVenda (idVenda)
	, idProduto INT FOREIGN KEY REFERENCES tbProduto (idProduto)
	, quantidadeItens INT NOT NULL
	, subTotalItens SMALLMONEY NOT NULL
)
