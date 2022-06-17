use hospital;

create table medicos(
Idmed int not null,
Medico varchar(40) not null,
Especialidade varchar(20) not null,
Salario decimal(8,2) not null,
Cidade varchar(20) not null,
Idade int null,
Dtadm datetime not null
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
insert into medicos vales (40,'Rui','ortopedista',7500,'são paulo',59,'31/10/2021');
insert into medicos values (41,'Rubens','cardiologista',9500,'bauru',60,'01/01/2022');
insert into medicos values (42,'Ruiz','obstetra',2600,'agudos',61,'01/01/2021');
insert into medicos values (43,'Bruno','pediatra',3500,'são paulo',70,'15/12/2017');
insert into medicos values (44,'Bruna','clinico geral',4000,'agudos',30,'31/10/2020');
insert into medicos values (45,'Rubia','obstetra',5100,'jau',20,'31/10/2021');
insert into medicos values (46,'Harry','pediatra',7000,'são paulo',30,'01/07/2022');
insert into medicos values (47,'Potter','urologista',8600,'agudos',46,'01/01/2021');
insert into medicos values (48,'Hermione','obstetra',4345.99,'agudos',47,'01/01/2020');

--1--
select count(idmed) 'Total de Medicos' from medicos;

--2--
select count(idmed) 'Total de Especialistas'
from medicos
where especialidade != 'clinico geral';

--3--
select convert(decimal(9,2), avg(salario))
from medicos;

--4--
select max(salario)
from medicos;

--5--
select min(salario)
from medicos
where cidade = 'Agudos' or cidade = 'Bauru';

--6--
select count(idmed) 'Total de Urologistas'
from medicos
where especialidade = 'Urologista';

--7--
select avg(salario)
from medicos
where cidade = 'Jau' or cidade = 'Agudos';

--8--
select distinct(count(especialidade))
from medicos
where cidade = 'Agudos' or cidade = 'Bauru';

--9--
select sum(salario)
from medicos
where idmed = 1 or idmed = 5 or idmed = 7;

--10--
select count(idmed)
from medicos
where cidade != 'bauru' and salario < 2000;

--11--
select salario
from medicos
order by salario DESC;

--12--
select avg(salario) 'Media salarial'
from medicos
where (idade between 30 and 60) and cidade = 'Bauru' or cidade = 'jau';

--13--
select max(dtadm)
from medicos;

--14--
select min(dtadm)
from medicos;

--15--
select count(idmed)
from medicos
where dtadm >= '01/01/2000' and dtadm <= '31/12/2000';

--16--
select count(idmed)
from medicos
where dtadm between '01/01/2000' and '01/01/2019';

--17--
select avg(salario)
from medicos
where (dtadm between '01/01/2000' and '31/12/2000') and cidade = 'Agudos';

--18--
select avg(salario)
from medicos
where dtadm between '01/01/2000' and '31/12/2020';

--19--
select sum(salario)
from medicos
where salario > 2000 and (cidade = 'Bauru' or cidade = 'jau') and especialidade	= 'Ortopedista';

--20--
select count(dtadm)
from medicos
where cidade = 'Bauru' or cidade = 'Jau' or cidade = 'Agudos';

--21--
--a--
select count(idmed)
from medicos
where especialidade like '%o%';

select sum(salario)
from medicos
where medico like '%a';

select avg(salario)
from medicos
where medico like '%b%';

--b--
select sum(salario)
from medicos
where idmed in(5,9);

select count(idmed)
from medicos
where especialidade in('Urologista','Cardiologista');

select avg(salario)
from medicos
where dtadm in('01/01/2000','31/05/2018');

--c--
select avg(salario)
from medicos
where idmed between 5 and 9;

select count(idmed)
from medicos
where salario between 2500 and 9000;

select sum(salario)
from medicos
where idmed between 10 and 25;

