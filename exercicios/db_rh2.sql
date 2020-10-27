
#criando database
create database db_rh2;
use db_rh2;

#criando tabela de cargos 

create table tb_cargo (
	id_cargo int not null auto_increment primary key,
    nome_cargo varchar(30) not null,
    salario decimal (7,2));
    
#criando tabela funcionarios
    
create table tb_funcionario (
	id_funcionario int not null auto_increment primary key,
    nome_funcionario varchar(30),
    idade tinyint,
    data_ingresso date,
    area enum ('Adm','TI','Engenharia','Produção'),
    id_cargo int,
    constraint fk_cargo foreign key (id_cargo) references tb_cargo (id_cargo));
    
#inserindo 5 cargos    
insert into tb_cargo (nome_cargo,salario) values 
	("Administrador Senior",12500.32),  
	("Desenvolvedor Java Junior",4000),
	("Engenheiro(a) Mecanico(a)",7500.32), 
	("Auxiliar de Produçao",1560.32),  
	("Tecnico de Produção",3200.32);
    
#inserindo 15 funcionarios na tabela    
insert into tb_funcionario (nome_funcionario,idade,data_ingresso,area,id_cargo) values
	("Josiane",27,"2020-06-23","Adm",1),
	("José",33,"2015-06-23","Produção",5),
	("Pedro",21,"2020-01-23","TI",2),
	("Kassiane",25,"2019-06-23","Engenharia",3),
	("Claudio",44,"2000-02-22","Produção",5),
	("Eduarda",18,"2020-05-23","Produção",4),
	("Eduardo",19,"2020-03-12","Produção",4),
	("Clarice",23,"2019-03-21","Adm",1),
	("Caio",29,"2020-06-21","TI",2),
	("Edson",55,"1998-06-04","Produção",5),
	("Clara",20,"2020-01-01","Engenharia",3),
	("Gabriel",24,"2018-04-22","Engenharia",3),
	("Gabrielle",26,"2019-06-23","TI",2),
	("Higor",18,"2020-05-23","Adm",1),
	("Alexia",30,"2019-12-23","TI",2);
    
#selecione todos os funcionarios faça um join com a tabela cargo e mostre a tabela com os cargos relacionados aos funcionarios e os salarios maiores que 2000
#inner join junta os dados das duas tabelas, no caso quero associar o "id_cargo",para identificar o cargo;
select * from tb_funcionario
inner join tb_cargo 
where tb_funcionario.id_cargo = tb_cargo.id_cargo and salario > 2000;
    
#similar a anterior,porém, com salarios entre 1000 e 2000;
select * from tb_funcionario
inner join tb_cargo 
where tb_funcionario.id_cargo = tb_cargo.id_cargo and (salario <= 2000 and salario >= 1000 );
  
#Similar as anteriores, porém, com filtro de nome. Aparecer somente nomes que começam com "C". 
#Para nomes que começam com caracter X: "like X%"
#Para nomes que terminam com caracter X: "like %X"
#Que contenham X em qqr lugar da palavra: "like %X%"
select * from tb_funcionario
inner join tb_cargo 
where tb_funcionario.id_cargo = tb_cargo.id_cargo and nome_funcionario like "C%";
