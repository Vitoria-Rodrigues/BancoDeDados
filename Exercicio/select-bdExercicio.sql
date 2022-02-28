USE bdExercicio

--1)	a soma de todos os códigos dos funcionários
SELECT SUM(codDadosFunc) AS 'Soma cód Func.' FROM tbDadosFunc

--2)	a soma de todas as idades dos funcionários
SELECT SUM(idade) AS 'Idade dos Func.' FROM tbDadosFunc

--3)	a soma de todos os filhos dos funcionários
SELECT SUM(qtdFilhos) AS 'Filhos dos Func.' FROM tbDadosFunc

--4)	a soma de todos os salários dos funcionários 
SELECT SUM(salario) AS 'Salario dos Func.' FROM tbFunc

--5)	a soma do tempo de empresa de todos os funcionários
SELECT SUM(tempEmpresa) AS 'Soma temp. Empresa' FROM tbFunc

--6)	a soma do tempo no cargo de todos os funcionários
SELECT SUM(tempCargo) AS 'Soma temo. Cargo' FROM tbFunc

--7)	apresente o maior código
SELECT MAX(codDadosFunc) AS 'Maior cod.' FROM tbFunc

--8)	apresente o menor código
SELECT MIN(codDadosFunc) AS 'Menor cod.' FROM tbFunc

--9)	apresente a maior idade
SELECT MAX(idade) AS 'Maior idade' FROM tbDadosFunc

--10)	apresente a menor idade 
SELECT MIN(idade) AS 'Menor idade' FROM tbDadosFunc

--11)	apresente a maior quantidade de filhos
SELECT MAX(qtdFilhos) AS 'Maior qtd. Filhos' FROM tbDadosFunc

--12)	apresente a menor quantidade de filhos
SELECT MIN(qtdFilhos) AS 'Menor qtd. Filhos' FROM tbDadosFunc

--13)	apresente o maior salário
SELECT MAX(salario) AS 'Maior salario' FROM tbFunc

--14)	apresente o menor salário
SELECT MIN(salario) AS 'Menor salario' FROM tbFunc

--15)	apresente o maior tempo de empresa 
SELECT MAX(tempEmpresa) AS 'Maior temp. Empresa' FROM tbFunc

--16)	apresente o menor tempo de empresa
SELECT MIN(tempEmpresa) AS 'Menor temp. Empresa' FROM tbFunc

--17)	apresente o maior tempo no cargo
SELECT MAX(tempCargo) AS 'Maior temp. Cargo' FROM tbFunc

--18)	apresente o menor tempo no cargo
SELECT MIN(tempCargo) AS 'Menor temp. Cargo' FROM tbFunc

--19)	a média de todos os códigos dos funcionários
SELECT AVG(codDadosFunc) AS 'Média cod. Func' FROM tbFunc

--20)	a média da idade dos funcionários
SELECT AVG(idade) AS 'Média idade' FROM tbDadosFunc

--21)	a média de filhos dos funcionários
SELECT AVG(qtdFilhos) AS 'Média filhos' FROM tbDadosFunc

--22)	a média dos salários dos funcionários
SELECT AVG(salario) AS 'Média salários' FROM tbFunc

--23)	a média de tempo na empresa dos funcionários
SELECT AVG(salario) AS 'Média salários' FROM tbFunc

--24)	a média de tempo no cargo dos funcionários
SELECT AVG(salario) AS 'Média salários' FROM tbFunc

--25)	apresente a quantidade de funcionários que ganham mais de 800 reais
SELECT COUNT(codFunc) AS 'Ganham mais que 800' FROM tbFunc
WHERE salario > 800

--26)	Apresente a quantidade de funcionários que ganham mais de 1000 reais
SELECT COUNT(codFunc) AS 'Ganham mais que 1000' FROM tbFunc
WHERE salario > 1000

--27)	apresente a quantidade de funcionários que ganham menos que 400 reais
SELECT COUNT(codFunc) AS 'Ganha menos que 400' FROM tbFunc
WHERE salario < 400

--28)	apresente a quantidade de funcionários que ganham menos de 2000 reais
SELECT COUNT(codFunc) AS 'Ganha menos que 2000' FROM tbFunc
WHERE salario < 2000

--29)	apresente a quantidade de funcionários que ganham mais de 8000 reais 
SELECT COUNT(codFunc) AS 'Ganha mais que 8000' FROM tbFunc
WHERE salario > 8000

--30)	apresente a quantidade de funcionários que ganham menos de 1000 reais
SELECT COUNT(codFunc) AS 'Ganha menos que 1000' FROM tbFunc
WHERE salario < 1000

--31)	apresente a quantidade de funcionários que tenham tempo no cargo igual a 1
SELECT COUNT(codFunc) AS 'Temp. Cargo' FROM tbFunc
WHERE tempCargo = 1

--32)	apresente a quantidade de funcionários que tenham tempo no cargo igual a 3
SELECT COUNT(codFunc) AS 'Temp. Cargo' FROM tbFunc
WHERE tempCargo = 3

--33)	apresente a quantidade de funcionários que tenham tempo no cargo igual a 4
SELECT COUNT(codFunc) AS 'Temp. Cargo' FROM tbFunc
WHERE tempCargo = 4

--34)	apresente a quantidade de funcionários que tenham tempo no cargo maior que 10
SELECT COUNT(codFunc) AS 'Temp. Cargo' FROM tbFunc
WHERE tempCargo > 10

--35)	apresente a quantidade de funcionários que tenham idade superior a 20
SELECT COUNT(codDadosFunc) AS 'Idade' FROM tbDadosFunc
WHERE idade > 20

--36)	apresente a quantidade de funcionários que tenham idade superior a 40
SELECT COUNT(codDadosFunc) AS 'Idade' FROM tbDadosFunc
WHERE idade > 40

--37)	apresente a quantidade de funcionários que tenham idade inferior a 80
SELECT COUNT(codDadosFunc) AS 'Idade' FROM tbDadosFunc
WHERE idade < 80

--38)	apresente a quantidade de funcionários que tenham idade inferior a 200
SELECT COUNT(codDadosFunc) AS 'Idade' FROM tbDadosFunc
WHERE idade < 200

--39)	apresente a quantidade de gerentes da empresa
SELECT COUNT(codFunc) AS 'Gerentes' FROM tbFunc
WHERE cargo LIKE 'gerente'

--40)	apresente a quantidade de analista da empresa
SELECT COUNT(codFunc) AS 'Analistas' FROM tbFunc
WHERE cargo LIKE 'analista'

--41)	apresente a quantidade de designer da empresa
SELECT COUNT(codFunc) AS 'Designers' FROM tbFunc
WHERE cargo LIKE 'designer'

--42)	apresente a quantidade de programadores da empresa
SELECT COUNT(codFunc) AS 'Programadores' FROM tbFunc
WHERE cargo LIKE 'programador'

--43)	apresente a somatória dos salários dos analistas da empresa
SELECT SUM(salario) AS 'Soma salários' FROM tbFunc
WHERE cargo LIKE 'analista'

--44)	apresente a somatória dos salários dos gerentes da empresa
SELECT SUM(salario) AS 'Soma salários' FROM tbFunc
WHERE cargo LIKE 'Gerente'

--45)	apresente o total de funcionários que nasceram em São Paulo
SELECT COUNT(codDadosFunc) AS 'Func. SP' FROM tbDadosFunc
WHERE uf LIKE 'SP'

--46)	apresente o total de funcionários que nasceram na Bahia
SELECT COUNT(codDadosFunc) AS 'Func. BA' FROM tbDadosFunc
WHERE uf LIKE 'BA'

--47)	apresente o total de funcionários que nasceram no Ceará
SELECT COUNT(codDadosFunc) AS 'Func. CE' FROM tbDadosFunc
WHERE uf LIKE 'CE'

--48)	apresente o total de funcionários que nasceram no Rio de Janeiro
SELECT COUNT(codDadosFunc) AS 'Func. RJ' FROM tbDadosFunc
WHERE uf LIKE 'RJ'

--49)	apresente o total de funcionários da empresa, exceto os que nasceram no Rio Janeiro
SELECT COUNT(codDadosFunc) AS 'Func. estados menos RJ' FROM tbDadosFunc
WHERE uf NOT LIKE 'RJ'

--50)	apresente a quantidade de funcionários sindicalizados ( 1 )
SELECT COUNT(codFunc) AS 'Qtde. Func. sindicalizados' FROM tbFunc
WHERE sindicalizado = 1

--51)	apresente a quantidade de funcionários não sindicalizados ( 0 )
SELECT COUNT(codFunc) AS 'Qtde. Func. não sindicalizados' FROM tbFunc
WHERE sindicalizado = 0

--Consultas com group by e order by

--52)	apresente a quantidade de funcionários por cargo em ordem alfabética
SELECT COUNT(codFunc) AS 'Qtde. Func', cargo AS 'Cargo' FROM tbFunc
GROUP BY cargo
ORDER BY cargo

--53)	apresente a quantidade de funcionários agrupados pelo número de filhos
SELECT COUNT(codDadosFunc) AS 'Qtde. Func. pelo num. Filhos' FROM tbDadosFunc
GROUP BY qtdFilhos

--54)	apresente a quantidade de funcionários agrupados pela idade em ordem decrescente
SELECT COUNT(codDadosFunc) AS 'Qtde. Func', idade AS 'Idade' FROM tbDadosFunc
GROUP BY idade
ORDER BY idade DESC

--55)	apresente o total de funcionários agrupados pelo estado de nascimento em ordem alfabética
SELECT COUNT(codDadosFunc) AS 'Total Func.', uf AS 'Estado de Nasc.' FROM  tbDadosFunc
GROUP BY uf
ORDER BY uf

--56)	apresente o total de funcionários agrupados pela opção de sindicalizado 
SELECT COUNT(codFunc) AS 'Total Func.', sindicalizado AS 'Sindicalizado' FROM  tbFunc
GROUP BY sindicalizado

--57)	apresente a lista de todos os funcionários com cargo e salário em ordem do maior pra o menor salário
SELECT cargo AS 'Func. Cargo' , salario AS 'Salario' from tbFunc
ORDER BY salario DESC
--58)	apresente a lista de funcionários com o cargo, o tempo no cargo e o tempo na empresa
--ordenando o resultado do funcionário mais antigo na empresa para o mais novo
SELECT cargo AS 'Func. Cargo', tempCargo AS 'Tempo de Cargo', tempEmpresa AS 'Tempo de Empresa' from tbFunc
ORDER BY tempEmpresa

--59)	apresente a lista de funcionários com o cargo, o tempo no cargo e o tempo na empresa ordenando o resultado do funcionário mais antigo no cargo para o mais novo, no cargo de Analista
SELECT codDadosFunc AS 'Cod. Func.', cargo AS 'Cargo', tempCargo AS 'Tempo de Cargo', tempEmpresa AS 'Tempo de Empresa' FROM tbFunc
WHERE cargo LIKE 'Analista'
ORDER BY tempCargo DESC
--60)	apresente a lista de funcionários com o cargo, o tempo no cargo e o tempo na empresa ordenando o resultado do funcionário mais antigo na empresa para o mais novo dos funcionários que são sindicalizados
SELECT codDadosFunc AS 'Cod. Func.', cargo AS 'Cargo', tempCargo AS 'Tempo de Cargo', tempEmpresa AS 'Tempo de Empresa' FROM tbFunc
WHERE sindicalizado = 1
ORDER BY tempEmpresa DESC