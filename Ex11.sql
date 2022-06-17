
--Exercicios aula 11

create database aula11;
use aula11;


-- 1) Criar uma tabela PRODUTOS com os campos: ID, NOME, PREÇO, DATA DE FABRICAÇÃO, DATA DE ENTREDA NO ESTOQUE E DATA DE VALIDADE.

create table produtos(
idprod			int				not null,
prod			varchar(40)		not null,
preco			decimal(8,2)	not null,
Dtafab			datetime		not null,
Dtaentrada		datetime		not null,
Dtaval			datetime		not null
);

-- 2) Inserir os registros suficientes para que os scripts abaixo apresentem pelo menos 1 resultado válido.

insert into produtos values (1,'Cerveja DabrabA',5,'01/01/2022','10/01/2022', '10/06/2022');
insert into produtos values (2,'Refrigerante DUBAO',2.75,'01/10/2021','10/10/2021', '31/05/2022');
insert into produtos values (3,'Biscoito Dona Enaldina',3.50,'01/06/2021','10/06/2021', '10/01/2021');
insert into produtos values (4,'Sonho de Valsa',1.50,'01/01/2021','10/01/2021', '10/06/2021');
insert into produtos values (5,'Biscoito Isaura',6.50,'01/01/2021','10/01/2021', '10/06/2021');
insert into produtos values (6,'Maca',1.50,'01/01/2022','10/01/2022', '10/06/2022');
insert into produtos values (7,'Suco del Valle',1.50,'01/01/2022','10/01/2022', '10/06/2022');
insert into produtos values (8,'Danone',4.00,'01/01/2022','10/01/2022', '10/06/2022');

-- 3) Verificar se existem produtos com o data de validade vencida

select prod
from produtos
where Dtaval < '19/05/2022';


-- 4) Verificar que produtos foram fabricados nos meses de março e abril

select prod
from produtos
where month(Dtafab) = '03' or month(Dtafab) = '04';


-- 5) Verificar produtos com a data de fabricação do ano de 2019

select prod
from produtos
where year(Dtafab) = '2019';

-- 6) Calcular a data de validade dos produtos 90 dias depois de fabricados.

select Dtaval, dateadd(day, 90, Dtaval)  'Adiciona Dia'
from produtos;

select month(Dtaval + 90)'Mês da Data de Validade'
from produtos;

-- 7) Calcular a data de validade dos produtos 6 meses depois de fabricados

select Dtaval, dateadd(month, 6, Dtaval)  'Adiciona mes'
from produtos;

select month(Dtaval + 180)'Mês da Data de Validade'
from produtos;

-- 8) Calcular há quantos dias um produto entrou no estoque.

select datediff(dd,Dtaentrada, getdate()) 'Diferneça em dias'
from produtos;

-- 9) - Mostrar o preço de todos os produtos com data de validade superior a abril de 2018

select preco, prod
from produtos
where Dtaval > '01/04/2018';

-- 10) Mostrar os produtos fabricamos entre os dias 12 de março e 22 de abril.

select prod
from produtos
where Dtafab  BETWEEN  '12/03/2022' and '22/04/2022';

select prod
from produtos
where (month(Dtafab) = '03' or month(Dtafab) = '04') and (day(Dtafab) = '12' or day(Dtafab) = '22');


-- 11) Mostrar o produto mais antigo no estoque – data de entrada

select max(datediff(dd,Dtaentrada, getdate())) 'Diferença em dias'
from produtos;

-- 12) - Mostrar o produto mais novo – data de fabricação

select min(datediff(dd,Dtaentrada, getdate())) 'Diferença em dias'
from produtos;


-- 13) - Informe o total de produtos com validade vencida

select count (prod) 'Quantidade de produtos vencidos'
from produtos
where Dtaval < getdate();

-- 14) - Informe o valor total dos produtos com validade vencida

select sum (preco) 'soma dos valores dos produtos vencidos'
from produtos
where Dtaval < getdate();

-- 15) - Quais foram os produtos fabricados nesse ano?

select prod
from produtos
where year(Dtafab) = '2022';

-- 16) Quais foram os produtos que entraram no estoque esse ano
 
select prod
from produtos
where year(Dtaentrada) = '2022';


-- 17) Qual a média de preço dos produtos com validade vencida

select avg (preco) 'media dos valores dos produtos vencidos'
from produtos
where Dtaval < getdate();


