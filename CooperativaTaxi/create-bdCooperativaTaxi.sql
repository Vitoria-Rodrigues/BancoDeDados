CREATE DATABASE bdCooperativaTaxi

USE bdCooperativaTaxi

CREATE TABLE tbTaxista(
	idTaxista INT PRIMARY KEY IDENTITY (1,1)
	, nomeTaxista VARCHAR(120) NOT NULL
	, cpfTaxista VARCHAR (15) NOT NULL UNIQUE
	, rgTaxista VARCHAR (15) NOT NULL
	, dataNasctoTaxista SMALLDATETIME NOT NULL
	, cnhTaxista VARCHAR (18) NOT NULL UNIQUE
	)
CREATE TABLE tbFoneTaxista(
	idFoneTaxista INT PRIMARY KEY IDENTITY (1,1)
	, numFone VARCHAR (15) NOT NULL
	, idTaxista INT FOREIGN KEY REFERENCES tbTaxista(idTaxista)
)
CREATE TABLE tbMarca(
	idMarca INT PRIMARY KEY IDENTITY (1,1)
	, nomeMarca VARCHAR (30) NOT NULL
)
CREATE TABLE tbModelo(
	idModelo INT PRIMARY KEY IDENTITY (1,1)
	, descModelo VARCHAR (30) NOT NULL
	, idMarca INT FOREIGN KEY REFERENCES tbMarca(idMarca)
)
CREATE TABLE tbVeiculo(
	idVeiculo INT PRIMARY KEY IDENTITY (1,1)
	, placaVeiculo VARCHAR (8) NOT NULL UNIQUE
	, renavamVeiculo VARCHAR (12) NOT NULL
	, anoFabricVeiculo VARCHAR (9) NOT NULL
	, idTaxista INT FOREIGN KEY REFERENCES tbTaxista(idTaxista)
	, idModelo INT FOREIGN KEY REFERENCES tbModelo(idModelo)
)
CREATE TABLE tbCliente(
	idCliente INT PRIMARY KEY IDENTITY(1,1)
	, nomeCliente VARCHAR (60) NOT NULL
	, cpfCliente VARCHAR (14) NOT NULL
)
CREATE TABLE tbEndereco(
	idEndereco INT PRIMARY KEY IDENTITY(1,1)
	, logradouro VARCHAR (50) NOT NULL
	, num VARCHAR (4) NOT NULL
	, comp VARCHAR (10)
	, cep VARCHAR (9) NOT NULL
	, bairro VARCHAR (15) NOT NULL
	, cidade VARCHAR (20) NOT NULL
)
CREATE TABLE tbCorrida(
	idCorrida INT PRIMARY KEY IDENTITY(1,1)
	, dataHoraCorrida SMALLDATETIME NOT NULL
	, idVeiculo INT FOREIGN KEY REFERENCES tbVeiculo(idVeiculo)
	, idCliente INT FOREIGN KEY REFERENCES tbCliente(idCliente)
	, idEnderecoOrigem INT FOREIGN KEY REFERENCES tbEndereco(idEndereco)
	, idEnderecoDestino INT FOREIGN KEY REFERENCES tbEndereco(idEndereco)
)

