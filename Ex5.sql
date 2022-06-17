-- 1 --
create database aula5;

-- 2 --
create table produtos(
codigo	int			not null,
produto	varchar(30)	not null,
preco	decimal(8,2) not null,
qtd		int			not null,
dtval	datetime	not null
primary key(codigo));

-- 3 --
insert into produtos values(1,'Banana',6.20,15,'26/03/2022');
insert into produtos values(2,'Caju',5.40,35,'12/05/2022');
insert into produtos values(3,'Pera',3.75,5,'13/01/2023');
insert into produtos values(4,'Abacate',7.90,30,'10/04/2024');
insert into produtos values(5,'Melancia',8.65,45,'26/02/2026');

-- 4 --
create table produtos2(
codigo	int			identity,
produto	varchar(30)	not null,
preco	decimal(8,2) not null
primary key(codigo));

-- 5 --
insert produtos2(produto,preco)
select produto,preco from produtos;

-- 6 --
create table produtos3(
codigo	int			not null,
produto	varchar(30)	not null,
preco	decimal(8,2) not null,
qtd		int			not null,
dtval	datetime	not null
primary key(codigo));

-- 7 --
insert produtos3
select * from produtos;

-- 8 --
create table produtos4(
codigo	int			not null,
produto	varchar(30)	not null,
preco	decimal(8,2) not null,
qtd		int			not null,
dtval	datetime	not null
primary key(codigo));

-- 9 --
insert produtos4
select * from produtos
where preco < 100;

-- 10 --
update produtos
set preco = (preco/2)
where qtd < 100;

select * from produtos;

-- 11 --
update produtos
set preco = 0
where dtval < '17/03/2022';

-- 12 --
update produtos
set produto = 'NESCAU';

-- drop table produtos;
-- 13 --
insert produtos
select * from produtos3;

-- 14 --
update produtos
set preco = 100
where codigo >= 2 and codigo <= 4;

-- 15 --
update produtos
set dtval = '31/12/2021'
where preco > 0;

-- 16 --
drop table produtos2, produtos3, produtos4;

-- 17 --
alter table produtos
add marca varchar(20) not null;

alter table produtos
add marca varchar(20) null;

-- 18 --
alter table produtos
alter column marca varchar(15) null;

-- 19 --
alter table produtos
drop column preco;

-- 20 --
delete from produtos;

-- 21 --
drop database aula5;