CREATE DATABASE bdOficinaMecanica

USE bdOficinaMecanica

CREATE TABLE tbCliente(
	idCliente INT PRIMARY KEY IDENTITY (1,1)
	, nomeCliente VARCHAR (80) NOT NULL
	, rgCliente VARCHAR (15) NOT NULL
)
CREATE TABLE tbFoneCliente(
	idFoneCliente INT PRIMARY KEY IDENTITY (1,1)
	, numFoneCliente VARCHAR (15) NOT NULL
	, idCliente INT FOREIGN KEY REFERENCES tbCliente (idCliente)
)
CREATE TABLE tbMarca (
	idMarca INT PRIMARY KEY IDENTITY (1,1)
	, nomeMarca VARCHAR (20) NOT NULL
)
CREATE TABLE tbModelo (
	idModelo INT PRIMARY KEY IDENTITY (1,1)
	, nomeModelo VARCHAR (30) NOT NULL
	, idMarca INT FOREIGN KEY REFERENCES tbMarca (idMarca)
)
CREATE TABLE tbCor(
	idCor INT PRIMARY KEY IDENTITY (1,1)
	, nomeCor VARCHAR (25) NOT NULL
)
CREATE TABLE tbVeiculo (
	idVeiculo INT PRIMARY KEY IDENTITY (1,1)
	, placaVeiculo VARCHAR (8) NOT NULL UNIQUE
	, kmVeiculo INT NOT NULL
	, chassiVeiculo VARCHAR (17) NOT NULL
	, idCor INT FOREIGN KEY REFERENCES tbCor (idCor)
	, idCliente INT FOREIGN KEY REFERENCES tbCliente (idCliente)
	, idModelo INT FOREIGN KEY REFERENCES tbModelo (idModelo)
)
CREATE TABLE tbOrcamento(
	idOrcamento INT PRIMARY KEY IDENTITY (1,1)
	, dataOrcamento SMALLDATETIME NOT NULL
	, dataValidade SMALLDATETIME NOT NULL
	, valorTotal MONEY NOT NULL
	, idVeiculo INT FOREIGN KEY REFERENCES tbVeiculo (idVeiculo)
)
CREATE TABLE tbOrdemServico(
	idOrdemServico INT PRIMARY KEY IDENTITY (1,1)
	, idOrcamento INT FOREIGN KEY REFERENCES tbOrcamento (idOrcamento)
	, dataInicio SMALLDATETIME NOT NULL
	, dataFinal SMALLDATETIME NOT NULL
)
CREATE TABLE tbServico(
	idServico INT PRIMARY KEY IDENTITY (1,1)
	, descServico MONEY NOT NULL
	, valorServico MONEY NOT NULL
)
CREATE TABLE tbItemOrcamento(
	idItemOrcamento INT PRIMARY KEY IDENTITY (1,1)
	, idOrcamento INT FOREIGN KEY REFERENCES tbOrcamento (idOrcamento)
	, idServico INT FOREIGN KEY REFERENCES tbServico (idServico)
	, subTotal MONEY NOT NULL
)

