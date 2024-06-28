create database loja_doces;
use loja_doces;

create table categorias (
id_categorias INT PRIMARY KEY AUTO_INCREMENT,
nome_categoria VARCHAR(30) NOT NULL
);

insert into categorias (nome_categoria) values
("Bolos"), ("Tortas"), ("Doces Finos"), ("Doces Tradicionais");

select * from categorias;

create table doces (
id_doce INT PRIMARY KEY AUTO_INCREMENT,
nome_doce VARCHAR(30) NOT NULL,
id_categoria INT NOT NULL,
foreign key (id_categoria) references categorias(id_categoria)
);

insert into doces ( id_categoria, nome_doce) values
(1, "Red Velvet"),
(1, "Bolo de laranja"),
(2, "Torta de frango");

select * from doces;
