create database exerc;
use exerc;

create table proprietario(
	nome_prop	varchar(40)		not null,
	id_imovel	int				not null
);

insert into proprietario values('Ronaldo',1);

create table imovel(
	nome_prop	varchar(40)		not null,
	tipo		varchar(25)		not null,
	valor		decimal(7,2)	not null,
	id_imovel	int				not null
);

insert into imovel values('Adalberto','Casa',95000,1);

create table corretor(
	nome_corr	varchar(40)		not null,
	id_imovel	int				not null
);

insert into corretor values('Jose Bezerra',1);

create table inquilino(
	nome_inq	varchar(40)		not null,
	id_imovel	int				not null
);

insert into inquilino values('Vitinho do SUS',1);

create table aluguel(
	nome_prop	varchar(40)		not null,
	tipo		varchar(25)		not null,
	valor		decimal(7,2)	not null,
	nome_corr	varchar(40)		not null,
	nome_inq	varchar(40)		not null,
	id_imovel	int				not null
);

insert into aluguel values('Roberto','Apartamento',85000,'Joana','Juca',1);
insert into aluguel values('Ronaldo','Apartamento',85000,'Joana','Juca',1);

select *
from aluguel a
inner join proprietario p
on a.id_imovel = p.id_imovel;

create database exerc2;
use exerc2;

create table funcionario(
ID_func		int				not null,
nome		varchar(30)		not null,
primary key(ID_func));

insert into funcionario values(1,'Junin');

create table ambulancia(
ID_amb		int				not null,
tipo		varchar(20)		not null,
primary key(ID_amb));

insert into ambulancia values(1,'UTI');

create table equipe(
ID_eq		int				not null,
nomeeq		varchar(40)		not null,
ID_amb		int				not null,
primary key(ID_eq),
foreign key(ID_amb) references ambulancia(ID_amb));

insert into equipe values(1,'Salva-Vidas',1);

create table coordenadas(
ID_coord	int				not null,
latitude	decimal(6,2)	not null,
longitude	decimal(6,2)	not null,
primary key(ID_coord));

insert into coordenadas values(1,10.50,1115.56);

create table chamado(
ID_cham		int				not null,
ID_func		int				not null,
solic		varchar(25)		not null,
ID_eq		int				not null,
ID_coord	int				not null,
foreign key(ID_func)	references funcionario(ID_func),
foreign key(ID_eq)		references equipe(ID_eq),
foreign key(ID_coord)	references coordenadas(ID_coord));

insert into chamado values(1,1,'Zeca',1,1);

select * from chamado c
inner join funcionario f on f.ID_func = c.ID_func
inner join equipe e on e.ID_eq = c.ID_eq
inner join coordenadas co on co.ID_coord = c.ID_coord;

create database exerc3;
use exerc3;

create table aluno(
mat		int		not null,
nomea	varchar(40)	not null);

insert into aluno values(101,'Ana');

insert into aluno values(102,'Alessandra');

insert into aluno values(103,'Adriana');

insert into aluno values(104,'Luísa');

insert into aluno values(105,'Rodrigo');

create table materia(
id		int		not null,
nome	varchar(40)	not null);

insert into materia values(1,'Português');
insert into materia values(2,'Inglês');
insert into materia values(3,'História');
insert into materia values(4,'Geografia');
insert into materia values(5,'Biologia');


create table curso(
mat		int		not null,
idmat	int		not null,
nota	decimal(6,2)	not null);

insert into curso values(101,1,7);
insert into curso values(101,2,7.2);
insert into curso values(102,1,8);
insert into curso values(102,3,7.5);
insert into curso values(102,4,9.3);
insert into curso values(103,1,9.1);
insert into curso values(103,2,8.7);
insert into curso values(103,3,8.1);
insert into curso values(103,4,7.5);
insert into curso values(104,2,7.7);

select nomea, nome, nota
from curso c
inner join aluno a on c.mat = a.mat
inner join materia m on c.idmat = m.id;


