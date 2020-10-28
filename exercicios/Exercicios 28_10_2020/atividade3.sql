#Criação e uso das database
create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

#Criar tabela de categoria
create table tb_categoria (
	id_categoria int not null primary key auto_increment,
    nome_categoria varchar(20),
    tipo_categoria varchar(25));
    
#Criar tabela de cursos    
create table tb_cursos (
	id_cursos int not null primary key auto_increment,
    nome_curso varchar(35) not null,
    duracao_anos int,
    preco_curso decimal (6,2),
    empregabilidade_porcentagem int,
    professor varchar(30),
    id_categoria int,
    constraint fk_categoria foreign key (id_categoria) references tb_categoria (id_categoria));

#Inserir categorias
insert into tb_categoria (nome_categoria,tipo_categoria) values
	('Java','Programação'),
	('Python','Programação'),
	('Photoshop','Web Design'),
	('AutoCAD','Engenharia'),
	('mySQL','Banco de Dados');
    
 #Inserir cursos  
insert into tb_cursos(nome_curso, duracao_anos, preco_curso, empregabilidade_porcentagem, professor, id_categoria) values
	('Java Developer Full Stack',2,8700.30,95,'Dr. Carvalho',1),
	('Python Developer Full Stack',2,9700.30,98,'Dr. Einstein',2),
	('Cientista de Dados em Python',1,5700.30,99,'Dr. Carvalho',2),
	('Cientista de Dados em Java',2,7700.30,90,'Dr. Enrique',1),
	('Web Design',1,37.30,65,'Dra. Gabrielle',3),
	('AutoCAD Básico ao Avançado',1,4800.30,70,'Dra. Julia',4),
	('mySQl Básico',1,2700.50,95,'Dra. Fernanda',5),
	('mySQL Avançado',1,4700.20,97,'Dra. Fernanda',5);


#Mostrar cursos com preco maior que 50 reais    
select tb_cursos.nome_curso,tb_cursos.preco_curso from tb_cursos
where tb_cursos.preco_curso > 50;

#Mostrar cursos com preco de 3 a 60 reais
select tb_cursos.nome_curso,tb_cursos.preco_curso from tb_cursos
where tb_cursos.preco_curso >= 3 and tb_cursos.preco_curso <= 60;

#Mostrar cursos que o nome começa com "Jav"
select * from tb_cursos
where tb_cursos.nome_curso like "Jav%";

#Inner join das duas tabelas
select * from tb_cursos
inner join tb_categoria 
where tb_cursos.id_categoria = tb_categoria.id_categoria;

#Mostrar cursos de uma categoria especifica
select * from tb_cursos
inner join tb_categoria
where tb_cursos.id_categoria = tb_categoria.id_categoria and tb_categoria.nome_categoria = 'Java';






    
    