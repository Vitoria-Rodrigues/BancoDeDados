USE bdEscolaIdioma

INSERT INTO tbAluno (nomeAluno, rgAluno, enderecoAluno, numEndAluno,compAluno, bairroAluno, cepAluno, cidadeAluno)
VALUES ('Vit?ria Rodrigues', '12.345.678-X', 'Av nordestina', '1542', 'Casa', 'Guaianazes', '05600-000', 'S?o Paulo')
	 , ('Amanda Ornelas', '98.765.432-1', 'Av Jacui', '568', 'Apartamento', 'S?o Jos?', '03640-001', 'Curitiba')
	 , ('Alanis Emanuela', '15.215.486-2', 'Rua jucelino amorim', '48', 'Casa', 'S?o jorge', '00401-523', 'Fatima do Sul')
	 , ('Bruno Henrique', '25.218.541-9', 'Rua Americana', '143', 'Apartamento', 'Limoeiro', '01836-236', 'Londrina')
	 , ('Felipe Guimar?es', '17.135.486-7', 'Rua 20 de dezembro', '3018', 'Casa', 'Brooklyn', '05982-120', 'Eldourado')
	 , ('Oziel Paulo', '35.186.439-5', 'Av Washington Luiz', '1205', 'Apartamento', 'Vila Palmeiras', '05314-680', 'Taubat?')

INSERT INTO tbCurso (nomeCurso)
VALUES ('Ingl?s')
	, ('Espanhol')
	, ('Coreano')

INSERT INTO tbPeriodo (descPeriodo)
VALUES ('Manh?')
	, ('Tarde')
	, ('Noite')

INSERT INTO tbDiaSemana (diaSemana)
VALUES ('Segunda')
	 , ('Ter?a')
	 , ('Quarta')
	 , ('Quinta')
	 , ('Sexta')
	 , ('S?bado')

INSERT INTO tbNivel (descNivel)
VALUES ('B?sico')
	 , ('Intermedi?rio')
	 , ('Avan?ado')

INSERT INTO	tbFoneAluno (foneAluno, idAluno)
VALUES ('112646-4315', 1)
	 , ('1195842-4430', 1)
	 , ('412358-8561', 2)
	 , ('4195463-1205', 2)
	 , ('122484-9547', 3)
	 , ('1294258-2989', 3)
	 , ('362856-9542', 4)
	 , ('3695559-7516', 4)
	 , ('522548-6982', 5)
	 , ('5294986-7895', 5)
	 , ('842692-6523', 6)
	 , ('8499674-5613', 6)

INSERT INTO tbTurma (horario, idCurso, idNivel, idDiaSemana, idPeriodo)
VALUES ('8h', 1, 1, 1, 1)
	 , ('11h', 2, 2, 2, 1)
	 , ('14h', 1, 3, 4, 2)
	 , ('18h', 3, 2, 5, 2)
	 , ('21h', 2, 3, 6, 3)

INSERT INTO tbMatricula (dataMatricula, idAluno, idTurma)
VALUES ('12/01/2021', 1, 1)
	 , ('25/01/2021', 2, 1)
	 , ('10/04/2021', 3, 2)
	 , ('09/06/2021', 4, 3)
	 , ('17/08/2021', 5, 4)
	 , ('27/02/2021', 6, 5)

