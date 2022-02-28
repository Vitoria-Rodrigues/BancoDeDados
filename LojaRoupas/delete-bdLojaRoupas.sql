USE bdLojaRoupas

UPDATE tbFabricante
SET nomeFabricante = 'Turma da Malha'
WHERE idFabricante = 3

UPDATE tbVenda
SET totalVendas = totalVendas - (totalVendas * 0.1) 
WHERE idVenda = 1

UPDATE tbProduto
SET precoProduto = (precoProduto * 0.2) + precoProduto
WHERE idFabricante = 2

UPDATE tbProduto
SET qtdeEstoque = 10
WHERE idProduto = 3

DELETE FROM tbItensVenda
WHERE idItensVenda = 2

DELETE FROM tbItensVenda
WHERE idVenda = 3

DELETE FROM tbFabricante
WHERE idFabricante = 1
--Não é possivel remover o fabricante do id = 1, porque ele esta sendo usado em outras tabelas como chave estrangeira
-- e para poder mudar isso, teria que deletar as outras tabelas antes.
