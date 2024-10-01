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
