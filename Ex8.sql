--1--
create table medicos(
nome		varchar(30)		not null,
espec		varchar(30)		not null,
id			int				not null,
salario		decimal(7,2)	null,
idade		int				not null,
ltrabalho	varchar(30)		not null,
sobrenome	varchar(30)		not null,
iniciais	varchar(4)		not null);

--2--
insert into medicos values(' Adalberto','Odontologia',14,6500,35,'Bauru','Santos','as');

insert into medicos values('Jornival ','Ortopedista',5,3250,23,'Agudos','seixas','js');

insert into medicos values('BEATRIZ','Cardiologia',35,9500,45,'Pederneiras','Silva','bs');

insert into medicos values('Genoveva ','Pediatria',2,2000,21,'Jaú','martins','gm');

insert into medicos values(' willian','Odontologia',4,4500,23,'Agudos','duarte','wd');  

--3--
select upper(nome)
from medicos;

--4--
select lower(sobrenome)
from medicos;

--5--
update medicos
set sobrenome = upper(sobrenome);

--6--
select * from medicos
order by trim(nome);


--7--
update medicos
set nome = 'Junin'
where substring(nome,1,1) != ' ';

--8--
select substring(espec,1,4) 'Iniciais', * from medicos;

--9--
update medicos
set iniciais = substring(espec,1,4);

--10--
select replace(nome,'BEATRIZ','BRIATRIZ') 'nome alterado'from medicos;

--11--
update medicos
set nome = replace(nome,'BEATRIZ','Ursolino');

--12--
update medicos
set sobrenome = 'URSO';

select * from medicos;

--13--
select lower(nome) 'Nome', upper(sobrenome) 'Sobrenome'from medicos;
select ltrim(nome), rtrim(nome) from medicos;
update medicos
set iniciais = substring(nome,1,2);
update medicos
set nome = replace(nome,'Genoveva','Valda');
update medicos
set nome = stuff(' ',1,3,'CACILDES');