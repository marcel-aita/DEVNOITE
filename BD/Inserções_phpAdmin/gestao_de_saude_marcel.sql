-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 03/04/2025 às 02:12
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
-- Banco de dados: `gestao_de_saude_marcel`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `consulta`
--

CREATE TABLE `consulta` (
  `idConsulta` int(11) NOT NULL,
  `data_hora` timestamp NULL DEFAULT NULL,
  `diagnostico` varchar(200) DEFAULT NULL,
  `receita` varchar(100) DEFAULT NULL,
  `cobranca` decimal(10,0) DEFAULT NULL,
  `Medico_idMedico` int(11) NOT NULL,
  `Paciente_idPaciente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `consulta`
--

INSERT INTO `consulta` (`idConsulta`, `data_hora`, `diagnostico`, `receita`, `cobranca`, `Medico_idMedico`, `Paciente_idPaciente`) VALUES
(1, '2025-04-01 12:00:00', 'Hipertensão arterial', 'Losartana 50mg 1x/dia', 250, 1, 1),
(2, '2025-04-02 13:00:00', 'Dermatite atópica', 'Hidratante específico', 200, 2, 2),
(3, '2025-04-03 14:00:00', 'Consulta de rotina', 'Exames laboratoriais', 180, 3, 3),
(4, '2025-04-04 17:00:00', 'Lombalgia', 'Fisioterapia + anti-inflamatório', 300, 4, 4),
(5, '2025-04-05 18:00:00', 'Resfriado comum', 'Analgésico + repouso', 150, 5, 5),
(6, '2025-04-06 19:00:00', 'Enxaqueca crônica', 'Preventivo de crises', 280, 6, 6),
(7, '2025-04-07 11:00:00', 'Miopia', 'Receita para óculos', 220, 7, 7),
(8, '2025-04-08 12:30:00', 'Ansiedade generalizada', 'Acompanhamento psicológico', 320, 8, 8),
(9, '2025-04-09 13:30:00', 'Check-up anual', 'Encaminhamentos necessários', 350, 9, 9);

-- --------------------------------------------------------

--
-- Estrutura para tabela `consulta_has_especialidade`
--

CREATE TABLE `consulta_has_especialidade` (
  `Consulta_idConsulta` int(11) NOT NULL,
  `Especialidade_idEspecialidade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `consulta_has_especialidade`
--

INSERT INTO `consulta_has_especialidade` (`Consulta_idConsulta`, `Especialidade_idEspecialidade`) VALUES
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
-- Estrutura para tabela `especialidade`
--

CREATE TABLE `especialidade` (
  `idEspecialidade` int(11) NOT NULL,
  `nome_especialidade` varchar(100) NOT NULL,
  `descricao` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `especialidade`
--

INSERT INTO `especialidade` (`idEspecialidade`, `nome_especialidade`, `descricao`) VALUES
(1, 'Cardiologia', 'Especialidade médica que trata do coração e sistema cardiovascular'),
(2, 'Dermatologia', 'Diagnóstico e tratamento de doenças da pele, cabelos e unhas'),
(3, 'Ginecologia', 'Saúde da mulher e sistema reprodutivo feminino'),
(4, 'Ortopedia', 'Tratamento de doenças e lesões do sistema musculoesquelético'),
(5, 'Pediatria', 'Cuidados médicos para crianças e adolescentes'),
(6, 'Neurologia', 'Diagnóstico e tratamento de distúrbios do sistema nervoso'),
(7, 'Oftalmologia', 'Cuidados com a saúde dos olhos e visão'),
(8, 'Psiquiatria', 'Diagnóstico e tratamento de transtornos mentais'),
(9, 'Clínico Geral', 'Atenção primária à saúde para adultos');

-- --------------------------------------------------------

--
-- Estrutura para tabela `especialidade_has_medico`
--

CREATE TABLE `especialidade_has_medico` (
  `Especialidade_idEspecialidade` int(11) NOT NULL,
  `Medico_idMedico` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `especialidade_has_medico`
--

INSERT INTO `especialidade_has_medico` (`Especialidade_idEspecialidade`, `Medico_idMedico`) VALUES
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
-- Estrutura para tabela `medico`
--

CREATE TABLE `medico` (
  `idMedico` int(11) NOT NULL,
  `nome_medico` varchar(45) NOT NULL,
  `crm` varchar(45) NOT NULL,
  `telefone` varchar(45) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `medico`
--

INSERT INTO `medico` (`idMedico`, `nome_medico`, `crm`, `telefone`, `email`) VALUES
(1, 'Dr. Carlos Silva', 'SP-12345', '(11) 9999-1111', 'carlos.silva@clinica.com'),
(2, 'Dra. Ana Oliveira', 'SP-23456', '(11) 9999-2222', 'ana.oliveira@clinica.com'),
(3, 'Dr. Marcos Souza', 'SP-34567', '(11) 9999-3333', 'marcos.souza@clinica.com'),
(4, 'Dra. Juliana Pereira', 'SP-45678', '(11) 9999-4444', 'juliana.pereira@clinica.com'),
(5, 'Dr. Ricardo Costa', 'SP-56789', '(11) 9999-5555', 'ricardo.costa@clinica.com'),
(6, 'Dra. Fernanda Santos', 'SP-67890', '(11) 9999-6666', 'fernanda.santos@clinica.com'),
(7, 'Dr. Eduardo Rocha', 'SP-78901', '(11) 9999-7777', 'eduardo.rocha@clinica.com'),
(8, 'Dra. Patricia Lima', 'SP-89012', '(11) 9999-8888', 'patricia.lima@clinica.com'),
(9, 'Dr. Gustavo Almeida', 'SP-90123', '(11) 9999-9999', 'gustavo.almeida@clinica.com');

-- --------------------------------------------------------

--
-- Estrutura para tabela `paciente`
--

CREATE TABLE `paciente` (
  `idPaciente` int(11) NOT NULL,
  `nome_paciente` varchar(100) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `endereco` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `paciente`
--

INSERT INTO `paciente` (`idPaciente`, `nome_paciente`, `cpf`, `telefone`, `email`, `endereco`) VALUES
(1, 'João da Silva', '12345678901', '(11) 8888-1111', 'joao.silva@email.com', 'Rua A, 100 - Centro'),
(2, 'Maria Oliveira', '23456789012', '(11) 8888-2222', 'maria.oliveira@email.com', 'Av B, 200 - Vila Nova'),
(3, 'Carlos Souza', '34567890123', '(11) 8888-3333', 'carlos.souza@email.com', 'Rua C, 300 - Jardins'),
(4, 'Ana Pereira', '45678901234', '(11) 8888-4444', 'ana.pereira@email.com', 'Av D, 400 - Bela Vista'),
(5, 'Pedro Costa', '56789012345', '(11) 8888-5555', 'pedro.costa@email.com', 'Rua E, 500 - Moema'),
(6, 'Juliana Santos', '67890123456', '(11) 8888-6666', 'juliana.santos@email.com', 'Av F, 600 - Pinheiros'),
(7, 'Marcos Rocha', '78901234567', '(11) 8888-7777', 'marcos.rocha@email.com', 'Rua G, 700 - Itaim'),
(8, 'Fernanda Lima', '89012345678', '(11) 8888-8888', 'fernanda.lima@email.com', 'Av H, 800 - Perdizes'),
(9, 'Ricardo Almeida', '90123456789', '(11) 8888-9999', 'ricardo.almeida@email.com', 'Rua I, 900 - Higienópolis');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `consulta`
--
ALTER TABLE `consulta`
  ADD PRIMARY KEY (`idConsulta`),
  ADD KEY `fk_Consulta_Medico1_idx` (`Medico_idMedico`),
  ADD KEY `fk_Consulta_Paciente1_idx` (`Paciente_idPaciente`);

--
-- Índices de tabela `consulta_has_especialidade`
--
ALTER TABLE `consulta_has_especialidade`
  ADD PRIMARY KEY (`Consulta_idConsulta`,`Especialidade_idEspecialidade`),
  ADD KEY `fk_Consulta_has_Especialidade_Especialidade1_idx` (`Especialidade_idEspecialidade`),
  ADD KEY `fk_Consulta_has_Especialidade_Consulta_idx` (`Consulta_idConsulta`);

--
-- Índices de tabela `especialidade`
--
ALTER TABLE `especialidade`
  ADD PRIMARY KEY (`idEspecialidade`);

--
-- Índices de tabela `especialidade_has_medico`
--
ALTER TABLE `especialidade_has_medico`
  ADD PRIMARY KEY (`Especialidade_idEspecialidade`,`Medico_idMedico`),
  ADD KEY `fk_Especialidade_has_Medico_Medico1_idx` (`Medico_idMedico`),
  ADD KEY `fk_Especialidade_has_Medico_Especialidade1_idx` (`Especialidade_idEspecialidade`);

--
-- Índices de tabela `medico`
--
ALTER TABLE `medico`
  ADD PRIMARY KEY (`idMedico`),
  ADD UNIQUE KEY `crm_UNIQUE` (`crm`),
  ADD UNIQUE KEY `telefone_UNIQUE` (`telefone`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`);

--
-- Índices de tabela `paciente`
--
ALTER TABLE `paciente`
  ADD PRIMARY KEY (`idPaciente`),
  ADD UNIQUE KEY `cpf_UNIQUE` (`cpf`),
  ADD UNIQUE KEY `endereco_UNIQUE` (`endereco`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `consulta`
--
ALTER TABLE `consulta`
  MODIFY `idConsulta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `especialidade`
--
ALTER TABLE `especialidade`
  MODIFY `idEspecialidade` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `medico`
--
ALTER TABLE `medico`
  MODIFY `idMedico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `paciente`
--
ALTER TABLE `paciente`
  MODIFY `idPaciente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `consulta`
--
ALTER TABLE `consulta`
  ADD CONSTRAINT `fk_Consulta_Medico1` FOREIGN KEY (`Medico_idMedico`) REFERENCES `medico` (`idMedico`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Consulta_Paciente1` FOREIGN KEY (`Paciente_idPaciente`) REFERENCES `paciente` (`idPaciente`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `consulta_has_especialidade`
--
ALTER TABLE `consulta_has_especialidade`
  ADD CONSTRAINT `fk_Consulta_has_Especialidade_Consulta` FOREIGN KEY (`Consulta_idConsulta`) REFERENCES `consulta` (`idConsulta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Consulta_has_Especialidade_Especialidade1` FOREIGN KEY (`Especialidade_idEspecialidade`) REFERENCES `especialidade` (`idEspecialidade`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `especialidade_has_medico`
--
ALTER TABLE `especialidade_has_medico`
  ADD CONSTRAINT `fk_Especialidade_has_Medico_Especialidade1` FOREIGN KEY (`Especialidade_idEspecialidade`) REFERENCES `especialidade` (`idEspecialidade`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Especialidade_has_Medico_Medico1` FOREIGN KEY (`Medico_idMedico`) REFERENCES `medico` (`idMedico`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
