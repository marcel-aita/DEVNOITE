-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 03/04/2025 às 02:23
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `ecommerce_marcel`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `idCliente` int(11) NOT NULL,
  `nome_cliente` varchar(45) NOT NULL,
  `preco` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`idCliente`, `nome_cliente`, `preco`) VALUES
(1, 'João Silva', 0),
(2, 'Maria Oliveira', 0),
(3, 'Carlos Souza', 0),
(4, 'Ana Pereira', 0),
(5, 'Pedro Costa', 0),
(6, 'Juliana Santos', 0),
(7, 'Marcos Rocha', 0),
(8, 'Fernanda Lima', 0),
(9, 'Ricardo Almeida', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `compra`
--

CREATE TABLE `compra` (
  `idCompra` int(11) NOT NULL,
  `quantidade` varchar(45) NOT NULL,
  `Pagamento_idPagamento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `compra`
--

INSERT INTO `compra` (`idCompra`, `quantidade`, `Pagamento_idPagamento`) VALUES
(1, '1', 1),
(2, '1', 2),
(3, '1', 3),
(4, '2', 4),
(5, '1', 5),
(6, '1', 6),
(7, '1', 7),
(8, '1', 8),
(9, '1', 9);

-- --------------------------------------------------------

--
-- Estrutura para tabela `compra_has_pedido`
--

CREATE TABLE `compra_has_pedido` (
  `Compra_idCompra` int(11) NOT NULL,
  `Pedido_idPedido` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `compra_has_pedido`
--

INSERT INTO `compra_has_pedido` (`Compra_idCompra`, `Pedido_idPedido`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9);

-- --------------------------------------------------------

--
-- Estrutura para tabela `pagamento`
--

CREATE TABLE `pagamento` (
  `idPagamento` int(11) NOT NULL,
  `valor` decimal(10,0) NOT NULL,
  `data_pagamento` datetime NOT NULL,
  `forma_pagamento` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `pagamento`
--

INSERT INTO `pagamento` (`idPagamento`, `valor`, `data_pagamento`, `forma_pagamento`) VALUES
(1, 3500, '2025-04-01 10:00:00', 'Cartão de Crédito'),
(2, 2500, '2025-04-02 11:00:00', 'PIX'),
(3, 4200, '2025-04-03 12:00:00', 'Boleto'),
(4, 180, '2025-04-04 13:00:00', 'Cartão de Débito'),
(5, 3200, '2025-04-05 14:00:00', 'Cartão de Crédito'),
(6, 1500, '2025-04-06 15:00:00', 'PIX'),
(7, 2800, '2025-04-07 16:00:00', 'Boleto'),
(8, 1200, '2025-04-08 17:00:00', 'Cartão de Débito'),
(9, 950, '2025-04-09 18:00:00', 'Cartão de Crédito');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pedido`
--

CREATE TABLE `pedido` (
  `idPedido` int(11) NOT NULL,
  `data_pedido` varchar(45) NOT NULL,
  `valor_total` varchar(45) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `Pagamento_idPagamento` int(11) NOT NULL,
  `Cliente_idCliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `pedido`
--

INSERT INTO `pedido` (`idPedido`, `data_pedido`, `valor_total`, `status`, `Pagamento_idPagamento`, `Cliente_idCliente`) VALUES
(1, '2025-04-01', '3500', 1, 1, 1),
(2, '2025-04-02', '2500', 2, 2, 2),
(3, '2025-04-03', '4200', 3, 3, 3),
(4, '2025-04-04', '180', 1, 4, 4),
(5, '2025-04-05', '3200', 2, 5, 5),
(6, '2025-04-06', '1500', 3, 6, 6),
(7, '2025-04-07', '2800', 1, 7, 7),
(8, '2025-04-08', '1200', 2, 8, 8),
(9, '2025-04-09', '950', 3, 9, 9);

-- --------------------------------------------------------

--
-- Estrutura para tabela `produto`
--

CREATE TABLE `produto` (
  `idProduto` int(11) NOT NULL,
  `nome_produto` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `cpf` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `produto`
--

INSERT INTO `produto` (`idProduto`, `nome_produto`, `email`, `cpf`) VALUES
(1, 'Notebook Dell', 'produto1@loja.com', '11111111111'),
(2, 'Smartphone Samsung', 'produto2@loja.com', '22222222222'),
(3, 'TV LED 55\"', 'produto3@loja.com', '33333333333'),
(4, 'Fone de Ouvido Bluetooth', 'produto4@loja.com', '44444444444'),
(5, 'Tablet Apple', 'produto5@loja.com', '55555555555'),
(6, 'Câmera Digital', 'produto6@loja.com', '66666666666'),
(7, 'Console de Videogame', 'produto7@loja.com', '77777777777'),
(8, 'Smartwatch', 'produto8@loja.com', '88888888888'),
(9, 'Impressora Multifuncional', 'produto9@loja.com', '99999999999');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produto_has_compra`
--

CREATE TABLE `produto_has_compra` (
  `Produto_idProduto` int(11) NOT NULL,
  `Compra_idCompra` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `produto_has_compra`
--

INSERT INTO `produto_has_compra` (`Produto_idProduto`, `Compra_idCompra`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idCliente`),
  ADD UNIQUE KEY `nome_produto_UNIQUE` (`nome_cliente`);

--
-- Índices de tabela `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`idCompra`),
  ADD KEY `fk_Compra_Pagamento1_idx` (`Pagamento_idPagamento`);

--
-- Índices de tabela `compra_has_pedido`
--
ALTER TABLE `compra_has_pedido`
  ADD PRIMARY KEY (`Compra_idCompra`,`Pedido_idPedido`),
  ADD KEY `fk_Compra_has_Pedido_Pedido1_idx` (`Pedido_idPedido`),
  ADD KEY `fk_Compra_has_Pedido_Compra1_idx` (`Compra_idCompra`);

--
-- Índices de tabela `pagamento`
--
ALTER TABLE `pagamento`
  ADD PRIMARY KEY (`idPagamento`);

--
-- Índices de tabela `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`idPedido`),
  ADD KEY `fk_Pedido_Pagamento1_idx` (`Pagamento_idPagamento`),
  ADD KEY `fk_Pedido_Cliente1_idx` (`Cliente_idCliente`);

--
-- Índices de tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`idProduto`),
  ADD UNIQUE KEY `nome_produto_UNIQUE` (`nome_produto`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`),
  ADD UNIQUE KEY `cpf_UNIQUE` (`cpf`);

--
-- Índices de tabela `produto_has_compra`
--
ALTER TABLE `produto_has_compra`
  ADD PRIMARY KEY (`Produto_idProduto`,`Compra_idCompra`),
  ADD KEY `fk_Produto_has_Compra_Compra1_idx` (`Compra_idCompra`),
  ADD KEY `fk_Produto_has_Compra_Produto1_idx` (`Produto_idProduto`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `compra`
--
ALTER TABLE `compra`
  MODIFY `idCompra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `pagamento`
--
ALTER TABLE `pagamento`
  MODIFY `idPagamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `pedido`
--
ALTER TABLE `pedido`
  MODIFY `idPedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `idProduto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `compra`
--
ALTER TABLE `compra`
  ADD CONSTRAINT `fk_Compra_Pagamento1` FOREIGN KEY (`Pagamento_idPagamento`) REFERENCES `pagamento` (`idPagamento`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `compra_has_pedido`
--
ALTER TABLE `compra_has_pedido`
  ADD CONSTRAINT `fk_Compra_has_Pedido_Compra1` FOREIGN KEY (`Compra_idCompra`) REFERENCES `compra` (`idCompra`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Compra_has_Pedido_Pedido1` FOREIGN KEY (`Pedido_idPedido`) REFERENCES `pedido` (`idPedido`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `fk_Pedido_Cliente1` FOREIGN KEY (`Cliente_idCliente`) REFERENCES `cliente` (`idCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Pedido_Pagamento1` FOREIGN KEY (`Pagamento_idPagamento`) REFERENCES `pagamento` (`idPagamento`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `produto_has_compra`
--
ALTER TABLE `produto_has_compra`
  ADD CONSTRAINT `fk_Produto_has_Compra_Compra1` FOREIGN KEY (`Compra_idCompra`) REFERENCES `compra` (`idCompra`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Produto_has_Compra_Produto1` FOREIGN KEY (`Produto_idProduto`) REFERENCES `produto` (`idProduto`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
