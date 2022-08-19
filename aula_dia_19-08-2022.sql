-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 19-Ago-2022 às 14:07
-- Versão do servidor: 10.4.17-MariaDB
-- versão do PHP: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `revisao`
--
CREATE DATABASE IF NOT EXISTS `revisao` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `revisao`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `estado` varchar(2) DEFAULT NULL,
  `nome_cliente` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `email`, `estado`, `nome_cliente`) VALUES
(1, 'etecmaua@email.com', 'SP', 'ETEC MAUA'),
(2, 'adultoney@email.com', 'PS', 'NEYMAR JR'),
(3, 'coutinholindo@email.com', 'AV', 'Phillipe Coutinho');

-- --------------------------------------------------------

--
-- Estrutura da tabela `compras`
--

CREATE TABLE `compras` (
  `data_compra` date DEFAULT NULL,
  `nf` int(11) NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `codigo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `compras`
--

INSERT INTO `compras` (`data_compra`, `nf`, `id_cliente`, `codigo`) VALUES
('2022-08-19', 5, 1, 7),
('2022-08-08', 6, 2, 8),
('2022-08-08', 7, 3, 9),
('2022-08-07', 8, 3, 8);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `codigo` int(11) NOT NULL,
  `preco` decimal(6,2) DEFAULT NULL,
  `cor` varchar(255) DEFAULT NULL,
  `nome_produto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`codigo`, `preco`, `cor`, `nome_produto`) VALUES
(1, '5.99', 'preto', 'estojo'),
(2, '1.99', 'verde', 'borracha'),
(3, '0.99', 'roxa', 'caneta'),
(4, '0.50', 'vermelho', 'lapis'),
(5, '19.99', 'amarelo', 'caderno'),
(6, '4.99', 'azul', 'apontador'),
(7, '149.99', 'lilas', 'camiseta'),
(8, '249.99', 'bege', 'blusa_moletom'),
(9, '499.99', 'branco', 'tenis'),
(10, '299.99', 'cinza', 'calca_jeans');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Índices para tabela `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`nf`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `codigo` (`codigo`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`codigo`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `compras`
--
ALTER TABLE `compras`
  MODIFY `nf` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `compras`
--
ALTER TABLE `compras`
  ADD CONSTRAINT `compras_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`),
  ADD CONSTRAINT `compras_ibfk_2` FOREIGN KEY (`codigo`) REFERENCES `produtos` (`codigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
