create database aula06;

--1--
create table fornecedor(
numer		int				identity,
idfor		int				not null,
nome		varchar(30)		unique,
ende		varchar(30)		not null,
dono		varchar(30)		not null,
venccon		datetime		not null,
primary key(idfor));
--drop table fornecedor;
--2--
create table produtos(
idpro		int				not null,
nome		varchar(30)		not null,
idfor		int				not null,
preco		decimal(6,2)	not null,
foreign key(idfor) references fornecedor(idfor),
primary key(idpro));

--3--
insert into fornecedor values(1,'Nestle','Rua das Amoras','Zeca Pagodinho','25/12/2035');
insert into fornecedor values(2,'Garoto','LepreTchau','Davi Carvalho','12/08/2023');

insert into produtos values(1,'Bom-Bom',2,6.99);
insert into produtos values(2,'Suflar',1,3.99);

--4--
alter table fornecedor
add tipo varchar(40) null, especialidade varchar(30) null;

alter table produtos
add dtven datetime	null, qtd int null;

--5--
alter table produtos
drop column dtven, qtd;

alter table fornecedor
drop column tipo, especialidade;

--6--
alter table produtos
alter column nome	varchar(60)	not null;

alter table fornecedor
alter column ende varchar(15) not null;

--7--
drop table produtos, fornecedor;

--8--
create table fornecedor(
numer		int				not null,
idfor		int				not null,
nome		varchar(30)		not null,
ende		varchar(30)		not null,
dono		varchar(30)		not null,
venccon		datetime		not null);
drop table fornecedor;

--9--
insert into fornecedor values(1,1,'Nestle','Rua das Amoras','Zeca Pagodinho','25/12/2035');
insert into fornecedor values(2,2,'Garoto','LepreTchau','Davi Carvalho','12/08/2023');
insert into fornecedor values(3,3,'BomBril','Vila Ka','Jó Soares','30/01/2035');
insert into fornecedor values(4,4,'Ype','Agudos','Drauzio Varela','15/05/2003');
insert into fornecedor values(5,5,'Panco','Morro da Lebre','Kevin','12/12/2012');
insert into fornecedor values(6,6,'Dell','Vale do simplicio','Seu juca','05/06/2023');

--10--
delete
from fornecedor
where idfor > 2 and idfor < 4 and ende = 'Agudos';

--11--
select * from fornecedor;

--12--
delete
from fornecedor;

--13--
insert into fornecedor values(1,1,'Nestle','Rua das Amoras','Zeca Pagodinho','25/12/2035');
insert into fornecedor values(2,2,'Garoto','LepreTchau','Davi Carvalho','12/08/2023');
insert into fornecedor values(3,3,'BomBril','Vila Ka','Jó Soares','30/01/2035');
insert into fornecedor values(4,4,'Ype','Agudos','Drauzio Varela','15/05/2003');
insert into fornecedor values(5,5,'Panco','Morro da Lebre','Kevin','12/12/2012');
insert into fornecedor values(6,6,'Dell','Vale do simplicio','Seu juca','05/06/2023');

--14--
select distinct ende from fornecedor;

--15--
select * 
from fornecedor
order by nome;

--16--
select * 
from fornecedor
order by ende;

--17--
select * 
from fornecedor
order by nome, ende;

--18--
select *
from fornecedor
order by idfor, ende;

--19--
select * 
from fornecedor
order by nome,idfor, ende;

--20--
alter table fornecedor
add primary key(nome);

--21--
create database hospital;

--22--
create table medicos(
nome		varchar(30)		not null,
espec		varchar(30)		not null,
id			int				not null,
salario		decimal(7,2)	not null,
idade		int				not null,
ltrabalho	varchar(30)		not null);

insert into medicos values('Paulo Muzy','Tudo',1,9500.99,29,'Barra da Tijuca');
insert into medicos values('Everson Claudio','Ortopedia',12,5500.99,46,'Bauru');
insert into medicos values('Renato Crespo','Cardiologia',35,2350.89,23,'Agudos');
insert into medicos values('Dagoberto','Urologia',15,15000,65,'Borebi');
insert into medicos values('Everson Laex','Pediatria',3,7592.45,30,'Brasilia');
insert into medicos values('Cesar Russomano','Neurologia',45,7593.99,80,'São Paulo');
insert into medicos values('Cesar Russomano','Neurologia',45,7593.99,80,'São Paulo');

--23--
create table medicos_copia(
nome		varchar(30)		not null,
espec		varchar(30)		not null,
id			int				not null,
salario		decimal(7,2)	not null,
idade		int				not null,
ltrabalho	varchar(30)		not null);

insert into medicos_copia
select * from medicos;
where espec = 'Ortopedia' or espec = 'Cardiologia';

--24--
delete
from medicos_copia
where espec = 'Cardiologia';

--25--
select distinct espec from medicos; 

--26--
select *
from medicos
order by nome;

select *
from medicos
order by espec;

select *
from medicos
order by espec, nome;

select *
from medicos
order by salario;

select *
from medicos
order by espec, salario;

--27--
select *
from medicos
where salario > 1000 and salario < 2000;

--28--
select *
from medicos
where espec = 'Ortopedia' or espec = 'Cardiologia';

--29--
delete
from medicos_copia;

--30--
select *
from medicos
where salario >= 1500 and ltrabalho = 'Bauru';

--31--
select *
from medicos
where salario < 2000 and (ltrabalho = 'Jau' or ltrabalho = 'Bauru');

--32--
select distinct ltrabalho from medicos;
