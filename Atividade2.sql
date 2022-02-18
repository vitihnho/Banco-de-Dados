use fib2022;

-- exercício 1
create table facul(
mat		varchar(5)		not null,
nome	varchar(20)		not null,
ende	varchar(30)		not null,
cid		varchar(20)		not null,
cod		varchar(2)		not null,
primary key(mat));

insert into facul values('10001','Juninho',
'Rua Esmeralda', 'Bauru', '01');
insert into facul values('10002','Zezinho',
'Rua Yesha', 'Agudos', '02');
insert into facul values('10003','Luizinho',
'Rua Backstage', 'Sao Paulo', '03');
insert into facul values('10004','Ronaldinho',
'Rua Mercedes', 'Bauru', '04');
insert into facul values('10005','Robinho',
'Rua Madri', 'Agudos', '05');
insert into facul values('10006','Jaiminho',
'Rua Inhami', 'Bauru', '06');

select * from facul;

-- exercício 2

create table note(
produto		varchar(20) not null,
marca		varchar(20) null,
cor			varchar(15) null,
preco		decimal(9,3) not null,
quantidade	int				not null,
vtotal		decimal(9,3)	not null,
dtfab		datetime		not null
);

insert into note values('Mouse','Dell','Preto',22.99,1,22.99,
'01/01/2021');
insert into note values('Teclado','Microsoft','Prata',17.45,2,34.90,
'02/01/2021');
insert into note values('HD','Wester Digital',null,199.99,3,599.97,
'03/01/2021');
insert into note values('Monitor','Philips','Branco',459,4,1836,
'04/01/2021');
insert into note values('Placa de Video','Philips',null,999,5,4995,
'05/01/2021');
insert into note values('Mouse Pad',null,'Azul',15,6,90,
'06/01/2021');

-- Exercício 3

create table produtos(
produto varchar(25) not null,
cor		varchar(20)	null,
tamanho	varchar(2)	null,
preco	decimal(7,3) not null,
primary key(produto)
);

insert into produtos values('Camisa','Azul','GG',99.99);
insert into produtos values('Calca','Preto','G',139.99);
insert into produtos values('Saia','Vermelho','M',200);
insert into produtos values('Bone',null,null,70);
insert into produtos values('Cinto','Preto','P',27);
insert into produtos values('Batom','Vermelho',null,9.99);

select * from produtos;

create table mat(
id		int			identity,
nome	varchar(30)	not null,
dtnasc	datetime	null,
fone	varchar(16)	null,
cpf		varchar(11)	null,
cep		varchar(9)	null
);


insert into mat values('José João Ortigoza','20/10/1970','01498877-6644',
'123345678','17120-000');
insert into mat values('Maria Mariana Santos',null,null,null,'01111-998');
insert into mat values('Antonio Tiburcio Silva','01/01/2000','0143262-8890',
'987789789-1','32998-199');
insert into mat values('Jana Antonia Pereira','30/10/1999',null,'3456781239',null);
insert into mat values('Durval da Silva',null,null,null,null);
insert into mat values('Durvalina das Dores','21/12/2020',null,
'081666787-1','12345-123');


select * from mat;