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
-- Banco de dados: `transporte_publico_marcel`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `motorista`
--

CREATE TABLE `motorista` (
  `idMotorista` int(11) NOT NULL,
  `nome_motorista` varchar(45) NOT NULL,
  `cpf` varchar(45) NOT NULL,
  `endereco` varchar(45) NOT NULL,
  `telefone` varchar(45) NOT NULL,
  `habilitacao` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `motorista`
--

INSERT INTO `motorista` (`idMotorista`, `nome_motorista`, `cpf`, `endereco`, `telefone`, `habilitacao`, `email`) VALUES
(1, 'João Silva', '123.456.789-01', 'Rua A, 100 - Centro', '(11) 9999-1111', 'AB12345678', 'joao.silva@email.com'),
(2, 'Maria Oliveira', '234.567.890-12', 'Av B, 200 - Vila Nova', '(11) 9999-2222', 'BC23456789', 'maria.oliveira@email.com'),
(3, 'Carlos Souza', '345.678.901-23', 'Rua C, 300 - Jardins', '(11) 9999-3333', 'CD34567890', 'carlos.souza@email.com'),
(4, 'Ana Pereira', '456.789.012-34', 'Av D, 400 - Bela Vista', '(11) 9999-4444', 'DE45678901', 'ana.pereira@email.com'),
(5, 'Pedro Costa', '567.890.123-45', 'Rua E, 500 - Moema', '(11) 9999-5555', 'EF56789012', 'pedro.costa@email.com'),
(6, 'Juliana Santos', '678.901.234-56', 'Av F, 600 - Pinheiros', '(11) 9999-6666', 'FG67890123', 'juliana.santos@email.com'),
(7, 'Marcos Rocha', '789.012.345-67', 'Rua G, 700 - Itaim', '(11) 9999-7777', 'GH78901234', 'marcos.rocha@email.com'),
(8, 'Fernanda Lima', '890.123.456-78', 'Av H, 800 - Perdizes', '(11) 9999-8888', 'HI89012345', 'fernanda.lima@email.com'),
(9, 'Ricardo Almeida', '901.234.567-89', 'Rua I, 900 - Higienópolis', '(11) 9999-9999', 'IJ90123456', 'ricardo.almeida@email.com');

-- --------------------------------------------------------

--
-- Estrutura para tabela `motorista_has_onibus`
--

CREATE TABLE `motorista_has_onibus` (
  `Motorista_idMotorista` int(11) NOT NULL,
  `Onibus_idOnibus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `motorista_has_onibus`
--

INSERT INTO `motorista_has_onibus` (`Motorista_idMotorista`, `Onibus_idOnibus`) VALUES
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
-- Estrutura para tabela `onibus`
--

CREATE TABLE `onibus` (
  `idOnibus` int(11) NOT NULL,
  `placa` varchar(45) NOT NULL,
  `modelo` varchar(45) NOT NULL,
  `marca` varchar(45) NOT NULL,
  `quilometros_rodados` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `onibus`
--

INSERT INTO `onibus` (`idOnibus`, `placa`, `modelo`, `marca`, `quilometros_rodados`) VALUES
(1, 'ABC1D23', 'Marcopolo Torino', 'Mercedes-Benz', '125.450'),
(2, 'EFG4H56', 'Caio Apache VIP', 'Volvo', '98.720'),
(3, 'IJK7L89', 'Neobus Mega', 'Scania', '203.150'),
(4, 'MNO1P23', 'Marcopollo Paradiso', 'Volkswagen', '87.630'),
(5, 'QRS4T56', 'Busscar Urbanuss', 'Agrale', '156.890'),
(6, 'UVW7X89', 'Caio Mondego', 'Mercedes-Benz', '112.340'),
(7, 'YZA1B23', 'Neobus Audace', 'Volvo', '178.210'),
(8, 'CDE4F56', 'Marcopolo Viaggio', 'Scania', '94.560'),
(9, 'GHI7J89', 'Busscar Jum Buss', 'Volkswagen', '201.780');

-- --------------------------------------------------------

--
-- Estrutura para tabela `onibus_has_rota`
--

CREATE TABLE `onibus_has_rota` (
  `Onibus_idOnibus` int(11) NOT NULL,
  `Rota_idRota` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `onibus_has_rota`
--

INSERT INTO `onibus_has_rota` (`Onibus_idOnibus`, `Rota_idRota`) VALUES
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
-- Estrutura para tabela `parada`
--

CREATE TABLE `parada` (
  `idParada` int(11) NOT NULL,
  `endereco` varchar(45) NOT NULL,
  `numero` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `parada`
--

INSERT INTO `parada` (`idParada`, `endereco`, `numero`) VALUES
(1, 'Avenida Paulista', '1000'),
(2, 'Rua da Consolação', '200'),
(3, 'Avenida Brigadeiro Faria Lima', '1500'),
(4, 'Rua Augusta', '500'),
(5, 'Avenida Rebouças', '800'),
(6, 'Rua Oscar Freire', '300'),
(7, 'Avenida Angélica', '700'),
(8, 'Rua Haddock Lobo', '400'),
(9, 'Avenida Nove de Julho', '600');

-- --------------------------------------------------------

--
-- Estrutura para tabela `rota`
--

CREATE TABLE `rota` (
  `idRota` int(11) NOT NULL,
  `data` varchar(45) NOT NULL,
  `endereco` varchar(45) DEFAULT NULL,
  `Parada_idParada` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `rota`
--

INSERT INTO `rota` (`idRota`, `data`, `endereco`, `Parada_idParada`) VALUES
(1, '2025-04-01', 'Centro - Zona Sul', 1),
(2, '2025-04-02', 'Zona Oeste - Centro', 2),
(3, '2025-04-03', 'Zona Norte - Zona Leste', 3),
(4, '2025-04-04', 'Zona Sul - Zona Oeste', 4),
(5, '2025-04-05', 'Zona Leste - Centro', 5),
(6, '2025-04-06', 'Centro - Zona Norte', 6),
(7, '2025-04-07', 'Zona Oeste - Zona Leste', 7),
(8, '2025-04-08', 'Zona Sul - Zona Norte', 8),
(9, '2025-04-09', 'Zona Leste - Zona Oeste', 9);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `motorista`
--
ALTER TABLE `motorista`
  ADD PRIMARY KEY (`idMotorista`),
  ADD UNIQUE KEY `cpf_UNIQUE` (`cpf`),
  ADD UNIQUE KEY `habilitacao_UNIQUE` (`habilitacao`);

--
-- Índices de tabela `motorista_has_onibus`
--
ALTER TABLE `motorista_has_onibus`
  ADD PRIMARY KEY (`Motorista_idMotorista`,`Onibus_idOnibus`),
  ADD KEY `fk_Motorista_has_Onibus_Onibus1_idx` (`Onibus_idOnibus`),
  ADD KEY `fk_Motorista_has_Onibus_Motorista1_idx` (`Motorista_idMotorista`);

--
-- Índices de tabela `onibus`
--
ALTER TABLE `onibus`
  ADD PRIMARY KEY (`idOnibus`),
  ADD UNIQUE KEY `placa_UNIQUE` (`placa`);

--
-- Índices de tabela `onibus_has_rota`
--
ALTER TABLE `onibus_has_rota`
  ADD PRIMARY KEY (`Onibus_idOnibus`,`Rota_idRota`),
  ADD KEY `fk_Onibus_has_Rota_Rota1_idx` (`Rota_idRota`),
  ADD KEY `fk_Onibus_has_Rota_Onibus1_idx` (`Onibus_idOnibus`);

--
-- Índices de tabela `parada`
--
ALTER TABLE `parada`
  ADD PRIMARY KEY (`idParada`);

--
-- Índices de tabela `rota`
--
ALTER TABLE `rota`
  ADD PRIMARY KEY (`idRota`),
  ADD KEY `fk_Rota_Parada1_idx` (`Parada_idParada`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `motorista`
--
ALTER TABLE `motorista`
  MODIFY `idMotorista` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `onibus`
--
ALTER TABLE `onibus`
  MODIFY `idOnibus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `parada`
--
ALTER TABLE `parada`
  MODIFY `idParada` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `rota`
--
ALTER TABLE `rota`
  MODIFY `idRota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `motorista_has_onibus`
--
ALTER TABLE `motorista_has_onibus`
  ADD CONSTRAINT `fk_Motorista_has_Onibus_Motorista1` FOREIGN KEY (`Motorista_idMotorista`) REFERENCES `motorista` (`idMotorista`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Motorista_has_Onibus_Onibus1` FOREIGN KEY (`Onibus_idOnibus`) REFERENCES `onibus` (`idOnibus`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `onibus_has_rota`
--
ALTER TABLE `onibus_has_rota`
  ADD CONSTRAINT `fk_Onibus_has_Rota_Onibus1` FOREIGN KEY (`Onibus_idOnibus`) REFERENCES `onibus` (`idOnibus`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Onibus_has_Rota_Rota1` FOREIGN KEY (`Rota_idRota`) REFERENCES `rota` (`idRota`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `rota`
--
ALTER TABLE `rota`
  ADD CONSTRAINT `fk_Rota_Parada1` FOREIGN KEY (`Parada_idParada`) REFERENCES `parada` (`idParada`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
