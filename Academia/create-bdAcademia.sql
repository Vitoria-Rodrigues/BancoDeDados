CREATE DATABASE bdAcademia

USE bdAcademia

CREATE TABLE tbProfessor(
	idProfessor INT PRIMARY KEY IDENTITY (1,1)
	, nomeProfessor VARCHAR (80) NOT NULL
)
CREATE TABLE tbFoneProfessor(
	idFoneProfessor INT PRIMARY KEY IDENTITY (1,1)
	, numFoneProfessor VARCHAR (15) NOT NULL
	, idProfessor INT FOREIGN KEY REFERENCES tbProfessor (idProfessor)
)
CREATE TABLE tbHorario(
	idHorario INT PRIMARY KEY IDENTITY (1,1)
	, descHorario VARCHAR (120) NOT NULL
)
CREATE TABLE tbModalidade(
	idModalidade INT PRIMARY KEY IDENTITY (1,1)
	, nomeModalidade VARCHAR (50) NOT NULL
	, idProfessor INT FOREIGN KEY REFERENCES tbProfessor(idProfessor)
	, idHorario INT FOREIGN KEY REFERENCES tbHorario (idHorario)
)
CREATE TABLE tbAluno(
	idAluno INT PRIMARY KEY IDENTITY (1,1)
	, nomeAluno VARCHAR (80) NOT NULL
	, rgAluno VARCHAR (15) NOT NULL
	, cpfAluno VARCHAR (14) UNIQUE
)
CREATE TABLE tbFoneAluno (
	idFoneAluno INT PRIMARY KEY IDENTITY (1,1)
	, numFoneAluno VARCHAR (15) NOT NULL
	, idAluno INT FOREIGN KEY REFERENCES tbAluno (idAluno)
)
CREATE TABLE tbTipoPlano (
	idTipoPlano INT PRIMARY KEY IDENTITY (1,1)
	, descTipoPlano VARCHAR (120) NOT NULL
)
CREATE TABLE tbMatricula(
	idMatricula INT PRIMARY KEY IDENTITY (1,1)
	, idAluno INT FOREIGN KEY REFERENCES tbAluno (idAluno)
	, idTipoPlano INT FOREIGN KEY REFERENCES tbTipoPlano (idTipoPlano)
	, idModalidade INT FOREIGN KEY REFERENCES tbModalidade (idModalidade)
	, dataMatricula SMALLDATETIME NOT NULL
)
