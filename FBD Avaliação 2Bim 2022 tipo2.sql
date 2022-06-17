-- AVALIAÇÃO - FBD - 2º Bimestre - 02/06/2022 - TIPO 2
-- Leia a prova com atenção e analise atentamente as tabelas.
-- Desenvolva SOMENTE o que for solicitado no enunciado do exercício.
-- PROIBIDO editar ou apagar o enunciado.
-- Desenvolva o script SEMPRE abaixo do seu enunciado.
-- NÃO é necessário inserir registros para a resolução dos exercícios, BASTA desenvolver o script.
-- Cada questão vale 1 ponto

create database prova2;
use prova2;

create table medicos(
cod_medico		int			not null primary key identity,
nome			varchar(40)	not null,
especialidade	varchar(35)	not null,
salario			decimal(9,2)not null,
cidade			varchar(35)	not null
);

create table enfermeiros(
cod_enfermeiro	int			not null primary key identity,
nome			varchar(40)	not null,
data_admissao	datetime	not null,
salario			decimal(7,2)not null,
cidade			varchar(35)	not null,
idade			int			not null
);

create table pacientes(
cod_paciente	int			not null primary key identity,
nome			varchar(40)	not null,
cidade			varchar(35)	not null,
idade			int			not null,
sexo			char(1)		not null
);

create table consulta(
cod_consulta	int			not null primary key identity,
dtconsulta		datetime	not null,
cod_medico		int			not null,
cod_enfermeiro	int			not null,
cod_paciente	int			not null
)

-- 1 – Delete da tabela médicos os médicos cardiologistas ou urologistas
--     que moram em bauru ou osasco com salário entre 1999 e 3999.

delete from medicos
where (especialidade in ('cardiologista', 'urologista')) and (cidade in ('bauru','osasco')) and salario between 1999 and 3999;

-- 2 – Mostrar a soma dos salários dos enfermeiros agrupados por cidade, mas somente os enfermeiros
--     que morem em são paulo ou rio de janeiro e com salário entre 4999 e 6999.

select sum(salario), cidade
from enfermeiros
where cidade in ('São paulo','Rio de Janeiro') and salario between 4999 and 6999
group by cidade;


-- 3 – Mostrar o valor médio dos salários dos médicos agrupados por especialidade,
--     mas somente dos médicos que morem em bauru ou agudos
--     cuja especialidade não for obstetra.

select avg(salario), especialidade
from medicos
where cidade in ('Agudos','Bauru') and especialidade != 'Obstetra'
group by especialidade;


-- 4 – Mostrar nome e idade de todos os pacientes maiores de idade cujo nome comece com a letra M 
--     ou com a letra S ordenados em ordem alfabética.

select idade, nome
from pacientes
where (idade >= 18) and nome like '%M' or nome like '%S'
order by nome;

-- 5 – Mostrar todos os campos da tabela pacientes cujo código do paciente 
--     esteja na lista (110,130,150 e 190)
--     ordenados por cidade

select *
from pacientes
where cod_paciente in (110,130,150,190)
order by cidade;

-- 6 – Informe a quantidade de especialidades dos médicos disponíveis na cidade de agudos

select count(distinct(especialidade))
from medicos
where cidade in ('Agudos');

-- 7 – Relacionando as tabela consulta com médicos, enfermeiros e pacientes
--     mostar o nome do médico, o nome do enfermeiro e o nome do paciente
--     ordenando por médico

select m.nome 'Médico', e.nome 'Enfermeiro', p.nome 'Paciente'
from consulta c
inner join medicos m on m.cod_medico = c.cod_medico
inner join enfermeiros e on e.cod_enfermeiro = c.cod_enfermeiro
inner join pacientes p on p.cod_paciente = c.cod_paciente
order by m.nome;

-- 8 – Mostre cidade, especialidade e salário dos médicos agrupados por cidade e especialidade.

select cidade, especialidade, salario
from medicos
order by cidade, especialidade;


-- 9 – Alterar definitivamente a especialidade cirurgião para cirurgião-geral na tabela médicos.

update medicos
set especialidade = replace(especialidade,'cirurgião','cirurgião-geral');

-- 10 – Mostrar o valor médio do salário dos enfermeiros, o maior salário dos enfermeiros, 
--      o menor salário dos enfermeiros e a soma de todos os salários dos enfermeiros que moram em bauru 
--      e com idade entre 18 e 25 em um ÚNICO script.

select avg(salario)'Média Salário', max(salario)'Maior Salário', min(salario)'Menor Salário', sum(salario) 'Soma Salário'
from enfermeiros
where (cidade = 'Bauru') and idade between 18 and 25;






