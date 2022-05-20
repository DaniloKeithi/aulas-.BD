
CREATE DATABASE EXEMPLO;

USE EXEMPLO;



CREATE TABLE Jogadores (
num_jogador int PRIMARY KEY AUTO_INCREMENT,
nome_jogador varchar(255),
cod_equipe int
);

CREATE TABLE Equipe (
cod_equipe int PRIMARY KEY AUTO_INCREMENT,
nome_equipe varchar(255)
);

ALTER TABLE Jogadores ADD FOREIGN KEY(cod_equipe) REFERENCES Equipe (cod_equipe);
