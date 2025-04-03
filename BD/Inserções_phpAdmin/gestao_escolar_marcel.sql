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
-- Banco de dados: `gestao_escolar_marcel`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `aluno`
--

CREATE TABLE `aluno` (
  `idAluno` int(11) NOT NULL,
  `nome_aluno` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `cpf` varchar(45) NOT NULL,
  `endereco` varchar(45) NOT NULL,
  `telefone` varchar(45) NOT NULL,
  `Matricula_idMatricula` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `aluno`
--

INSERT INTO `aluno` (`idAluno`, `nome_aluno`, `email`, `cpf`, `endereco`, `telefone`, `Matricula_idMatricula`) VALUES
(1, 'João Silva', 'joao.silva@aluno.com', '12345678911', 'Rua J, 10 - Centro', '(11) 8888-1111', 1),
(2, 'Maria Oliveira', 'maria.oliveira@aluno.com', '23456789022', 'Av K, 20 - Vila Nova', '(11) 8888-2222', 2),
(3, 'Pedro Souza', 'pedro.souza@aluno.com', '34567890133', 'Rua L, 30 - Jardins', '(11) 8888-3333', 3),
(4, 'Ana Pereira', 'ana.pereira@aluno.com', '45678901244', 'Av M, 40 - Bela Vista', '(11) 8888-4444', 4),
(5, 'Lucas Costa', 'lucas.costa@aluno.com', '56789012355', 'Rua N, 50 - Moema', '(11) 8888-5555', 5),
(6, 'Julia Santos', 'julia.santos@aluno.com', '67890123466', 'Av O, 60 - Pinheiros', '(11) 8888-6666', 6),
(7, 'Mateus Rocha', 'mateus.rocha@aluno.com', '78901234577', 'Rua P, 70 - Itaim', '(11) 8888-7777', 7),
(8, 'Laura Lima', 'laura.lima@aluno.com', '89012345688', 'Av Q, 80 - Perdizes', '(11) 8888-8888', 8),
(9, 'Gabriel Almeida', 'gabriel.almeida@aluno.com', '90123456799', 'Rua R, 90 - Higienópolis', '(11) 8888-9999', 9);

-- --------------------------------------------------------

--
-- Estrutura para tabela `disciplina`
--

CREATE TABLE `disciplina` (
  `idDisciplina` int(11) NOT NULL,
  `nome_disciplinca` varchar(45) NOT NULL,
  `Professor_idProfessor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `disciplina`
--

INSERT INTO `disciplina` (`idDisciplina`, `nome_disciplinca`, `Professor_idProfessor`) VALUES
(8, 'Biologia', 8),
(5, 'Ciências', 5),
(9, 'Educação Física', 9),
(6, 'Física', 6),
(4, 'Geografia', 4),
(3, 'História', 3),
(1, 'Matemática', 1),
(2, 'Português', 2),
(7, 'Química', 7);

-- --------------------------------------------------------

--
-- Estrutura para tabela `disciplina_has_matricula`
--

CREATE TABLE `disciplina_has_matricula` (
  `Disciplina_idDisciplina` int(11) NOT NULL,
  `Matricula_idMatricula` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `disciplina_has_matricula`
--

INSERT INTO `disciplina_has_matricula` (`Disciplina_idDisciplina`, `Matricula_idMatricula`) VALUES
(1, 1),
(1, 9),
(2, 1),
(2, 2),
(3, 2),
(3, 3),
(4, 3),
(4, 4),
(5, 4),
(5, 5),
(6, 5),
(6, 6),
(7, 6),
(7, 7),
(8, 7),
(8, 8),
(9, 8),
(9, 9);

-- --------------------------------------------------------

--
-- Estrutura para tabela `matricula`
--

CREATE TABLE `matricula` (
  `idMatricula` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `matricula`
--

INSERT INTO `matricula` (`idMatricula`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9);

-- --------------------------------------------------------

--
-- Estrutura para tabela `professor`
--

CREATE TABLE `professor` (
  `idProfessor` int(11) NOT NULL,
  `nome_professor` varchar(45) NOT NULL,
  `cpf` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `endereco` varchar(45) NOT NULL,
  `telefone` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `professor`
--

INSERT INTO `professor` (`idProfessor`, `nome_professor`, `cpf`, `email`, `endereco`, `telefone`) VALUES
(1, 'Carlos Silva', '12345678901', 'carlos.silva@escola.com', 'Rua A, 100 - Centro', '(11) 9999-1111'),
(2, 'Ana Oliveira', '23456789012', 'ana.oliveira@escola.com', 'Av B, 200 - Vila Nova', '(11) 9999-2222'),
(3, 'Marcos Souza', '34567890123', 'marcos.souza@escola.com', 'Rua C, 300 - Jardins', '(11) 9999-3333'),
(4, 'Juliana Pereira', '45678901234', 'juliana.pereira@escola.com', 'Av D, 400 - Bela Vista', '(11) 9999-4444'),
(5, 'Ricardo Costa', '56789012345', 'ricardo.costa@escola.com', 'Rua E, 500 - Moema', '(11) 9999-5555'),
(6, 'Fernanda Santos', '67890123456', 'fernanda.santos@escola.com', 'Av F, 600 - Pinheiros', '(11) 9999-6666'),
(7, 'Eduardo Rocha', '78901234567', 'eduardo.rocha@escola.com', 'Rua G, 700 - Itaim', '(11) 9999-7777'),
(8, 'Patricia Lima', '89012345678', 'patricia.lima@escola.com', 'Av H, 800 - Perdizes', '(11) 9999-8888'),
(9, 'Gustavo Almeida', '90123456789', 'gustavo.almeida@escola.com', 'Rua I, 900 - Higienópolis', '(11) 9999-9999');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`idAluno`),
  ADD UNIQUE KEY `telefone_UNIQUE` (`telefone`),
  ADD UNIQUE KEY `cpf_UNIQUE` (`cpf`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`),
  ADD UNIQUE KEY `nome_aluno_UNIQUE` (`nome_aluno`),
  ADD KEY `fk_Aluno_Matricula_idx` (`Matricula_idMatricula`);

--
-- Índices de tabela `disciplina`
--
ALTER TABLE `disciplina`
  ADD PRIMARY KEY (`idDisciplina`,`Professor_idProfessor`),
  ADD UNIQUE KEY `nome_disciplinca_UNIQUE` (`nome_disciplinca`),
  ADD KEY `fk_Disciplina_Professor1_idx` (`Professor_idProfessor`);

--
-- Índices de tabela `disciplina_has_matricula`
--
ALTER TABLE `disciplina_has_matricula`
  ADD PRIMARY KEY (`Disciplina_idDisciplina`,`Matricula_idMatricula`),
  ADD KEY `fk_Disciplina_has_Matricula_Matricula1_idx` (`Matricula_idMatricula`),
  ADD KEY `fk_Disciplina_has_Matricula_Disciplina1_idx` (`Disciplina_idDisciplina`);

--
-- Índices de tabela `matricula`
--
ALTER TABLE `matricula`
  ADD PRIMARY KEY (`idMatricula`);

--
-- Índices de tabela `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`idProfessor`),
  ADD UNIQUE KEY `nome_professor_UNIQUE` (`nome_professor`),
  ADD UNIQUE KEY `cpf_UNIQUE` (`cpf`),
  ADD UNIQUE KEY `telefone_UNIQUE` (`telefone`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `aluno`
--
ALTER TABLE `aluno`
  MODIFY `idAluno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `disciplina`
--
ALTER TABLE `disciplina`
  MODIFY `idDisciplina` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `matricula`
--
ALTER TABLE `matricula`
  MODIFY `idMatricula` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `professor`
--
ALTER TABLE `professor`
  MODIFY `idProfessor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `aluno`
--
ALTER TABLE `aluno`
  ADD CONSTRAINT `fk_Aluno_Matricula` FOREIGN KEY (`Matricula_idMatricula`) REFERENCES `matricula` (`idMatricula`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `disciplina`
--
ALTER TABLE `disciplina`
  ADD CONSTRAINT `fk_Disciplina_Professor1` FOREIGN KEY (`Professor_idProfessor`) REFERENCES `professor` (`idProfessor`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `disciplina_has_matricula`
--
ALTER TABLE `disciplina_has_matricula`
  ADD CONSTRAINT `fk_Disciplina_has_Matricula_Disciplina1` FOREIGN KEY (`Disciplina_idDisciplina`) REFERENCES `disciplina` (`idDisciplina`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Disciplina_has_Matricula_Matricula1` FOREIGN KEY (`Matricula_idMatricula`) REFERENCES `matricula` (`idMatricula`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
