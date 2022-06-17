create database rev;

-- AULA 09 --

create table medicos(
Idmed	int	not null,
Medico	varchar(40)	not null,
Especialidade	varchar(20)	not null,
Salario	decimal(8,2)	not null,
Cidade	varchar(20)	not null,
Idade	int	null,
Dtadm	datetime	not null
primary key(idmed));

insert into medicos values (1,'Zenaide','urologista',2500,'bauru',52,'01/01/2000');
insert into medicos values (2,'Antenor','cardiologista',1500,'jau',NULL,'01/01/2020');
insert into medicos values (3,'Polinomia','ortopedista',3500,'bauru',57,'01/01/1999');
insert into medicos values (4,'Biafra','ortopedista',7500,'agudos',30,'31/10/2010');
insert into medicos values (5,'Welber','cardiologista',500,'bauru',38,'01/01/2000');
insert into medicos values (6,'Anpolina','clinico geral',5600,'agudos',70,'01/01/2020');
insert into medicos values (7,'Juan','cardiologista',500,'bauru',NULL,'15/12/2017');
insert into medicos values (8,'Hermes','clinico geral',2000,'agudos',78,'31/10/2010');
insert into medicos values (9,'Humbelina','pediatra',500,'jau',56,'31/10/2010');
insert into medicos values (10,'Josefa','pediatra',1000,'jau',65,'01/07/2020');
insert into medicos values (11,'Cristaldo','urologista',6600,'agudos',null,'01/01/2000');
insert into medicos values (12, 'Marta','urologista',1345.99,'agudos ',37,'01/01/2020');
insert into medicos values (13,'Carlos','urologista',3500,'são paulo',52,'01/01/2021');
insert into medicos values (14,'Joaquina','cardiologista',4500,'jau',NULL,'01/01/2022');
insert into medicos values (15,'Kaique','ortopedista',5500,'bauru',57,'01/01/2020');
insert into medicos values (16,'Bill','ortopedista',7500,'são paulo',30,'31/10/2021');
insert into medicos values (17,'Roque','cardiologista',5500,'bauru',38,'01/01/2022');
insert into medicos values (18,'Marildo','clinico geral',5600,'agudos',70,'01/01/2021');
insert into medicos values (19,'Mari','cardiologista',7500,'são paulo',NULL,'15/12/2017');
insert into medicos values (20,'Mirtes','clinico geral',8000,'agudos',78,'31/10/2020');
insert into medicos values (21,'Silvia','pediatra',5100,'jau',56,'31/10/2021');
insert into medicos values (22,'Marta','pediatra',8000,'são paulo',65,'01/07/2022');
insert into medicos values (23,'Cristina','urologista',6600,'agudos',null,'01/01/2021');
insert into medicos values (24,'Shirley','urologista',2345.99,'agudos ',37,'01/01/2020');
insert into medicos values (25,'Tildo','obstetra',3500,'são paulo',33,'01/01/2021');
insert into medicos values (26,'Tulio','cardiologista',4500,'jau',44,'01/01/2022');
insert into medicos values (27,'Tabata','obstetra',5500,'bauru',55,'01/01/2020');
insert into medicos values (28,'Thaina','ortopedista',7500,'são paulo',45,'31/10/2021');
insert into medicos values (29,'Rita','cardiologista',5500,'bauru',55,'01/01/2022');
insert into medicos values (30,'Rute','obstetra',5600,'agudos',61,'01/01/2021');
insert into medicos values (31,'Raquel','cardiologista',7500,'são paulo',29,'15/12/2017');
insert into medicos values (32,'Carla','clinico geral',8000,'agudos',30,'31/10/2020');
insert into medicos values (33,'Katarina','obstetra',5100,'jau',31,'31/10/2021');
insert into medicos values (34,'Giovani','pediatra',8000,'são paulo',45,'01/07/2022');
insert into medicos values (35,'Giovana','obstetra',6600,'agudos',46,'01/01/2021');
insert into medicos values (36,'Abigail','obstetra',2345.99,'agudos ',47,'01/01/2020');
insert into medicos values (37,'Dilso','obstetra',4500,'são paulo',51,'01/01/2021');
insert into medicos values (38,'Duilio','pediatra',4500,'jau',52,'01/01/2022');
insert into medicos values (39,'Duane','obstetra',6500,'bauru',53,'01/01/2020');
insert into medicos values (40,'Rui','ortopedista',7500,'são paulo',59,'31/10/2021');
insert into medicos values (41,'Rubens','cardiologista',9500,'bauru',60,'01/01/2022');
insert into medicos values (42,'Ruiz','obstetra',2600,'agudos',61,'01/01/2021');
insert into medicos values (43,'Bruno','pediatra',3500,'são paulo',70,'15/12/2017');
insert into medicos values (44,'Bruna','clinico geral',4000,'agudos',30,'31/10/2020');
insert into medicos values (45,'Rubia','obstetra',5100,'jau',20,'31/10/2021');
insert into medicos values (46,'Harry','pediatra',7000,'são paulo',30,'01/07/2022');
insert into medicos values (47,'Potter','urologista',8600,'agudos',46,'01/01/2021');
insert into medicos values (48,'Hermione','obstetra',4345.99,'agudos',47,'01/01/2020');

-- 1 --

select count(idmed)
from medicos;

-- 2 --
select count(distinct(Especialidade))
from medicos;

--3--
select convert(decimal(9,4), avg(salario))
from medicos;

--4--
select max(salario)
from medicos;

--5--
select min(salario)
from medicos
where cidade in('Agudos','Bauru');

--6--
select count(idmed)
from medicos
where Especialidade = 'Urologista';

--7--
select convert(decimal(7,2),avg(salario))
from medicos
where cidade in('Jau','Agudos');

--8--
select count(distinct(Especialidade))
from medicos
where cidade = 'Agudos';

--9--
select sum(salario)
from medicos
where idmed in (1,5,7);

--10--
select count(idmed)
from medicos
where cidade != 'Bauru' and salario < 2000;

--11--
select top 1 *
from medicos
order by salario desc;

--12--
select avg(salario)
from medicos
where (idade between 30 and 60) and cidade in ('Bauru','Jau');

--13--
select max(dtadm)
from medicos;

--14--
select min(dtadm)
from medicos;

--15--
select count(idmed)
from medicos
where dtadm between '01/01/2000' and '31/12/2000';

--16--
select count(idmed)
from medicos
where dtadm between '01/01/2000' and '31/12/2019';

--17--
select avg(salario)
from medicos
where (dtadm between '01/01/2020' and '31/12/2020') and cidade = 'Agudos';

--18--
select avg(salario)
from medicos

--19--
select sum(salario)
from medicos
where (salario > 2000 and cidade in ('Bauru','Jau')) and especialidade = 'Ortopedista';

--20--
select count(idmed)
from medicos
where cidade in ('Agudos','Bauru','Jau');

--21--
select count(idmed)
from medicos
where medico like '%r%';

select count(idmed)
from medicos
where cidade in ('Jau');

select count(idmed)
from medicos
where salario between 2150 and 5000;

select sum(salario)
from medicos
where medico like '%v%';

select sum(salario)
from medicos
where cidade in('Agudos','Bauru');

select sum(salario)
from medicos
where salario between 1500 and 3000;

select avg(salario)
from medicos
where medico like '%a';

select avg(salario)
from medicos
where cidade in('jau','bauru');

select avg(salario)
from medicos
where salario between 200 and 6000;

--AULA 10--

--1--
select avg(salario), cidade
from medicos
group by cidade;

--2--
select avg(salario), Especialidade
from medicos
group by Especialidade;

--3--
select max(salario),cidade,especialidade
from medicos
group by cidade,Especialidade;

--4--
select min(salario),especialidade, cidade
from medicos
group by Especialidade,cidade;

--5--
select sum(salario),cidade
from medicos
where cidade in('Bauru','Agudos')
group by(cidade);

--6--
select sum(salario), cidade
from medicos
where salario between 1999 and 3999
group by cidade;

--7--
select sum(salario), cidade
from medicos
where (cidade in ('Agudos','Bauru')) and salario between 1999 and 3999
group by cidade;

--8--
select count(idmed), especialidade
from medicos
group by Especialidade;

--9--
select count(idmed), cidade
from medicos
where (salario between 1999 and 4999) and cidade in ('Jau','Bauru','Agudos')
group by(cidade);

--AULA 11--

--1--
create table produtos(
id		int		not null,
nome	varchar(40)	not null,
preco	decimal(7,2) not null,
dtfab	datetime	not null,
dtent	datetime	not null,
dtval	datetime	not null);

--2--
insert into produtos values (1,'Cerveja DabrabA',5,'01/01/2022','10/01/2022', '10/06/2022');
insert into produtos values (2,'Refrigerante DUBAO',2.75,'01/10/2021','10/10/2021', '31/05/2022');
insert into produtos values (3,'Biscoito Dona Enaldina',3.50,'01/06/2021','10/06/2021', '10/01/2021');
insert into produtos values (4,'Sonho de Valsa',1.50,'01/01/2021','10/01/2021', '10/06/2021');
insert into produtos values (5,'Biscoito Isaura',6.50,'01/01/2021','10/01/2021', '10/06/2021');
insert into produtos values (6,'Maca',1.50,'01/01/2022','10/01/2022', '10/06/2022');
insert into produtos values (7,'Suco del Valle',1.50,'01/01/2022','10/01/2022', '10/06/2022');
insert into produtos values (8,'Danone',4.00,'01/01/2022','10/01/2022', '10/06/2022');

--3--
select nome
from produtos
where dtval < '02/06/2022';

--4--
select nome
from produtos
where month(dtfab) between '03' and '04'

--5--
select nome
from produtos
where year(dtfab) = '2019';

--6--
select dtval, dateadd(day,90,dtval)
from produtos;

--7--
select dtval, dateadd(month,06,dtval)
from produtos;

--8--
select datediff(dd,dtent,getdate())
from produtos;

--9--
select preco, nome
from produtos
where dtval > '01/04/2018';

--10--
select nome
from produtos
where dtfab between '12/03/2022' and '22/04/2022';

--11--
select max(datediff(dd,dtent,getdate()))
from produtos;

--12--
select min(datediff(dd,dtent,getdate()))
from produtos;

--13--
select count(id)
from produtos
where dtval < '02/06/2022';

--14--
select sum(preco)
from produtos
where dtval < '02/06/2022';

--15--
select nome
from produtos
where year(dtfab) = '2022';

--16--
select nome
from produtos
where year(dtent) = '2022';

--17--
select avg(preco)
from produtos
where dtval < '02/06/2022';

--AULA 12--

