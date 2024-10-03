create database heloBD;

use heloBD;

create table departamentos(
	id int auto_increment primary key,
    nome varchar(100),
    bloco varchar(50),
    data_criacao date
);

create table empregados(
	id int auto_increment primary key,
    nome varchar(100),
    data_admissao date,
    salario decimal(10,3),
    id_departamento int,
    foreign key (id_departamento) references departamentos (id)
);

insert into departamentos(nome,bloco,data_criacao) values
('tecnologia','Bloco A','2002-09-09'),
('saude','Bloco B','2000-12-12'),
('marketing','Bloco C','1999-09-30');

insert into empregados(nome,data_admissao,salario,id_departamento) values
('Carlos','2020-02-02','2500','3'),
('Julia','2020-02-02','3500','2'),
('Maria','2025-09-09','4000','3');

select id_departamento, count(*) as Contas from empregados group by id_departamento;
select * from empregados order by id_departamento desc;
select * from empregados order by data_admissao desc;
