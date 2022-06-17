use hospital;

--1--
select avg(salario) 'Media Salarial', cidade
from medicos
group by cidade;

--2--
select avg(salario) 'Media Salarial', especialidade
from medicos
group by especialidade;

--3--
select max(salario) 'Maior Salario', cidade, especialidade
from medicos
group by cidade, especialidade;

--4--
select min(salario) 'Menor Salario', especialidade, cidade
from medicos
group by especialidade, cidade;

--5--
select sum(salario) 'Soma Salario', cidade
from medicos
where cidade in('agudos','bauru')
group by(cidade);

--6--
select sum(salario) 'Soma Salario', cidade
from medicos
where salario between 1999 and 3999
group by(cidade);

--7--
select sum(salario) 'Soma Salario', cidade
from medicos
where cidade in('bauru','agudos') and salario between 1999 and 3999
group by(cidade);

--8--
select count(idmed) 'Quantidade de Medicos', especialidade
from medicos
group by(especialidade);

--9--
select count(idmed) 'Quantidade de Medicos', cidade
from medicos
where (salario between 1999 and 4999) and cidade in('jau','agudos','bauru')
group by(cidade);

--10--
select count(idmed) 'Quantidade de Medicos', sum(salario) 'Soma Salario', avg(salario) 'Media Salario',
max(idade) 'Maior Idade', min(idade) 'Menor Idade'
from medicos;

--11--
select count(idmed) 'Quantidade de Medicos', sum(salario) 'Soma Salario', avg(salario) 'Media Salario',
max(idade) 'Maior Idade', min(idade) 'Menor Idade', especialidade
from medicos
where salario >4500
group by(especialidade)
having especialidade != 'cardiologista';

--12--
create table padaria(
salgado varchar(50) not null,
tipo varchar(30) not null,
fornecedor varchar(60) not null,
preco decimal(6,2) not null,
);

insert into padaria values('Coxinha','Frito','Seu Alcides',5);
insert into padaria values('Fofinho','Frito','Gertrudes',3.50);
insert into padaria values('Enroladinho','Frito','Seu Alcides',4);
insert into padaria values('Hambúrguer','Assado','Gertrudes',7.50);
insert into padaria values('Pizza','Assado','Seu Alcides',4.50);
insert into padaria values('Empada','Assado','Pedro Bala',6);
insert into padaria values('Coxinha de Carne','Frito','Pedro Bala',5);
insert into padaria values('Esfiha','Assado', 'Gertrudes', 5);
insert into padaria values('Coxinha de Carne com Ovo','Frito', 'Pedro Bala',7.50);

select salgado, avg(preco) from padaria
group by salgado
having salgado != 'Empada';

select tipo, count(salgado) from padaria
group by tipo
having tipo != 'Laranja';

select salgado, sum(preco) from padaria
where preco > 2.0
group by salgado;

select salgado, max(preco) from padaria
where preco < 5 and preco > 3
group by salgado;

select salgado, min(preco) from padaria
where fornecedor = 'Pedro Bala'
group by salgado;