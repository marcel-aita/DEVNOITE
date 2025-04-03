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
-- Banco de dados: `suporte_tecnico_marcel`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `categoria_chamado`
--

CREATE TABLE `categoria_chamado` (
  `idCategoria_chamado` int(11) NOT NULL,
  `nome_categoria` varchar(45) NOT NULL,
  `descricao` text NOT NULL,
  `Chamado_idChamado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `categoria_chamado`
--

INSERT INTO `categoria_chamado` (`idCategoria_chamado`, `nome_categoria`, `descricao`, `Chamado_idChamado`) VALUES
(1, 'Hardware', 'Problemas com equipamentos físicos', 1),
(2, 'Hardware', 'Problemas com equipamentos físicos', 2),
(3, 'Rede', 'Problemas relacionados a conexão de rede', 3),
(4, 'Software', 'Problemas com programas e aplicativos', 4),
(5, 'Email', 'Problemas com configuração de email', 5),
(6, 'Sistema', 'Problemas com sistemas operacionais', 6),
(7, 'Periféricos', 'Problemas com dispositivos externos', 7),
(8, 'Periféricos', 'Problemas com dispositivos externos', 8),
(9, 'Hardware', 'Problemas com equipamentos físicos', 9);

-- --------------------------------------------------------

--
-- Estrutura para tabela `chamado`
--

CREATE TABLE `chamado` (
  `idChamado` int(11) NOT NULL,
  `titulo_chamado` varchar(45) NOT NULL,
  `prioridade` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `data_chamado` datetime NOT NULL,
  `data_abertura` datetime NOT NULL,
  `Cliente_idCliente` int(11) NOT NULL,
  `Tecnico_idTecnico` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `chamado`
--

INSERT INTO `chamado` (`idChamado`, `titulo_chamado`, `prioridade`, `status`, `data_chamado`, `data_abertura`, `Cliente_idCliente`, `Tecnico_idTecnico`) VALUES
(1, 'Problema com impressora', 2, 1, '2025-04-01 09:00:00', '2025-04-01 09:00:00', 1, 1),
(2, 'Computador não liga', 3, 1, '2025-04-02 10:00:00', '2025-04-02 10:00:00', 2, 2),
(3, 'Internet lenta', 1, 2, '2025-04-03 11:00:00', '2025-04-03 11:00:00', 3, 3),
(4, 'Software não abre', 2, 3, '2025-04-04 14:00:00', '2025-04-04 14:00:00', 4, 4),
(5, 'Configuração de email', 1, 1, '2025-04-05 15:00:00', '2025-04-05 15:00:00', 5, 5),
(6, 'Atualização de sistema', 3, 2, '2025-04-06 16:00:00', '2025-04-06 16:00:00', 6, 6),
(7, 'Problema com mouse', 1, 3, '2025-04-07 08:00:00', '2025-04-07 08:00:00', 7, 7),
(8, 'Teclado não funciona', 2, 1, '2025-04-08 09:30:00', '2025-04-08 09:30:00', 8, 8),
(9, 'Monitor piscando', 3, 2, '2025-04-09 10:30:00', '2025-04-09 10:30:00', 9, 9);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `idCliente` int(11) NOT NULL,
  `nome_cliente` varchar(45) NOT NULL,
  `cpf` varchar(45) NOT NULL,
  `telfone` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`idCliente`, `nome_cliente`, `cpf`, `telfone`, `email`) VALUES
(1, 'João Silva', '12345678901', '(11) 9999-1111', 'joao.silva@email.com'),
(2, 'Maria Oliveira', '23456789012', '(11) 9999-2222', 'maria.oliveira@email.com'),
(3, 'Carlos Souza', '34567890123', '(11) 9999-3333', 'carlos.souza@email.com'),
(4, 'Ana Pereira', '45678901234', '(11) 9999-4444', 'ana.pereira@email.com'),
(5, 'Pedro Costa', '56789012345', '(11) 9999-5555', 'pedro.costa@email.com'),
(6, 'Juliana Santos', '67890123456', '(11) 9999-6666', 'juliana.santos@email.com'),
(7, 'Marcos Rocha', '78901234567', '(11) 9999-7777', 'marcos.rocha@email.com'),
(8, 'Fernanda Lima', '89012345678', '(11) 9999-8888', 'fernanda.lima@email.com'),
(9, 'Ricardo Almeida', '90123456789', '(11) 9999-9999', 'ricardo.almeida@email.com');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tecnico`
--

CREATE TABLE `tecnico` (
  `idTecnico` int(11) NOT NULL,
  `nome_tecnico` varchar(45) NOT NULL,
  `cpf` varchar(45) NOT NULL,
  `telefone` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `tecnico`
--

INSERT INTO `tecnico` (`idTecnico`, `nome_tecnico`, `cpf`, `telefone`, `email`) VALUES
(1, 'Técnico Lucas', '12345678911', '(11) 8888-1111', 'lucas.tec@suporte.com'),
(2, 'Técnico André', '23456789022', '(11) 8888-2222', 'andre.tec@suporte.com'),
(3, 'Técnico Camila', '34567890133', '(11) 8888-3333', 'camila.tec@suporte.com'),
(4, 'Técnico Bruno', '45678901244', '(11) 8888-4444', 'bruno.tec@suporte.com'),
(5, 'Técnico Daniela', '56789012355', '(11) 8888-5555', 'daniela.tec@suporte.com'),
(6, 'Técnico Eduardo', '67890123466', '(11) 8888-6666', 'eduardo.tec@suporte.com'),
(7, 'Técnico Fabiana', '78901234577', '(11) 8888-7777', 'fabiana.tec@suporte.com'),
(8, 'Técnico Gustavo', '89012345688', '(11) 8888-8888', 'gustavo.tec@suporte.com'),
(9, 'Técnico Helena', '90123456799', '(11) 8888-9999', 'helena.tec@suporte.com');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `categoria_chamado`
--
ALTER TABLE `categoria_chamado`
  ADD PRIMARY KEY (`idCategoria_chamado`),
  ADD KEY `fk_Categoria_chamado_Chamado1_idx` (`Chamado_idChamado`);

--
-- Índices de tabela `chamado`
--
ALTER TABLE `chamado`
  ADD PRIMARY KEY (`idChamado`),
  ADD UNIQUE KEY `titulo_chamado_UNIQUE` (`titulo_chamado`),
  ADD KEY `fk_Chamado_Cliente_idx` (`Cliente_idCliente`),
  ADD KEY `fk_Chamado_Tecnico1_idx` (`Tecnico_idTecnico`);

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idCliente`),
  ADD UNIQUE KEY `cpf_UNIQUE` (`cpf`);

--
-- Índices de tabela `tecnico`
--
ALTER TABLE `tecnico`
  ADD PRIMARY KEY (`idTecnico`),
  ADD UNIQUE KEY `cpf_UNIQUE` (`cpf`),
  ADD UNIQUE KEY `nome_tecnico_UNIQUE` (`nome_tecnico`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categoria_chamado`
--
ALTER TABLE `categoria_chamado`
  MODIFY `idCategoria_chamado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `tecnico`
--
ALTER TABLE `tecnico`
  MODIFY `idTecnico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `categoria_chamado`
--
ALTER TABLE `categoria_chamado`
  ADD CONSTRAINT `fk_Categoria_chamado_Chamado1` FOREIGN KEY (`Chamado_idChamado`) REFERENCES `chamado` (`idChamado`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `chamado`
--
ALTER TABLE `chamado`
  ADD CONSTRAINT `fk_Chamado_Cliente` FOREIGN KEY (`Cliente_idCliente`) REFERENCES `cliente` (`idCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Chamado_Tecnico1` FOREIGN KEY (`Tecnico_idTecnico`) REFERENCES `tecnico` (`idTecnico`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
