CREATE DATABASE bdTransito

USE bdTransito

CREATE TABLE tbMotorista (
	idMotorista INT PRIMARY KEY IDENTITY (1,1)
	, nomeMotorista VARCHAR (40) NOT NULL
	, dataNascimentoMotorista SMALLDATETIME NOT NULL
	, cpfMotorista CHAR (11) NOT NULL
	, CNHMotorista CHAR (15) NOT NULL
	, pontuacaoAcumulada INT
)
CREATE TABLE tbVeiculo(
	idVeiculo INT PRIMARY KEY IDENTITY (1,1)
	, modeloVeiculo VARCHAR (30) NOT NULL
	, placa CHAR (7) NOT NULL
	, renavam CHAR (11) NOT NULL
	, anoVeiculo INT NOT NULL
	, idMotorista INT FOREIGN KEY REFERENCES tbMotorista(idMotorista)
)
CREATE TABLE tbMultas(
	idMulta INT PRIMARY KEY IDENTITY (1,1)
	, dataMulta SMALLDATETIME
	, horaMulta TIME
	, pontosMulta INT
	, idVeiculo INT FOREIGN KEY REFERENCES tbVeiculo(idVeiculo)
)
