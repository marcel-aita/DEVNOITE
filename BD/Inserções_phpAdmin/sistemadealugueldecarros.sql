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
-- Banco de dados: `sistemadealugueldecarros`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `idCliente` int(11) NOT NULL,
  `nome_cliente` varchar(45) NOT NULL,
  `cpf` varchar(45) NOT NULL,
  `telefone` varchar(45) NOT NULL,
  `email` varchar(100) NOT NULL,
  `endereco` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`idCliente`, `nome_cliente`, `cpf`, `telefone`, `email`, `endereco`) VALUES
(1, 'Marcel', '018706953', '999457473', 'marcel@marcel.com', 'Rua das Vieiras, 1000'),
(2, 'Ana Carolina', '123456789', '988776655', 'ana.carol@email.com', 'Avenida Brasil, 450'),
(3, 'Roberto Almeida', '987654321', '977665544', 'roberto.a@mail.com', 'Rua Flores, 78'),
(4, 'Juliana Santos', '456123789', '966554433', 'juliana.s@outlook.com', 'Travessa das Palmeiras, 33'),
(5, 'Carlos Eduardo', '789456123', '955443322', 'carlos.edu@gmail.com', 'Alameda Santos, 1200'),
(6, 'Fernanda Lima', '321654987', '944332211', 'fe.lima@empresa.com', 'Rua dos Coqueiros, 65'),
(7, 'Ricardo Oliveira', '654987321', '933221100', 'ricardo.oliveira@mail.com', 'Avenida Paulista, 900'),
(8, 'Patrícia Costa', '147258369', '922110099', 'patricia.c@email.com', 'Rua das Acácias, 250'),
(9, 'Lucas Mendes', '258369147', '911009988', 'lucas.m@outlook.com', 'Avenida Central, 777');

-- --------------------------------------------------------

--
-- Estrutura para tabela `contratoaluguel`
--

CREATE TABLE `contratoaluguel` (
  `idContratoAluguel` int(11) NOT NULL,
  `data_devolucao` date NOT NULL,
  `data_retirada` date NOT NULL,
  `Veiculo_idVeiculo` int(11) NOT NULL,
  `Local_idLocal` int(11) NOT NULL,
  `Local_idLocal1` int(11) NOT NULL,
  `Cliente_idCliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `contratoaluguel`
--

INSERT INTO `contratoaluguel` (`idContratoAluguel`, `data_devolucao`, `data_retirada`, `Veiculo_idVeiculo`, `Local_idLocal`, `Local_idLocal1`, `Cliente_idCliente`) VALUES
(17, '2023-01-15', '2023-01-10', 1, 1, 1, 1),
(18, '2023-02-20', '2023-02-15', 2, 2, 2, 2),
(19, '2023-03-25', '2023-03-20', 3, 3, 3, 3),
(20, '2023-04-12', '2023-04-08', 4, 4, 4, 4),
(21, '2023-05-18', '2023-05-13', 5, 5, 5, 5),
(22, '2023-06-22', '2023-06-17', 6, 6, 6, 6),
(23, '2023-07-30', '2023-07-25', 7, 7, 7, 7),
(24, '2023-08-05', '2023-08-01', 8, 8, 8, 8),
(25, '2023-09-10', '2023-09-05', 9, 9, 9, 9);

-- --------------------------------------------------------

--
-- Estrutura para tabela `local`
--

CREATE TABLE `local` (
  `idLocal` int(11) NOT NULL,
  `rua` varchar(100) NOT NULL,
  `cidade` varchar(100) NOT NULL,
  `estado` varchar(100) NOT NULL,
  `cep` varchar(100) NOT NULL,
  `numero` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `local`
--

INSERT INTO `local` (`idLocal`, `rua`, `cidade`, `estado`, `cep`, `numero`) VALUES
(1, 'Avenida Paulista', 'São Paulo', 'SP', '01311000', '1000'),
(2, 'Rua da Praia', 'Santos', 'SP', '11015000', '23'),
(3, 'Praça da Sé', 'São Paulo', 'SP', '01001000', '1'),
(4, 'Rua das Flores', 'Curitiba', 'PR', '80010000', '45'),
(5, 'Avenida Afonso Pena', 'Belo Horizonte', 'MG', '30130000', '1500'),
(6, 'Orla de Atalaia', 'Aracaju', 'SE', '49037000', '12'),
(7, 'Rua das Palmeiras', 'Porto Alegre', 'RS', '90010000', '78'),
(8, 'Avenida Beira Mar', 'Fortaleza', 'CE', '60060000', '250'),
(9, 'Rua XV de Novembro', 'Joinville', 'SC', '89201000', '33');

-- --------------------------------------------------------

--
-- Estrutura para tabela `veiculo`
--

CREATE TABLE `veiculo` (
  `idVeiculo` int(11) NOT NULL,
  `cor` text NOT NULL,
  `quilometragem` varchar(100) NOT NULL,
  `marca` varchar(100) NOT NULL,
  `tipo` varchar(45) NOT NULL,
  `placa` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `veiculo`
--

INSERT INTO `veiculo` (`idVeiculo`, `cor`, `quilometragem`, `marca`, `tipo`, `placa`) VALUES
(1, 'cinza', '17730', 'fiat', 'hatch', 'IWOPQ98'),
(2, 'preto', '15800', 'astra', 'esportivo', 'IQF1377'),
(3, 'preto', '15060', 'alfa romeo', 'sedan', 'IVVT897'),
(4, 'branco', '22500', 'volkswagen', 'sedan', 'ABC1234'),
(5, 'vermelho', '8500', 'ford', 'hatch', 'XYZ5678'),
(6, 'azul', '34200', 'chevrolet', 'suv', 'DEF9012'),
(7, 'prata', '12000', 'toyota', 'pickup', 'GHI3456'),
(8, 'preto', '134500', 'renault', 'hetch', 'IWOPQRST'),
(9, 'vermelho', '123000', 'pegeout', 'semisedan', 'QRTYMN5');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idCliente`),
  ADD UNIQUE KEY `cpf_UNIQUE` (`cpf`),
  ADD UNIQUE KEY `telefone_UNIQUE` (`telefone`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`),
  ADD UNIQUE KEY `endereco_UNIQUE` (`endereco`);

--
-- Índices de tabela `contratoaluguel`
--
ALTER TABLE `contratoaluguel`
  ADD PRIMARY KEY (`idContratoAluguel`),
  ADD KEY `fk_ContratoAluguel_Veiculo1_idx` (`Veiculo_idVeiculo`),
  ADD KEY `fk_ContratoAluguel_Local1_idx` (`Local_idLocal`),
  ADD KEY `fk_ContratoAluguel_Local2_idx` (`Local_idLocal1`),
  ADD KEY `fk_ContratoAluguel_Cliente1_idx` (`Cliente_idCliente`);

--
-- Índices de tabela `local`
--
ALTER TABLE `local`
  ADD PRIMARY KEY (`idLocal`);

--
-- Índices de tabela `veiculo`
--
ALTER TABLE `veiculo`
  ADD PRIMARY KEY (`idVeiculo`),
  ADD UNIQUE KEY `placa_UNIQUE` (`placa`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `contratoaluguel`
--
ALTER TABLE `contratoaluguel`
  MODIFY `idContratoAluguel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de tabela `local`
--
ALTER TABLE `local`
  MODIFY `idLocal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `veiculo`
--
ALTER TABLE `veiculo`
  MODIFY `idVeiculo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `contratoaluguel`
--
ALTER TABLE `contratoaluguel`
  ADD CONSTRAINT `fk_ContratoAluguel_Cliente1` FOREIGN KEY (`Cliente_idCliente`) REFERENCES `cliente` (`idCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ContratoAluguel_Local1` FOREIGN KEY (`Local_idLocal`) REFERENCES `local` (`idLocal`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ContratoAluguel_Local2` FOREIGN KEY (`Local_idLocal1`) REFERENCES `local` (`idLocal`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ContratoAluguel_Veiculo1` FOREIGN KEY (`Veiculo_idVeiculo`) REFERENCES `veiculo` (`idVeiculo`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
