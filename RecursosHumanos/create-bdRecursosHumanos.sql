CREATE DATABASE bdRecursosHumanos

USE bdRecursosHumanos

CREATE TABLE tbDepartamento(
	codDepartamento INT PRIMARY KEY IDENTITY (1,1)
	, nomeDepartamento VARCHAR (80) NOT NULL
)
CREATE TABLE tbFuncionario(
	codFuncionario INT PRIMARY KEY IDENTITY (1,1)
	, nomeFuncionario VARCHAR (80) NOT NULL
	, dataNascimentoFuncionario SMALLDATETIME NOT NULL
	, sexoFuncionario VARCHAR (1) NOT NULL
	, rgFuncionario VARCHAR (12) NOT NULL
	, cpfFuncionario VARCHAR (14) NOT NULL
	, codDepartamento INT FOREIGN KEY REFERENCES tbDepartamento (codDepartamento)
	, salarioFuncionario SMALLMONEY NOT NULL
)
CREATE TABLE tbDependente (
	codDependente INT PRIMARY KEY IDENTITY (1,1)
	, nomeDependente VARCHAR (80) NOT NULL
	, dataNascimentoDependente SMALLDATETIME
	, codFuncionario INT FOREIGN KEY REFERENCES tbFuncionario (codFuncionario)
)
CREATE TABLE tbProjeto (
	codProjeto INT PRIMARY KEY IDENTITY (1,1)
	, nomeProjeto VARCHAR (80) NOT NULL
	, dataInicioProjeto SMALLDATETIME
	, dataFimProjeto SMALLDATETIME
)
CREATE TABLE tbFuncionarioProjeto (
	codFuncionarioProjeto INT PRIMARY KEY IDENTITY (1,1)
	, codFuncionario INT FOREIGN KEY REFERENCES tbFuncionario (codFuncionario)
	, codProjeto INT FOREIGN KEY REFERENCES tbProjeto (codProjeto)
	, dataInicioTrabalhoProjeto SMALLDATETIME
	, dataFimTrabalhoProjeto SMALLDATETIME
)
