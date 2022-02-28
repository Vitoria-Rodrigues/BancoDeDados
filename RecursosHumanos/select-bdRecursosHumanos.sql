USE bdRecursosHumanos

--1.O nome dos funcion�rios e o sal�rio daqueles que ganham acima de R$ 3000,00
SELECT nomeFuncionario, salarioFuncionario FROM tbFuncionario
WHERE salarioFuncionario > '3000.00'

--2.O nome e o rg dos funcion�rios que seja do sexo masculino
SELECT nomeFuncionario, rgFuncionario FROM tbFuncionario
WHERE sexoFuncionario = 'M'

--3.O nome de todos os departamentos
SELECT nomeDepartamento FROM tbDepartamento

--4.O nome e o rg dos funcion�rios que ganham abaixo de R$ 3000
SELECT nomeFuncionario, rgFuncionario FROM tbFuncionario
WHERE salarioFuncionario < '3000.00'

--5.O nome dos funcion�rios que trabalham no departamento de TI
SELECT nomeFuncionario FROM tbFuncionario
WHERE codDepartamento = '3'

--6.O nome dos projetos que v�o terminar antes de 31/12/2018
SELECT nomeProjeto FROM tbProjeto
WHERE dataFimProjeto < '31/12/2018'

--7.O nome e o rg dos funcion�rios do departamento de vendas
SELECT nomeFuncionario, rgFuncionario FROM tbFuncionario
WHERE codDepartamento = '2'

--8.O nome e o rg dos funcion�rios de TI que ganham acima de R$ 5000,00
SELECT nomeFuncionario, rgFuncionario FROM tbFuncionario
WHERE codDepartamento = '3' AND salarioFuncionario > '5000.00'

--9.O nome dos dependentes do funcion�rio Jos� Santos
SELECT nomeDependente FROM tbDependente
WHERE codFuncionario = '1'

--10.O c�digo dos projetos nos quais a funcion�ria Mariana est� alocada
SELECT codProjeto FROM tbFuncionarioProjeto
WHERE codFuncionario = '2'

