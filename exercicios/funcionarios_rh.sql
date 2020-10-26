#criar e selecionar banco de dados
create database db_funcionarios;
use db_funcionarios;
#criar tabela funcionarios
create table funcionarios (
	id int not null auto_increment,
	nome varchar(30) not null,
	idade tinyint,
	area enum ('Adm','TI','Engenharia','Produção'),
	salario decimal (8,2),
	primary key (id));
 
#inserindo dados na tabela
 insert into funcionarios (nome,idade,area,salario) values 
	('Evandro',20,'Adm',2500.50),
	('Gabriele',14,'TI',16500.40),
	('Claudio',42,'Produção',1045.70),
	('Tatiane',30,'Engenharia',6300.50),
	('Pedro',19,'TI',850.40);
 
#salarios maiores do que 2000
select * from funcionarios where salario > 2000;  
#salarios menores do que 2000
select * from funcionarios where salario < 2000;  
#atualizando a coluna 'salario' da tabela 'funcionarios' no id 5 (no caso, Pedro)
	update funcionarios 
		set salario = 4500.33 
		where id = 5;
    
    
    
