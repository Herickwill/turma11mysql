rename table funcionarios to colaboradores;
#adicionando coluna cpf em first
alter table colaboradores add column cpf int first;
alter table colaboradores add column email varchar(30);
#adicionar coluna sobrenome dps de coluna nome
alter table colaboradores add column sobrenome varchar(30) after nome;
alter table colaboradores modify column nome varchar(20);
alter table colaboradores drop column sobrenome;
alter table colaboradores drop column cpd;


select * from colaboradores;
describe colaboradores;