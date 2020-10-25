/*LINK APRESENTAÇÃO ABAIXO:
Apresentação https://docs.google.com/presentation/d/1ZxV4VwacX5rMrRR7CQ33SEm3y18S9izqfcHCgS1FUho/edit#slide=id.ga4783ddd39_0_74



*/
/*SELECT * FROM CLIENTES;

SELECT NUMEROCLIENTE, NOMECLIENTE, SEXO, TELEFONE, ENDERECO, CIDADE, ESTADO FROM CLIENTES;

/*SELECIONANDO DUAS TABELAS EM UMA QUERY SEM FAZER RELACIONAMENTO ENTRE ELAS*/

/*SELECT * FROM CLIENTES C, EMPREGADOS E;*/


/*exemplo insert*/
/*INSERT INTO `clientes` (`NumeroCliente`, `NomeCliente`, `UltimoNomeContato`, `PrimeiroNomeContato`, `Sexo`, `Telefone`, `Endereco`, `Complemento`, `Cidade`, `Estado`, `CEP`, `Pais`, `NumeroEmpregadoVendedor`, `LimiteCredito`) VALUES
	(500, 'Yuri Jivago Mergulhão Barreto', 'Barreto', 'Yuri ', 'M', '(34)98417-5059', 'Av. João Naves, 1000', 'apto 00000', 'Uberlândia', NULL, '38400-123', 'Brasil', 1370, 2100);*/

/*Exemplo Update*/

/*UPDATE CLIENTES SET
LIMITECREDITO = 100000
WHERE NUMEROCLIENTE = 500;*/

/*Exemplo Delete*/

/*
DELETE FROM CLIENTES
WHERE NUMEROCLIENTE = 500;*/


/*Exemplos de select com where*/

/*SELECT * FROM CLIENTES WHERE SEXO = 'M';

SELECT * FROM CLIENTES WHERE SEXO = 'F';*/


/*Exemplo de funções de agregação*/

/*SELECT MAX(PRECOCOMPRA) AS MAIOR_PRECO FROM PRODUTOS;

SELECT MIN(PRECOCOMPRA) AS MENOR_PRECO FROM PRODUTOS;

SELECT AVG(PRECOCOMPRA) AS MEDIA_PRECO FROM PRODUTOS;

SELECT COUNT(PRECOCOMPRA) AS QTD_PROD FROM PRODUTOS;

SELECT SUM(PRECOCOMPRA) AS TOTAL_PROD FROM PRODUTOS;


SELECT 	MAX(PRECOCOMPRA) AS MAIOR_PRECO,
			MIN(PRECOCOMPRA) AS MENOR_PRECO,	
			AVG(PRECOCOMPRA) AS MEDIA_PRECO,
			COUNT(PRECOCOMPRA) AS QTD_PROD,
			SUM(PRECOCOMPRA) AS TOTAL_PROD 
	FROM PRODUTOS;
	*/
	
	
	
	
	
	
	
/*UTILIZANDO WHERE COM FUNÇÕES DE AGREGAÇÃO*/	
/*	
SELECT 	MAX(PRECOCOMPRA) AS MAIOR_PRECO,
			MIN(PRECOCOMPRA) AS MENOR_PRECO,	
			AVG(PRECOCOMPRA) AS MEDIA_PRECO,
			COUNT(PRECOCOMPRA) AS QTD_PROD,
			SUM(PRECOCOMPRA) AS TOTAL_PROD 
	FROM PRODUTOS
  WHERE NOMELINHA = 'Motocicletas';*/






/*UTILIZANDO GROUP BY*/
/*
SELECT 	MAX(PRECOCOMPRA) AS MAIOR_PRECO,
			MIN(PRECOCOMPRA) AS MENOR_PRECO,	
			AVG(PRECOCOMPRA) AS MEDIA_PRECO,
			COUNT(PRECOCOMPRA) AS QTD_PROD,
			SUM(PRECOCOMPRA) AS TOTAL_PROD,
			NOMELINHA
	FROM PRODUTOS
GROUP BY NOMELINHA;
*/



/*UTILIZANDO HAVING*/

/*
SELECT 	MAX(PRECOCOMPRA) AS MAIOR_PRECO,
			MIN(PRECOCOMPRA) AS MENOR_PRECO,	
			AVG(PRECOCOMPRA) AS MEDIA_PRECO,
			COUNT(PRECOCOMPRA) AS QTD_PROD,
			SUM(PRECOCOMPRA) AS TOTAL_PROD,
			NOMELINHA
	FROM PRODUTOS
GROUP BY NOMELINHA
HAVING QTD_PROD > 12;
*/






/*EXEMPLOS DE JOINS*/

/*
SELECT * 
	FROM CLIENTES CLI
	LEFT JOIN EMPREGADOS EMP ON (EMP.NUMEROEMPREGADO = CLI.NUMEROEMPREGADOVENDEDOR);
	

SELECT * 
	FROM CLIENTES CLI
	RIGHT JOIN EMPREGADOS EMP ON (EMP.NUMEROEMPREGADO = CLI.NUMEROEMPREGADOVENDEDOR);	

SELECT * 
	FROM CLIENTES CLI
	LEFT JOIN EMPREGADOS EMP ON (EMP.NUMEROEMPREGADO = CLI.NUMEROEMPREGADOVENDEDOR)
	
UNION

SELECT * 
	FROM CLIENTES CLI
	RIGHT JOIN EMPREGADOS EMP ON (EMP.NUMEROEMPREGADO = CLI.NUMEROEMPREGADOVENDEDOR);	

SELECT * 
	FROM CLIENTES CLI
	INNER JOIN EMPREGADOS EMP ON (EMP.NUMEROEMPREGADO = CLI.NUMEROEMPREGADOVENDEDOR);
*/
