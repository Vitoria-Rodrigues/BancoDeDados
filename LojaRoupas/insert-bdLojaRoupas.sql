USE bdLojaRoupas

INSERT INTO tbFabricante (nomeFabricante)
VALUES ('Malwee')
	 , ('Marisol')
	 , ('Cia da Malha')

INSERT INTO tbFuncionario (nomeFuncionario, idadeFuncionario, dataAdmissao, salarioFuncionario)
VALUES ('Bruno Henrique', 20, '02/07/2019', 1200)
	 , ('Alice Fernandes', 26, '15/09/2020', 1200)


INSERT INTO tbProduto (nomeProduto, precoProduto, qtdeEstoque, dataEntradaProduto, idFuncionario, idFabricante)
VALUES ('Blusa moletom', 85.90, 25, '02/08/2018', 1, 1)--1
	 , ('Calça jogger', 110.00, 30, '25/04/2019', 2, 1)--2
	 , ('Vestido xadrez', 99.90, 20, '05/05/2020', 1, 1)--3
	 , ('Camiseta manga longa', 59.90, 25, '02/07/2017', 2, 2)--4
	 , ('Calça jeans', 69.50, 30, '01/03/2018', 1, 2)--5
	 , ('Short cintura alta', 39.90, 20, '14/02/2019', 2, 2)--6
	 , ('Saia rodada godê', 45.50, 25, '04/04/2020', 1, 3)--7
	 , ('Calça moletom jogger', 59.90, 30, '29/06/2017', 2 ,3)--8
	 , ('Pijama céu estrelado', 70.00, 20, '30/08/2016', 1, 3)--9

INSERT INTO tbCliente (nomeCliente, idadeCliente)
VALUES ('Amanda Ornelas', 21)
	 , ('Oziel Paulo', 21)
	 , ('Patricia dos Santos', 38)
	 , ('Marcia Rupp', 39)
	 , ('Felipe Guimarães', 20)

INSERT INTO tbVendedor (nomeVendedor)
VALUES ('João Santana')
	 , ('Raquel Torres')

INSERT INTO tbVenda (dataVenda, totalVendas, idCliente, idVendedor)
VALUES ('21/02/2021', 155.40, 1, 1)--1
	 , ('01/03/2021', 115.50, 2, 2)--2
	 , ('02/01/2021', 99.80, 3, 1)--3
	 , ('27/02/2021', 199.90, 4, 2 )--4
	 , ('12/04/2021', 105.40, 5, 1)--5

INSERT INTO tbItensVenda (idVenda, idProduto, quantidadeItens, subTotalItens)
VALUES (1, 1, 1, 85.90)
	 , (1, 5, 1, 69.50)
	 , (2, 9, 1, 70.00)
	 , (2, 4, 1, 59.90)
	 , (3, 6, 1, 39.90)
	 , (3, 4, 1, 59.90)
	 , (4, 3, 1, 99.90)
	 , (4, 2, 1, 110.00)
	 , (5, 8, 1, 59.90)
	 , (5, 7, 1, 45.50)
