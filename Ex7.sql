--1--
create table medicos(
nome		varchar(30)		not null,
espec		varchar(30)		not null,
id			int				not null,
salario		decimal(7,2)	null,
idade		int				not null,
ltrabalho	varchar(30)		not null);

insert into medicos values('Paulo Muzy','Tudo',1,9500.99,29,'Barra da Tijuca');
insert into medicos values('Everson Claudio','Ortopedia',12,5500.99,46,'Bauru');
insert into medicos values('Renato Crespo','Cardiologia',35,2350.89,23,'Agudos');
insert into medicos values('Dagoberto','Urologia',15,15000,65,'Borebi');
insert into medicos values('Everson Laex','Pediatria',3,7592.45,30,'Brasilia');
insert into medicos values('Cesar Russomano','Neurologia',45,7593.99,80,'São Paulo');
insert into medicos values('Cesar Russomano','Neurologia',45,7593.99,80,'São Paulo');
insert into medicos values('Guilherme na vara','Odontologia',69,null,10,'Agudos');
insert into medicos values('Dagoberto','Urologia',15,15000,65,'Borebi');
insert into medicos values('Alexander','Pediatria',3,null,30,'Brasilia');
insert into medicos values('Cesar Russomano','Neurologia',45,7593.99,80,'São Paulo');
insert into medicos values('Julio Cesar','Neurologia',45,null,80,'São Paulo');

--2--
select nome, salario
from medicos
where salario IS null;

--3--
select nome, salario
from medicos
where salario is not null;

--4--
select nome, salario
from medicos 
where salario >= 1000 and salario <= 2000;

--5--
select nome
from medicos
where nome like 'j%';

select nome
from medicos
where nome like 'juan%';

select nome
from medicos
where nome like '_u%';

select nome
from medicos
where nome like '%a%';

--6--
select nome
from medicos
where id in(1,4,8);

--7--
select nome, salario, salario * 1.10 as 'Salario Reajustado'
from medicos;

select nome, salario, salario * 1.10 as 'Salario Reajustado'
from medicos
where id = 1;

select nome, salario, salario * 1.10 as 'Salario Reajustado'
from medicos
where espec = 'Ortopedia';

select nome, salario, salario * 1.10 as 'Salario Reajustado'
from medicos
where espec in('Ortopedia','Cardiologia');

select nome, salario, salario * 1.10 as 'Salario Reajustado'
from medicos
where salario > 2000 and ltrabalho = 'Bauru';

select nome, salario, salario * 1.10 as 'Salario Reajustado'
from medicos
where (ltrabalho = 'Bauru' or ltrabalho = 'Jau') and salario < 1000;

--8--
select top 2 *
from medicos
order by espec;

--9--
select *
from medicos
where id in(1,5,8,9,3,65);

select *
from medicos
where nome like '%p%';

select *
from medicos
where salario between 5000 and 7500;






