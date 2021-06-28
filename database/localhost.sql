-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 28/06/2021 às 08:07
-- Versão do servidor: 10.2.39-MariaDB
-- Versão do PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `gabrielusina_teste`
--
CREATE DATABASE IF NOT EXISTS `gabrielusina_teste` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `gabrielusina_teste`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cidade_estado`
--

CREATE TABLE `cidade_estado` (
  `estado` varchar(2) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cidade` varchar(40) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `id_cidade_estado` int(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `cidade_estado`
--

INSERT INTO `cidade_estado` (`estado`, `cidade`, `id_cidade_estado`) VALUES
('RS', 'Santo Angelo', 1),
('SP', 'Sao Paulo', 2),
('RS', 'Panambi', 3),
('DF', 'Brasilia', 4);

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `id_clientes` int(4) NOT NULL,
  `nome_clientes` varchar(40) NOT NULL,
  `cpf_clientes` varchar(11) NOT NULL,
  `rg_cliente` varchar(10) NOT NULL,
  `bairro_endereco_clientes` varchar(40) NOT NULL,
  `rua_endereco_clientes` varchar(40) NOT NULL,
  `numero_endereco_clientes` varchar(40) NOT NULL,
  `estado` varchar(2) NOT NULL,
  `cidade` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `fornecedores`
--

CREATE TABLE `fornecedores` (
  `id_fornecedores` int(4) NOT NULL,
  `nome_fornecedores` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `fornecedores`
--

INSERT INTO `fornecedores` (`id_fornecedores`, `nome_fornecedores`) VALUES
(1, 'Kabum'),
(2, 'Pichau'),
(3, 'Magazineluiza');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pedidos`
--

CREATE TABLE `pedidos` (
  `id_pedidos` int(4) NOT NULL,
  `nome_pedidos` varchar(40) NOT NULL,
  `quantidade_pedidos` int(10) DEFAULT NULL,
  `data_pedidos` date DEFAULT NULL,
  `id_clientes` int(4) NOT NULL,
  `nome_clientes` varchar(40) NOT NULL,
  `cpf_clientes` varchar(11) NOT NULL,
  `rg_clientes` varchar(10) NOT NULL,
  `bairro_endereco_clientes` varchar(40) NOT NULL,
  `rua_endereco_clientes` varchar(40) NOT NULL,
  `numero_endereco_clientes` varchar(40) NOT NULL,
  `estado` varchar(2) NOT NULL,
  `cidade` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `id_produtos` int(4) NOT NULL,
  `nome_produtos` varchar(40) NOT NULL,
  `data_entrada_produtos` date NOT NULL,
  `data_validade_produtos` date NOT NULL,
  `palavras_chave_produtos` varchar(40) DEFAULT NULL,
  `quantidade_estoque_produtos` int(6) DEFAULT NULL,
  `quantidade_vendas_produto` int(6) DEFAULT NULL,
  `id_fornecedores` int(4) NOT NULL,
  `nome_fornecedores` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`id_produtos`, `nome_produtos`, `data_entrada_produtos`, `data_validade_produtos`, `palavras_chave_produtos`, `quantidade_estoque_produtos`, `quantidade_vendas_produto`, `id_fornecedores`, `nome_fornecedores`) VALUES
(1, 'Gabinete', '2021-06-23', '2022-06-23', 'Computador', 100, 2, 1, 'Kabum'),
(2, 'Ferro de Solda', '2021-06-23', '2022-06-23', 'Eletrônica', 200, 20, 2, 'Pichau'),
(3, 'Monitor 15 polegadas', '2021-06-24', '2022-06-24', 'Computador', 112, 15, 3, 'Magazineluiza');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `cidade_estado`
--
ALTER TABLE `cidade_estado`
  ADD PRIMARY KEY (`id_cidade_estado`);

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_clientes`),
  ADD KEY `estado` (`estado`),
  ADD KEY `cidade` (`cidade`);

--
-- Índices de tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  ADD PRIMARY KEY (`id_fornecedores`);

--
-- Índices de tabela `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id_pedidos`),
  ADD KEY `id_clientes` (`id_clientes`),
  ADD KEY `nome_clientes` (`nome_clientes`),
  ADD KEY `cpf_clientes` (`cpf_clientes`),
  ADD KEY `rg_clientes` (`rg_clientes`),
  ADD KEY `bairro_endereco_clientes` (`bairro_endereco_clientes`),
  ADD KEY `rua_endereco_clientes` (`rua_endereco_clientes`),
  ADD KEY `numero_endereco_clientes` (`numero_endereco_clientes`),
  ADD KEY `estado` (`estado`),
  ADD KEY `cidade` (`cidade`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id_produtos`),
  ADD KEY `id_fornecedores` (`id_fornecedores`),
  ADD KEY `nome_fornecedores` (`nome_fornecedores`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `cidade_estado`
--
ALTER TABLE `cidade_estado`
  MODIFY `id_cidade_estado` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_clientes` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  MODIFY `id_fornecedores` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id_pedidos` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id_produtos` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
