USE bdVendas

UPDATE tbFabricante
SET nomeFabricante = 'Bauducco'
WHERE idFabricante = 1

UPDATE tbProduto
SET precoProduto = precoProduto * 1.2
WHERE precoProduto < 19

UPDATE tbProduto
SET precoProduto = precoProduto - (precoProduto * 5/100)
WHERE precoProduto >= 19

UPDATE tbProduto
SET nomeProduto = 'Ovo tradicional'
WHERE idProduto = 1

DELETE FROM tbProduto
WHERE idProduto >6 AND idProduto <9

DELETE FROM  tbProduto
WHERE pesoProduto < 400 AND idFabricante != 2

