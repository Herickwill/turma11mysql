#Criação e uso das database
create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

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
	('Ferramentas','Acessórios'),
	('Tintas','Pintura'),
	('Areias/Cimento','Material de Construção'),
	('Lâmpada','Iluminação'),
	('Móveis para cozinha','Móveis');
    
 #Inserir produtos   
insert into tb_produtos(nome_produto, peso, fornecedor, preco, id_categoria) values
	('Alicate Universal', 1, 'Eletrix', 55.50,1),
	('Tinta Branca', 5, 'Tintex', 120.00,2),
	('Saco de Cimento', 50, 'Cimentix', 100.00,3),
	('Saco de Cascalho', 25, 'Cimentix', 234.50,3),
	('Lâmpada Led 3unid.', 2, 'Eletrix', 30.50,4),
	('Mesa Cozinha', 10, 'Leroy Merlin', 400.50,5),
	('Armario aéreo', 1, 'Leroy Merlin', 55.50,5),
	('Tinta Laranja', 5, 'Tintex', 120.00,2);

#Mostrar produtos com preco maior que 50 reais    
select tb_produtos.nome_produto,tb_produtos.preco from tb_produtos
where tb_produtos.preco > 50;

#Mostrar produtos com preco de 3 a 60 reais
select tb_produtos.nome_produto,tb_produtos.preco from tb_produtos
where tb_produtos.preco >= 3 and tb_produtos.preco <= 60;

#Mostrar produtos que o nome começa com "Cl"
select tb_produtos.nome_produto from tb_produtos
where tb_produtos.nome_produto like "Cl%";

#Inner join das duas tabelas
select tb_produtos.nome_produto,tb_produtos.peso,tb_produtos.preco,tb_categoria.nome_categoria,tb_categoria.tipo_categoria from tb_produtos
inner join tb_categoria 
where tb_produtos.id_categoria = tb_categoria.id_categoria;

#Mostrar produtos de uma categoria especifica
select * from tb_produtos
inner join tb_categoria
where tb_produtos.id_categoria = tb_categoria.id_categoria and tb_categoria.nome_categoria = 'Areias/Cimento';






    
    