-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 03/04/2025 às 02:13
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
-- Banco de dados: `sistemaordemproducao`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `fornecedor`
--

CREATE TABLE `fornecedor` (
  `idFornecedor` int(11) NOT NULL,
  `nome_fornecedor` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `fornecedor`
--

INSERT INTO `fornecedor` (`idFornecedor`, `nome_fornecedor`) VALUES
(6, 'Clarice'),
(5, 'Fátima'),
(1, 'Joâo'),
(9, 'Joaquim'),
(3, 'Lucas'),
(8, 'Luis'),
(2, 'Maria'),
(7, 'Nara'),
(4, 'Roberto');

-- --------------------------------------------------------

--
-- Estrutura para tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `idFuncionario` int(11) NOT NULL,
  `nome_funcionario` varchar(100) NOT NULL,
  `email` varchar(45) NOT NULL,
  `telefone` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `funcionario`
--

INSERT INTO `funcionario` (`idFuncionario`, `nome_funcionario`, `email`, `telefone`) VALUES
(1, 'Carlos Silva', 'carlos.silva@empresa.com', '(11) 9999-1111'),
(2, 'Ana Paula', 'ana.paula@empresa.com', '(11) 9999-2222'),
(3, 'Marcos Oliveira', 'marcos.oliveira@empresa.com', '(11) 9999-3333'),
(4, 'Juliana Santos', 'juliana.santos@empresa.com', '(11) 9999-4444'),
(5, 'Ricardo Pereira', 'ricardo.pereira@empresa.com', '(11) 9999-5555'),
(6, 'Fernanda Costa', 'fernanda.costa@empresa.com', '(11) 9999-6666'),
(7, 'Eduardo Rocha', 'eduardo.rocha@empresa.com', '(11) 9999-7777'),
(8, 'Patricia Lima', 'patricia.lima@empresa.com', '(11) 9999-8888'),
(9, 'Gustavo Almeida', 'gustavo.almeida@empresa.com', '(11) 9999-9999');

-- --------------------------------------------------------

--
-- Estrutura para tabela `ordemproducao`
--

CREATE TABLE `ordemproducao` (
  `idOrdemProducao` int(11) NOT NULL,
  `data_inicio` datetime NOT NULL,
  `data_final` datetime NOT NULL,
  `valor` varchar(45) NOT NULL,
  `Funcionario_idFuncionario` int(11) NOT NULL,
  `Produto_idProduto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `ordemproducao`
--

INSERT INTO `ordemproducao` (`idOrdemProducao`, `data_inicio`, `data_final`, `valor`, `Funcionario_idFuncionario`, `Produto_idProduto`) VALUES
(1, '2025-04-01 08:00:00', '2025-04-05 17:00:00', '1200.00', 1, 1),
(2, '2025-04-02 08:00:00', '2025-04-06 17:00:00', '850.00', 2, 2),
(3, '2025-04-03 08:00:00', '2025-04-07 17:00:00', '2300.00', 3, 3),
(4, '2025-04-04 08:00:00', '2025-04-08 17:00:00', '1800.00', 4, 4),
(5, '2025-04-05 08:00:00', '2025-04-09 17:00:00', '950.00', 5, 5),
(6, '2025-04-06 08:00:00', '2025-04-10 17:00:00', '3200.00', 6, 6),
(7, '2025-04-07 08:00:00', '2025-04-11 17:00:00', '2750.00', 7, 7),
(8, '2025-04-08 08:00:00', '2025-04-12 17:00:00', '650.00', 8, 8),
(9, '2025-04-09 08:00:00', '2025-04-13 17:00:00', '420.00', 9, 9);

-- --------------------------------------------------------

--
-- Estrutura para tabela `produto`
--

CREATE TABLE `produto` (
  `idProduto` int(11) NOT NULL,
  `nome_produto` varchar(45) NOT NULL,
  `descricao` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `produto`
--

INSERT INTO `produto` (`idProduto`, `nome_produto`, `descricao`) VALUES
(1, 'Mesa de Escritório', 'Mesa retangular para escritório'),
(2, 'Cadeira Giratória', 'Cadeira ergonômica giratória'),
(3, 'Armário de Aço', 'Armário metálico para arquivo'),
(4, 'Estante Modular', 'Estante com módulos intercambiáveis'),
(5, 'Painel Divisório', 'Divisória para ambientes corporativos'),
(6, 'Sofá para Recepção', 'Sofá de 3 lugares para recepção'),
(7, 'Balcão de Atendimento', 'Balcão para área de recepção'),
(8, 'Escrivaninha', 'Pequena escrivaninha executiva'),
(9, 'Prateleira Suspensa', 'Prateleira para parede');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produto_has_fornecedor`
--

CREATE TABLE `produto_has_fornecedor` (
  `Produto_idProduto` int(11) NOT NULL,
  `Fornecedor_idFornecedor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `produto_has_fornecedor`
--

INSERT INTO `produto_has_fornecedor` (`Produto_idProduto`, `Fornecedor_idFornecedor`) VALUES
(1, 1),
(1, 2),
(2, 2),
(2, 3),
(3, 3),
(3, 4),
(4, 4),
(4, 5),
(5, 5),
(5, 6),
(6, 6),
(6, 7),
(7, 7),
(7, 8),
(8, 8),
(8, 9),
(9, 1),
(9, 9);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `fornecedor`
--
ALTER TABLE `fornecedor`
  ADD PRIMARY KEY (`idFornecedor`),
  ADD UNIQUE KEY `nome_fornecedor_UNIQUE` (`nome_fornecedor`);

--
-- Índices de tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`idFuncionario`),
  ADD UNIQUE KEY `nome_funcuonario_UNIQUE` (`nome_funcionario`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`);

--
-- Índices de tabela `ordemproducao`
--
ALTER TABLE `ordemproducao`
  ADD PRIMARY KEY (`idOrdemProducao`),
  ADD KEY `fk_OrdemProducao_Funcionario1_idx` (`Funcionario_idFuncionario`),
  ADD KEY `fk_OrdemProducao_Produto1_idx` (`Produto_idProduto`);

--
-- Índices de tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`idProduto`);

--
-- Índices de tabela `produto_has_fornecedor`
--
ALTER TABLE `produto_has_fornecedor`
  ADD PRIMARY KEY (`Produto_idProduto`,`Fornecedor_idFornecedor`),
  ADD KEY `fk_Produto_has_Fornecedor_Fornecedor1_idx` (`Fornecedor_idFornecedor`),
  ADD KEY `fk_Produto_has_Fornecedor_Produto1_idx` (`Produto_idProduto`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `fornecedor`
--
ALTER TABLE `fornecedor`
  MODIFY `idFornecedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `idFuncionario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `ordemproducao`
--
ALTER TABLE `ordemproducao`
  MODIFY `idOrdemProducao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `idProduto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `ordemproducao`
--
ALTER TABLE `ordemproducao`
  ADD CONSTRAINT `fk_OrdemProducao_Funcionario1` FOREIGN KEY (`Funcionario_idFuncionario`) REFERENCES `funcionario` (`idFuncionario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_OrdemProducao_Produto1` FOREIGN KEY (`Produto_idProduto`) REFERENCES `produto` (`idProduto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `produto_has_fornecedor`
--
ALTER TABLE `produto_has_fornecedor`
  ADD CONSTRAINT `fk_Produto_has_Fornecedor_Fornecedor1` FOREIGN KEY (`Fornecedor_idFornecedor`) REFERENCES `fornecedor` (`idFornecedor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Produto_has_Fornecedor_Produto1` FOREIGN KEY (`Produto_idProduto`) REFERENCES `produto` (`idProduto`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
