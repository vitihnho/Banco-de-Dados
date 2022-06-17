-- Avalia��o Tipo 1

-- Execute os scripts prontos abaixo e desenvolva os scripts solicitados
-- DESENVOLVA SOMENTE o que for solicitado

create database provatipo1;
use provatipo1;

create table farmacia(
codfar		int			not null,	-- c�digo da farm�cia
farmacia	varchar(30)	not null,	-- nome da farm�cia
contato		varchar(40)	null		-- nome do funcion�rio
primary key(codfar)
);

insert into farmacia values (1,'droganova','Antoniomar');
insert into farmacia values (2,'drogavelha','Antoniomiro');
insert into farmacia values (3,'drogamo�a','Antoniovaldo');
insert into farmacia values (4,'drogasil','Zeze');
insert into farmacia values (5,'farmasil','Zizo');
insert into farmacia values (6,'silfarma','Zuza');

create table remedios(
idrem	int			not null,	-- c�digo do rem�dio
remedio	varchar(30)	not null,	-- nome do rem�dio
valor	decimal(7,2)not null,	-- pre�o do rem�dio
dtval	datetime	not null,	-- data de validade do rem�dio
tarja	varchar(15)	null	
);

insert into remedios values (1131,'Maracugina',16.20,'31/12/2020','sem tarja');
insert into remedios values (1331,'Dorflex',3.58,'31/12/2022','preta');
insert into remedios values (1771,'Luftal',6.20,'31/12/2020','preta');
insert into remedios values (1999,'Merthiolate',14.95,'31/12/2022','sem tarja');
insert into remedios values (1131,'Biotonico',36.20,'31/12/2021','vermelha');
insert into remedios values (1331,'Lactopurga',23.58,'31/12/2029','vermelha');
insert into remedios values (1771,'Xarope',26.20,'31/12/2019','branca');
insert into remedios values (1999,'Pastilha',24.95,'31/12/2017','sem tarja');

-- 1
-- altera a estrutura da tabela farmacia
-- inserindo o campo telefone 

alter table farmacia
add telefone varchar(40) null;

-- 2 Mostrar(select) todos os rem�dios cadastrados
-- ordenados por nome do remedio 
-- se o pre�o for maior ou igual a 3 e menor ou igual a 16

select * 
from remedios
where valor >= 3 and valor <= 16
order by remedio;



-- 3
-- criar a tabela farmacia2 com a mesma estrutura da tabela farmacia
-- importar todos os registros com c�digo da farm�cia maior que 2

create table farmacia2(
codfar		int			not null,	
farmacia	varchar(30)	not null,
contato		varchar(40)	null,
telefone varchar(40) null,
primary key(codfar));

insert into farmacia2
select * from farmacia
where codfar > 2;

-- 4
-- alterar o nome de todos os funcion�rios da tabela farm�cia
-- para Antonio Antenor

update farmacia
set contato = 'Antonio Antenor';

-- 5
-- Mostrar uma ocorr�ncia de cada tarja dos rem�dios cadastrados

select distinct tarja from remedios;

-- 6 
-- Deletar todos os rem�dios de tarja amarela com pre�os entre R$ 5,00 e R$ 20,00
-- OBS. o fato de n�o ter nenhum rem�dio com essa tarja cadastrada
-- n�o impede o desenvolvimento do script

delete 
from remedios
where tarja = 'Amarela' and valor between 5 and 20;


-- 7
-- mostrar todos os rem�dios que tenham a letra M no nome
-- e estejam na lista de Maracugina, Merthiolate e Merc�rio

select * from remedios
where remedio like '%M%';

-- 8
-- mostrar todos os rem�dios com data de validade boa para consumo

select * from remedios
where dtval > '28/04/2022';

-- 9
-- Mostrar a quantidade de caracteres de cada nome de farmacia

select len(farmacia) 'Quantidade de Caracteres' from farmacia;


-- 10
-- crie a estrutura da tabela cursos com 3 campos
-- utilizando nessa estrutura primary key e unique

create table cursos(
idcurso		int				unique,
nome		varchar(40)		not null,
tema		varchar(25)		null,
primary key(nome));

-- crie a estrutura da tabela alunos com 5 campos
-- utilizando nessa estrutura primary key, foreign key e identity

create table alunos(
nome		varchar(40)		not null,
aluno		varchar(25)		not null,
raaluno		int				not null,
idaluno		int				identity,
idade		int				null,
foreign key(nome) references cursos(nome),
primary key(raaluno));

-- insira 2 registros em cada tabela
insert into cursos values(1,'Gastronomia','Cozinha');
insert into cursos values(2,'Astronomia','Estudo dos astros');

insert into alunos values('Gastronomia','Gilberto Borges',49938,19);
insert into alunos values('Astronomia','Alura Maximus',12365,null);



