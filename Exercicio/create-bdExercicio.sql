CREATE DATABASE bdExercicio

USE bdExercicio

CREATE TABLE tbDadosFunc  (
	codDadosFunc INT PRIMARY KEY IDENTITY (1,1)
	, nomeFunc VARCHAR (80)
	, uf VARCHAR (2)
	, idade INT
	, qtdFilhos INT
)
CREATE TABLE tbFunc (
	codFunc INT PRIMARY KEY IDENTITY (1,1)
	, codDadosFunc INT FOREIGN KEY REFERENCES tbDadosFunc(codDadosFunc)
	, cargo VARCHAR (30)
	, salario SMALLMONEY
	, tempEmpresa INT
	, tempCargo INT
	, sindicalizado INT
)
