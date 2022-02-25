-- Exercício 1 --
create database aula03;
use aula03;

create table clientes4(
codigo_cli	int				not null,
nome_cli	varchar(40)		not null,
fone_cli	varchar(18)		null,
primary key(codigo_cli,nome_cli));

-- Exercício 2 --
insert into clientes4 values (1,'José Augusto','7777-8888');
insert into clientes4 values (2,'Maria Josefa','3333-5646');

-- Exercício 3 --
select * from clientes4;

-- Exercício 4 --
drop table clientes4;

-- Exercício 5 --
create table clientes4(
codigo_cli	int				not null,
nome_cli	varchar(40)		not null,
fone_cli	varchar(18)		null,
cidade_cli	varchar(20)		null,
idade		int				not null
primary key(codigo_cli,nome_cli));

-- Exercício 6, 7, 8, 9 --
insert into clientes4 values (3,'Dagoberto','7897-9179','Agudos',19);
insert into clientes4 values (4,'Josefina',NULL,NULL,18);
insert into clientes4 values (3, 'Dagoberto',NULL,NULL,20);

-- Exercício 10 --
drop table clientes4;

-- Exercício 11 --
create table clientes4(
codigo_cli	int				identity,
nome_cli	varchar(40)		not null,
fone_cli	varchar(18)		not null,
cidade_cli	varchar(20)		null,
idade		int				not null
primary key(nome_cli,fone_cli));

-- Exercício 12, 13 --
insert into clientes4 values('Hugo Rafael','9999-8888','Agudos',19);
insert into clientes4 values('Teobaldo','1651-8888',NULL,19);

-- Exercício 14 --
select * from clientes4;

-- Exercício 15 --
insert into clientes4 values('Hugo Rafael','9999-8888',NULL,20);

-- Exercício 16 --
create database HOSPITAL;

-- Exercício 17 --
create table MEDICO(
id		int				identity,
nome	varchar(40)		not null,
email	varchar(40)		not null,
fone	varchar(40)		not null,
cargo	varchar(40)		not null,
cpf		varchar(15)		null,
primary key(nome));

create table PACIENTE(
num		int				identity,
nome	varchar(40)		not null,
idade	int				not null,
fone	varchar(40)		not null,
dtnasc	datetime		not null,
cpf		varchar(15)		not null,
primary key(nome,cpf));

create table CONSULTA(
num		int				identity,
dat		datetime		not null,
bloco	varchar(2)		not null,
medico	varchar(40)		not null,
paci	varchar(40)		not null,
valor	decimal(5,2)	null,
primary key(paci));

-- Exercício 18 --
insert into MEDICO values('Roberto','rob@gmail.com','1234-6364','Neurocirurgião',NULL);
insert into MEDICO values('Juan','juan@gmail.com','1651-6364','Legista','13513532156');

insert into PACIENTE values('Dom Quixote',20,'1235-5123','05/02/2003','1234651564');
insert into PACIENTE values('Zé Canela',40,'8956-5123','10/02/2003','1234567912');

insert into CONSULTA values('03/05/2023','A','Roberto','Dom Quixote',250);
insert into CONSULTA values('05/12/2024','C','Juan','Zé Canela',550);

-- Exercício 19, 20 --
insert into MEDICO values('Roberto','a@gmail.com','1244-5253','Oftalmologista',NULL);
insert into CONSULTA values('24/02/2022','B','Juan','Dom Quixote',250);
insert into PACIENTE values('Dom Quixote',25,'1356-1651','25/02/2003','1234651564');

select * from MEDICO;
select * from CONSULTA;
select * from PACIENTE;

-- Exercício 22 --

create database fib;

create table ficha(
cpf			varchar(12)		not null,
rg			varchar(10)		not null,
nome		varchar(40)		not null,
idade		int				not null,
peso		decimal(5,2)	not null,
altura		decimal(4,2)	not null,
chuteira	int				not null,
salario		decimal(7,2)	not null,
bonus		decimal(7,2)	not null,
desconto	decimal(5,2)	not null,
dtnasc		datetime		not null,
posicao		varchar(20)		not null,
clube		varchar(20)		not null,
ncamise		int				not null,
primary key(cpf));

insert into ficha values('123456789-90','98657234-X','José da Silva Xavier',20,78,1.80,48,2738.90,1000.00,32.90,'28/02/2019','Goleiro','Palmeiras',1);

insert into ficha values('537009518-90','24565165-X','Neymar Junior',31,65,1.85,42,9738.90,1500.00,0,'05/02/1986','Atacante','Santos',12);
insert into ficha values('546516565-91','53611655-X','Ronaldo Gaúcho',48,90,1.90,45,5755.90,1200.00,50.90,'03/09/2000','Lateral','Fluminense',10);
insert into ficha values('598453162-13','68165165-X','Selton Melo',23,58,1.75,32,1583.65,3000.00,0.90,'28/08/1999','Goleiro','Corinthians',1);
insert into ficha values('315651231-88','52161659-X','Volton Dali',18,65,1.85,43,5000.90,5000.00,80.90,'19/03/1756','Zagueiro','Palmeiras',15);

select * from ficha;




