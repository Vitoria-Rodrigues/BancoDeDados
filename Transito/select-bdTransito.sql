USE bdTransito	

--A)
SELECT COUNT(idMotorista) AS 'Qtde de Motoristas' FROM tbMotorista

--B)
SELECT COUNT(idMotorista) AS 'Qtde de Motoristas com o sobrenome Silva' FROM tbMotorista
WHERE nomeMotorista LIKE '%Silva%'

--C)
SELECT COUNT(idMotorista) AS 'Qtde de Motoristas que nasceram em 2000' FROM tbMotorista
WHERE YEAR(dataNascimentoMotorista) = 2000

--D)
SELECT COUNT(idMotorista) AS 'Qtde de Motoristas com pontos acumulada acima de 10 pontos' FROM tbMotorista 
WHERE pontuacaoAcumulada > 10

--E)
SELECT SUM(pontuacaoAcumulada) AS 'Soma das pontuações acumulada pelos motoristas' FROM tbMotorista

--F)
SELECT AVG(pontuacaoAcumulada) AS 'Media das pontuações acumuladas pelos motoristas' FROM tbMotorista

--G)
SELECT COUNT(idVeiculo) AS 'Qtde de veiculos do motorista de cód. 1' FROM tbVeiculo
WHERE idMotorista = 1

--H) 
SELECT COUNT(idVeiculo) AS 'Qtde. de veiculos com a placa iniciada com a letra A' FROM tbVeiculo
WHERE placa LIKE '%A'

--I)
SELECT COUNT(idVeiculo) AS 'Qtde de veiculos que foram fabricados antes de 2010' FROM tbVeiculo
WHERE YEAR(anoVeiculo) < 2010 

--J)
SELECT AVG(anoVeiculo) AS 'Média do ano de fabricação dos veiculos' FROM tbVeiculo


--K)
SELECT COUNT(idVeiculo) AS 'Veiculos com Sedan no nome' FROM tbVeiculo
WHERE modeloVeiculo LIKE '%Sedan%'

--L)
SELECT SUM(pontosMulta) AS 'Somatória dos pontos da multa do veiculo de id 2' FROM tbMultas 
WHERE idVeiculo = 2

--M)
SELECT AVG(pontosMulta) AS 'Média dos pontos das multas' FROM tbMultas

--N)
SELECT COUNT(idMulta) AS 'Qtde de multas aplicadas em Abril de 2018' FROM tbMultas
WHERE MONTH(dataMulta) = 04 AND YEAR(dataMulta) = 2018

--O)
SELECT COUNT(idVeiculo) AS 'Qtde de veiculos que a placa termina entre 1 e 2' FROM tbVeiculo
WHERE placa LIKE '%1' OR placa LIKE '%2'

--P)
SELECT COUNT(idVeiculo) AS 'Qtde de veiculos que a placa termina entre 3 e 4' FROM tbVeiculo
WHERE placa LIKE '%3' OR placa LIKE '%4'

--Q)
SELECT COUNT(idVeiculo) AS 'Qtde de veiculos que a placa termina entre 5 e 6' FROM tbVeiculo
WHERE placa LIKE '%5' OR placa LIKE '%6'

--R)
SELECT COUNT(idVeiculo) AS 'Qtde de veiculos que a placa termina entre 7 e 8' FROM tbVeiculo
WHERE placa LIKE '%7' OR placa LIKE '%8'

--S)

SELECT COUNT(idVeiculo) AS 'Qtde de veiculos que a placa termina entre 9 e 0' FROM tbVeiculo
WHERE placa LIKE '%9' OR placa LIKE '%0'

--T)
SELECT COUNT(idVeiculo) AS 'Qtde de veiculos', anoVeiculo AS 'Ano fabricação' from tbVeiculo
	GROUP BY anoVeiculo

--U)
SELECT COUNT(idMotorista) AS 'Qtde de motoristas', pontuacaoAcumulada AS 'Pontuação acumulada' from tbMotorista
	GROUP BY pontuacaoAcumulada

--V)
SELECT COUNT(idMotorista) as 'Qtde de motoristas que ultrapassaram 20 pontos' from tbMotorista	
	WHERE pontuacaoAcumulada > 20

--W)
SELECT AVG(pontuacaoAcumulada) as 'Pontuação média dos motoristas nascidos no ano de 2000' from tbMotorista	
	WHERE YEAR(dataNascimentoMotorista) = 2000

--X)
SELECT AVG(pontosMulta) as 'Média dos pontos das multas aplicadas em julho de 2017' from tbMultas	
	WHERE YEAR(dataMulta) = 2017 AND  MONTH(dataMulta) = 7

--Y)
SELECT COUNT(idVeiculo) as 'Qtde de veículos não podem circular na segunda-feira' from tbVeiculo
	WHERE placa LIKE '%1' OR placa LIKE '%2'