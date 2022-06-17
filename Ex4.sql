 -- Exerc 1 --

 create database aula04;

 create table pessoa(
 id_pessoa	int			identity,
 nome		varchar(40)	not null,
 fone		varchar(20)	null,
 email		varchar(40)	null,
 primary key(id_pessoa));

 create table carro(
 id_carro	int			identity,
 marca		varchar(40)	not null,
 modelo		varchar(40)	not null,
 id_pessoa	int			not null,
 primary key(id_carro),
 foreign key(id_pessoa) references pessoa(id_pessoa));

 create table gravadora(
 cod_gravadora	int				not null,
 gravadora		varchar(25)		not null,
 telefone		varchar(20)		null,
 primary key(cod_gravadora));

 -- Exerc 2/3--
insert into gravadora values(1,'GBR',null);
insert into gravadora values(1,'ABC',null);

 create table cd(
 cod_cd				int			identity,
 cod_gravadora		int			not null,
 banda				varchar(40)	not null,
 nome_cd			varchar(40)	not null,
 data_lancamento	datetime	not null,
 primary key(cod_cd),
 foreign key(cod_gravadora) references gravadora(cod_gravadora));

create table cd2(
cod_cd				int				identity,
cod_gravadora		int				null,
nome_cd				varchar(40)		not null,
data_lancamento		datetime		not null,
quantidade			int				default 1,
primary key(cod_cd));

-- Exerc 4 --

create table ex4(
id		int			not null,
nome	varchar(10)	not null,
primary key(id,nome);

insert into ex4 values(1,'Victor');
insert into ex4 values(1,'Victor');

-- Exerc 5 --

create table exx5(
id		int			not null,
nome	varchar(10)	not null,
primary key(id));

create table ex5(
id		int			not null,
nome	varchar(10)	null,
idade	int			not null,
foreign key(id) references exx5(id));

insert into exx5 values(1,'Victor');
insert into ex5 values(2,'Joao',17);

-- Exerc 6 --

create table fornecedores(
codfor		int			not null,
nome		varchar(35)	not null,
fone		varchar(20)	not null,
primary key(codfor));

-- Exerc 7 --

create table produtos(
codpro		int				not null,
codfor		int				not null,
produto		varchar(20)		not null,
preco		decimal(5,2)	not null,
primary key(codpro),
foreign key(codfor) references fornecedores(codfor));

-- Exerc 8 --

insert into fornecedores values(1,'Ambev','14998466544');
insert into fornecedores values(2,'Dexco','14998635302');

-- Exerc 9 --

insert into produtos values(1,1,'Brahma Lata',12.50);
insert into produtos values(2,1,'Coca 2L',7.50);
insert into produtos values(3,2,'Madera',10.99);

-- Exerc 10 --

insert into produtos values(1,'Dolly',1.35);

-- Exerc 11 --

insert into produtos values(null,2,'Mais madera',9.99);

-- Exerc 12 --

drop table fornecedores;

-- Exerc 13 --

create table ex13(
cpf		varchar(15)		unique,
id		int				not null,
primary key(id));

-- Exerc 14 --

create table exx13(
id		int				not null,
rg		varchar(12)		unique,
nome	varchar(30)		not null,
primary key(nome),
foreign key(id) references ex13(id));

-- Exerc 15 --

create table ex15(
qtd		int			default 1,
estado	varchar(2)	check(upper(estado) = 'SP' or upper(estado) = 'MG'));

-- Exerc 16 --

create table ex16(
nome		varchar(40)		unique,
sexo		varchar(1)		check(upper(sexo) = 'M' or upper(sexo) = 'F'),
idade		int				default 15);

insert into ex16 values('Bernardo','M',default);
insert into ex16 values('Bornido','M',default);
insert into ex16 values('Benescio','F',default);

-- Exerc 17 --

alter table ex16
add cpf		varchar(15)		null;


alter table ex16
add rg		varchar(15)		null;

-- Exerc 18 --

alter table ex16
drop column cpf;


alter table ex16
drop column rg;

-- Exerc 19 --

alter table ex16
alter column	nome	varchar(45);

alter table ex16
alter column	sexo	varchar(10);

-- Exerc 20 --

delete from ex16;

-- Exerc 21 --

drop table ex15;

-- Exerc 22 --

drop database aula04;


