create table tb_carro (
id int auto_increment primary key,
marca varchar(50) not null,
modelo varchar(50) not null,
ano int not null,
preco float(8,2) default 0
);

describe tb_carro;

insert into tb_carro (marca, modelo, ano, preco) values
('Toyota', 'Corolla', '2020', '85000'),
('Honda', 'Civic', '2019', '90000'),
('Ford', 'Mustang', '2021', '300000'),
('Chevrolet', 'Onix', '2018', '45000');

alter table tb_carro change ano ano int not null;

truncate table tb_carro; -- limpa os dados da tabela
select * from tb_carro;

select modelo, ano from tb_carro; -- visualizar modelo e ano

delete from tb_carro where id=2; -- deleta a linha que tiver o id=2 -- este id nunca será usado por outro registro pois foi configurado como PK

insert into tb_carro (marca, modelo, ano, preco) values
('Toyota', 'Yaris', '2020', '85000'); -- será inserido com um id novo e não com o id apagado anteriormente

truncate tb_carro; -- reseta a tabela

update tb_carro set modelo = 'Maverick' where id=3; -- atualiza tabela
update tb_carro set modelo = 'Maverick', ano = 1970 where id=3; -- atualiza tabela mais de um

alter table tb_carro add column cor char(10);
alter table tb_carro add column portas int; 

select * from tb_carro;

update tb_carro set portas = 4 where id>0;
update tb_carro set cor = 'preto' where id between 1 and 3;
update tb_carro set cor = 'rosa' where id=4;
