#Criação e uso das database
create database db_cidade_das_carnes;
use db_cidade_das_carnes;

#Criar tabela de categoria
create table tb_categoria (
	id_categoria int not null primary key auto_increment,
    nome_categoria varchar(20),
    tipo_categoria varchar(25));
#Criar tabela de produtos    
create table tb_produtos (
	id_produtos int not null primary key auto_increment,
    nome_produto varchar(30) not null,
    peso int,
    fornecedor varchar(15),
    preco decimal (5,2),
    id_categoria int,
	constraint fk_categoria foreign key (id_categoria) references tb_categoria (id_categoria));

#Inserir categorias
insert into tb_categoria (nome_categoria,tipo_categoria) values
	('Carne Vermelha','Bovina'),
	('Carne Vermelha','Suino'),
	('Carne Branca','Aves'),
	('Carne Branca','Peixes'),
	('Carne Processada','Variados');
    
 #Inserir produtos   
insert into tb_produtos(nome_produto, peso, fornecedor, preco, id_categoria) values
	('Patinho', 1, 'Assai', 35.50,1),
	('Picanha', 2, 'CarnesX', 30.00,1),
	('Lagarto', 2, 'CarnesX', 24.00,1),
	('Coxão Mole', 3, 'CarnesX', 23.50,1),
	('Bacon', 2, 'CarnesX', 12.50,5),
	('Carne de Porco', 8, 'CarnesX', 18.50,2),
	('File de Frango', 2, 'CarnesX', 25.50,3),
	('Tilapia', 2, 'CarnesX', 64.00,4);

#Mostrar produtos com preco maior que 50 reais    
select tb_produtos.nome_produto,tb_produtos.preco from tb_produtos
where tb_produtos.preco > 50;

#Mostrar produtos com preco de 3 a 60 reais
select tb_produtos.nome_produto,tb_produtos.preco from tb_produtos
where tb_produtos.preco >= 3 and tb_produtos.preco <= 60;

#Mostrar produtos que o nome começa com "Co"
select tb_produtos.nome_produto from tb_produtos
where tb_produtos.nome_produto like "Co%";

#Inner join das duas tabelas
select tb_produtos.nome_produto,tb_produtos.peso,tb_produtos.preco,tb_categoria.nome_categoria,tb_categoria.tipo_categoria from tb_produtos
inner join tb_categoria 
where tb_produtos.id_categoria = tb_categoria.id_categoria;

#Mostrar produtos de uma categoria especifica
select * from tb_produtos
inner join tb_categoria
where tb_produtos.id_categoria = tb_categoria.id_categoria and tb_categoria.nome_categoria = 'Carne Vermelha';






    
    