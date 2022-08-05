CREATE DATABASE revisao;
USE revisao;



CREATE TABLE clientes (
id_cliente int PRIMARY KEY AUTO_INCREMENT,
email varchar(255),
estado varchar(2),
nome_cliente varchar(255)
);

CREATE TABLE produtos (
codigo int PRIMARY KEY AUTO_INCREMENT,
preco decimal(6,2),
cor varchar(255),
nome_produto varchar(255)
);

CREATE TABLE compras (
data_compra date,
nf int PRIMARY KEY AUTO_INCREMENT,
id_cliente int,
codigo int,
FOREIGN KEY(id_cliente) REFERENCES clientes (id_cliente),
FOREIGN KEY(codigo) REFERENCES produtos (codigo)
);

