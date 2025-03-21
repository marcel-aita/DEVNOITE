-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 21/03/2025 às 00:06
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
-- Banco de dados: `mydb`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cadastro`
--

CREATE TABLE `cadastro` (
  `id_cadastro` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `cpf` varchar(45) NOT NULL,
  `telefone` varchar(45) NOT NULL,
  `email` varchar(100) NOT NULL,
  `endereco_residencial` varchar(255) NOT NULL,
  `data_nascimento` date NOT NULL,
  `data_cadastro` date NOT NULL,
  `id_cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `cadastro`
--

INSERT INTO `cadastro` (`id_cadastro`, `nome`, `cpf`, `telefone`, `email`, `endereco_residencial`, `data_nascimento`, `data_cadastro`, `id_cliente`) VALUES
(1, 'João Silva', '123.456.789-00', '(11) 91234-5678', 'joao.silva@email.com', 'Rua das Flores, 123, São Paulo - SP', '1990-05-15', '2024-03-20', 1),
(2, 'Maria Souza', '987.654.321-00', '(21) 97654-3210', 'maria.souza@email.com', 'Avenida Central, 456, Rio de Janeiro - RJ', '1985-08-22', '2024-03-20', 2),
(3, 'Carlos Pereira', '321.654.987-00', '(31) 99876-5432', 'carlos.pereira@email.com', 'Rua das Palmeiras, 789, Belo Horizonte - MG', '1992-11-30', '2024-03-20', 3),
(4, 'Ana Oliveira', '159.753.486-00', '(41) 91234-5678', 'ana.oliveira@email.com', 'Travessa das Rosas, 321, Curitiba - PR', '1988-02-10', '2024-03-20', 4),
(5, 'Pedro Santos', '258.369.147-00', '(51) 98765-4321', 'pedro.santos@email.com', 'Rua do Comércio, 654, Porto Alegre - RS', '1995-07-05', '2024-03-20', 5),
(6, 'Juliana Mendes', '753.159.852-00', '(61) 99658-7412', 'juliana.mendes@email.com', 'Alameda das Acácias, 987, Brasília - DF', '1991-12-25', '2024-03-20', 6),
(7, 'Rafael Lima', '852.456.123-00', '(71) 98123-4567', 'rafael.lima@email.com', 'Rua das Laranjeiras, 852, Salvador - BA', '1987-06-18', '2024-03-20', 7),
(8, 'Camila Rocha', '654.321.987-00', '(81) 99234-5678', 'camila.rocha@email.com', 'Praça da Liberdade, 753, Recife - PE', '1993-09-09', '2024-03-20', 8),
(9, 'Fernando Alves', '987.123.654-00', '(91) 99987-6543', 'fernando.alves@email.com', 'Avenida Paulista, 159, São Paulo - SP', '1984-04-02', '2024-03-20', 9);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `cpf` varchar(45) NOT NULL,
  `telefone` varchar(45) NOT NULL,
  `email` varchar(100) NOT NULL,
  `endereco_residencial` varchar(255) NOT NULL,
  `data_nascimento` date NOT NULL,
  `data_cadastro` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nome`, `cpf`, `telefone`, `email`, `endereco_residencial`, `data_nascimento`, `data_cadastro`) VALUES
(1, 'Ana Souza', '123.456.789-00', '(11) 98765-4321', 'ana.souza@email.com', 'Rua das Flores, 123, São Paulo - SP', '1990-03-15', '2024-01-10'),
(2, 'Bruno Lima', '234.567.890-11', '(21) 97654-3210', 'bruno.lima@email.com', 'Av. Central, 456, Rio de Janeiro - RJ', '1985-07-22', '2024-02-12'),
(3, 'Carolina Mendes', '345.678.901-22', '(31) 96543-2109', 'carol.mendes@email.com', 'Rua dos Ipês, 789, Belo Horizonte - MG', '1993-12-08', '2024-03-15'),
(4, 'Daniel Oliveira', '456.789.012-33', '(41) 95432-1098', 'daniel.oliveira@email.com', 'Alameda das Palmeiras, 321, Curitiba - PR', '1988-05-30', '2024-04-18'),
(5, 'Eduardo Santos', '567.890.123-44', '(51) 94321-0987', 'eduardo.santos@email.com', 'Travessa do Sol, 654, Porto Alegre - RS', '1991-09-05', '2024-05-20'),
(6, 'Fernanda Ribeiro', '678.901.234-55', '(61) 93210-9876', 'fernanda.ribeiro@email.com', 'Rua Primavera, 987, Brasília - DF', '1995-04-14', '2024-06-22'),
(7, 'Gabriel Costa', '789.012.345-66', '(71) 92109-8765', 'gabriel.costa@email.com', 'Av. das Árvores, 258, Salvador - BA', '1986-11-19', '2024-07-25'),
(8, 'Helena Martins', '890.123.456-77', '(81) 91098-7654', 'helena.martins@email.com', 'Rua do Campo, 369, Recife - PE', '1998-06-27', '2024-08-30'),
(9, 'Igor Ferreira', '901.234.567-88', '(91) 90987-6543', 'igor.ferreira@email.com', 'Estrada Real, 741, Belém - PA', '1992-02-03', '2024-09-05');

-- --------------------------------------------------------

--
-- Estrutura para tabela `estoque`
--

CREATE TABLE `estoque` (
  `id_estoque` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `capacidade` int(11) NOT NULL,
  `endereco` varchar(255) NOT NULL,
  `id_produtos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `estoque`
--

INSERT INTO `estoque` (`id_estoque`, `quantidade`, `capacidade`, `endereco`, `id_produtos`) VALUES
(10, 2, 500, 'Rua das Flores, 123, São Paulo - SP', 10),
(11, 1, 128, 'Avenida Central, 456, Rio de Janeiro - RJ', 11),
(12, 3, 16, 'Rua das Palmeiras, 789, Belo Horizonte - MG', 12),
(13, 5, 1, 'Travessa das Rosas, 321, Curitiba - PR', 13),
(14, 10, 200, 'Rua do Comércio, 654, Porto Alegre - RS', 14),
(15, 1, 350, 'Alameda das Acácias, 987, Brasília - DF', 15),
(16, 1, 450, 'Rua das Laranjeiras, 852, Salvador - BA', 16),
(17, 4, 200, 'Praça da Liberdade, 753, Recife - PE', 17),
(18, 1, 32, 'Avenida Paulista, 159, São Paulo - SP', 18);

-- --------------------------------------------------------

--
-- Estrutura para tabela `fabrica`
--

CREATE TABLE `fabrica` (
  `id_fabrica` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `cnpj` varchar(45) NOT NULL,
  `endereco` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefone` varchar(45) NOT NULL,
  `estoque_id_estoque` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `fabrica`
--

INSERT INTO `fabrica` (`id_fabrica`, `nome`, `cnpj`, `endereco`, `email`, `telefone`, `estoque_id_estoque`) VALUES
(10, 'Eletrônicos Silva', '12.987.654/0001-10', 'Rua das Tecnologias, 100, São Paulo - SP', 'contato@eletronicossilva.com', '(11) 92345-6789', 10),
(11, 'Moveis & Estilo', '98.123.456/0001-22', 'Avenida dos Móveis, 200, Rio de Janeiro - RJ', 'suporte@moveisestilo.com', '(21) 98765-4321', 11),
(12, 'InovaTech', '56.321.789/0001-33', 'Rua da Inovação, 300, Belo Horizonte - MG', 'atendimento@inovatech.com', '(31) 97654-3210', 12),
(13, 'Fashion Moda', '45.876.912/0001-44', 'Travessa das Tendências, 400, Curitiba - PR', 'vendas@fashionmoda.com', '(41) 93456-7890', 13),
(14, 'Delícias Gourmet', '23.234.789/0001-55', 'Rua dos Sabores, 500, Porto Alegre - RS', 'financeiro@deliciasgourmet.com', '(51) 94567-1234', 14),
(15, 'Mundo dos Livros', '34.678.891/0001-66', 'Alameda da Cultura, 600, Brasília - DF', 'contato@mundodoslivros.com', '(61) 95678-2345', 15),
(16, 'Super Eletro', '78.456.345/0001-77', 'Rua das Energias, 700, Salvador - BA', 'suporte@supereletro.com', '(71) 96789-3456', 16),
(17, 'Papelaria Express', '89.567.456/0001-88', 'Praça da Criatividade, 800, Recife - PE', 'atendimento@papelariaexpress.com', '(81) 97890-4567', 17),
(18, 'TecnoSmart', '67.123.234/0001-99', 'Avenida dos Gadgets, 900, São Paulo - SP', 'contato@tecnosmart.com', '(91) 98901-5678', 18);

-- --------------------------------------------------------

--
-- Estrutura para tabela `fornecedor`
--

CREATE TABLE `fornecedor` (
  `id_fornecedor` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `cnpj` varchar(45) NOT NULL,
  `telefone` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `endereco` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `fornecedor`
--

INSERT INTO `fornecedor` (`id_fornecedor`, `nome`, `cnpj`, `telefone`, `email`, `endereco`) VALUES
(1, 'Empresa Alpha', '12.345.678/0001-90', '(11) 91234-5678', 'contato@alpha.com', 'Avenida Paulista, 1000, São Paulo - SP'),
(2, 'Beta Soluções', '98.765.432/0001-21', '(21) 97654-3210', 'suporte@beta.com', 'Rua das Laranjeiras, 200, Rio de Janeiro - RJ'),
(3, 'Gamma Tech', '56.789.123/0001-34', '(31) 99876-5432', 'atendimento@gammatech.com', 'Alameda das Palmeiras, 300, Belo Horizonte - MG'),
(4, 'Delta Corp', '45.678.912/0001-56', '(41) 91234-5678', 'vendas@deltacorp.com', 'Travessa das Rosas, 400, Curitiba - PR'),
(5, 'Epsilon Ltda', '23.456.789/0001-78', '(51) 98765-4321', 'financeiro@epsilon.com', 'Rua do Comércio, 500, Porto Alegre - RS'),
(6, 'Zeta Indústria', '34.567.891/0001-89', '(61) 99658-7412', 'contato@zeta.com', 'Avenida Central, 600, Brasília - DF'),
(7, 'Theta Sistemas', '78.912.345/0001-23', '(71) 98123-4567', 'suporte@theta.com', 'Rua das Acácias, 700, Salvador - BA'),
(8, 'Iota Serviços', '89.123.456/0001-45', '(81) 99234-5678', 'atendimento@iota.com', 'Praça da Liberdade, 800, Recife - PE'),
(9, 'Kappa Logística', '67.891.234/0001-67', '(91) 99987-6543', 'logistica@kappa.com', 'Rodovia BR-101, km 900, Belém - PA');

-- --------------------------------------------------------

--
-- Estrutura para tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `id_funcionario` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `cpf` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `telefone` varchar(45) NOT NULL,
  `endereco` varchar(255) NOT NULL,
  `fornecedor_id_fornecedor` int(11) NOT NULL,
  `fabrica_id_fabrica` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `funcionario`
--

INSERT INTO `funcionario` (`id_funcionario`, `nome`, `cpf`, `email`, `telefone`, `endereco`, `fornecedor_id_fornecedor`, `fabrica_id_fabrica`) VALUES
(1, 'João Silva', '123.456.789-00', 'joao.silva@email.com', '(11) 91234-5678', 'Rua das Palmeiras, 123, São Paulo - SP', 1, 10),
(2, 'Maria Oliveira', '987.654.321-00', 'maria.oliveira@email.com', '(21) 97654-3210', 'Avenida Central, 456, Rio de Janeiro - RJ', 2, 11),
(3, 'Carlos Pereira', '456.789.123-00', 'carlos.pereira@email.com', '(31) 99876-5432', 'Rua do Comércio, 789, Belo Horizonte - MG', 3, 12),
(4, 'Ana Souza', '321.654.987-00', 'ana.souza@email.com', '(41) 91234-5678', 'Travessa das Rosas, 321, Curitiba - PR', 4, 13),
(5, 'Pedro Santos', '789.123.456-00', 'pedro.santos@email.com', '(51) 98765-4321', 'Rua das Laranjeiras, 654, Porto Alegre - RS', 5, 14),
(6, 'Juliana Costa', '159.357.486-00', 'juliana.costa@email.com', '(61) 99658-7412', 'Alameda das Acácias, 987, Brasília - DF', 6, 15),
(7, 'Rafael Lima', '258.369.147-00', 'rafael.lima@email.com', '(71) 98123-4567', 'Praça da Liberdade, 852, Salvador - BA', 7, 16),
(8, 'Camila Rocha', '369.258.147-00', 'camila.rocha@email.com', '(81) 99234-5678', 'Rua dos Girassóis, 753, Recife - PE', 8, 17),
(9, 'Fernando Alves', '147.258.369-00', 'fernando.alves@email.com', '(91) 99987-6543', 'Avenida Paulista, 159, São Paulo - SP', 9, 18);

-- --------------------------------------------------------

--
-- Estrutura para tabela `login`
--

CREATE TABLE `login` (
  `id_login` int(11) NOT NULL,
  `nome_usuario` varchar(100) NOT NULL,
  `data_entrada` varchar(45) NOT NULL,
  `senha_usuário` varchar(45) NOT NULL,
  `cadastro_id_cadastro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `login`
--

INSERT INTO `login` (`id_login`, `nome_usuario`, `data_entrada`, `senha_usuário`, `cadastro_id_cadastro`) VALUES
(1, 'joaosilva', '2024-03-20', 'senha123', 1),
(2, 'mariasouza', '2024-03-20', 'senha456', 2),
(3, 'carlosp', '2024-03-20', 'senha789', 3),
(4, 'anaoliveira', '2024-03-20', 'senha159', 4),
(5, 'pedrosantos', '2024-03-20', 'senha753', 5),
(6, 'julianam', '2024-03-20', 'senha852', 6),
(7, 'rafaellima', '2024-03-20', 'senha951', 7),
(8, 'camilarocha', '2024-03-20', 'senha357', 8),
(9, 'fernandoalves', '2024-03-20', 'senha258', 9);

-- --------------------------------------------------------

--
-- Estrutura para tabela `pagamento`
--

CREATE TABLE `pagamento` (
  `id_pagamento` int(11) NOT NULL,
  `forma_pagamento` varchar(100) NOT NULL,
  `valor` double NOT NULL,
  `data_pagamento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `pagamento`
--

INSERT INTO `pagamento` (`id_pagamento`, `forma_pagamento`, `valor`, `data_pagamento`) VALUES
(1, 'Cartão de Crédito', 150.75, '2024-03-20'),
(2, 'Boleto Bancário', 320.5, '2024-03-19'),
(3, 'Pix', 75, '2024-03-18'),
(4, 'Transferência Bancária', 980.3, '2024-03-17'),
(5, 'Dinheiro', 45.9, '2024-03-16'),
(6, 'Cartão de Débito', 210, '2024-03-15'),
(7, 'Cartão de Crédito', 670.25, '2024-03-14'),
(8, 'Boleto Bancário', 89.99, '2024-03-13'),
(9, 'Pix', 540.6, '2024-03-12');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pedido`
--

CREATE TABLE `pedido` (
  `ID_PEDIDO` int(11) NOT NULL,
  `numero_pedido` int(11) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `valor` double NOT NULL,
  `data_compra` date NOT NULL,
  `status` varchar(45) NOT NULL,
  `pagamento_id_pagamento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `pedido`
--

INSERT INTO `pedido` (`ID_PEDIDO`, `numero_pedido`, `descricao`, `valor`, `data_compra`, `status`, `pagamento_id_pagamento`) VALUES
(1, 1001, 'Compra de eletrônicos', 1500.75, '2024-03-20', 'Pago', 1),
(2, 1002, 'Compra de móveis', 3200.5, '2024-03-19', 'Pendente', 2),
(3, 1003, 'Assinatura de serviço', 75, '2024-03-18', 'Pago', 3),
(4, 1004, 'Compra de roupas', 980.3, '2024-03-17', 'Cancelado', 4),
(5, 1005, 'Compra de alimentos', 45.9, '2024-03-16', 'Pago', 5),
(6, 1006, 'Compra de livros', 210, '2024-03-15', 'Pendente', 6),
(7, 1007, 'Compra de eletrodomésticos', 670.25, '2024-03-14', 'Pago', 7),
(8, 1008, 'Compra de materiais escolares', 89.99, '2024-03-13', 'Cancelado', 8),
(9, 1009, 'Compra de acessórios', 540.6, '2024-03-12', 'Pago', 9);

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `id_produtos` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `codigo_produto` int(11) NOT NULL,
  `data_validade` date NOT NULL,
  `numero_lote` int(11) NOT NULL,
  `data_producao` date NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `valor` double NOT NULL,
  `cliente_id_cliente` int(11) NOT NULL,
  `pedido_ID_PEDIDO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`id_produtos`, `nome`, `quantidade`, `codigo_produto`, `data_validade`, `numero_lote`, `data_producao`, `descricao`, `valor`, `cliente_id_cliente`, `pedido_ID_PEDIDO`) VALUES
(10, 'Notebook Gamer', 2, 12345, '2026-12-31', 9876, '2024-03-10', 'Notebook com processador i7 e 16GB RAM', 7500, 1, 1),
(11, 'Smartphone XYZ', 1, 67890, '2025-11-15', 5432, '2024-02-28', 'Smartphone com câmera tripla e 128GB armazenamento', 3200.5, 2, 2),
(12, 'Fone de Ouvido Bluetooth', 3, 11223, '2025-09-30', 6789, '2024-01-20', 'Fone sem fio com cancelamento de ruído', 750, 3, 3),
(13, 'Camiseta Algodão', 5, 44556, '2025-06-20', 1234, '2024-03-05', 'Camiseta 100% algodão, tamanho M', 250, 4, 4),
(14, 'Chocolate Premium', 10, 99887, '2024-12-10', 7654, '2024-02-15', 'Chocolate amargo 70% cacau', 150, 5, 5),
(15, 'Livro - Inteligência Artificial', 1, 55443, '2030-01-01', 1111, '2024-01-10', 'Livro sobre IA e aprendizado de máquina', 210, 6, 6),
(16, 'Geladeira Frost Free', 1, 66778, '2030-05-30', 9999, '2024-02-20', 'Geladeira 450L, Inox, com dispenser de água', 6700.25, 7, 7),
(17, 'Caderno Universitário', 4, 22334, '2026-03-15', 5555, '2024-03-01', 'Caderno 200 folhas, capa dura', 89.99, 8, 8),
(18, 'Relógio Smartwatch', 1, 88990, '2027-08-25', 7777, '2024-02-05', 'Smartwatch com monitor de batimentos cardíacos', 540.6, 9, 9);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cadastro`
--
ALTER TABLE `cadastro`
  ADD PRIMARY KEY (`id_cadastro`),
  ADD UNIQUE KEY `cpf_UNIQUE` (`cpf`),
  ADD UNIQUE KEY `telefone_UNIQUE` (`telefone`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`),
  ADD KEY `fk_cadastro_cliente1_idx` (`id_cliente`);

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`),
  ADD UNIQUE KEY `telefone_UNIQUE` (`telefone`),
  ADD UNIQUE KEY `cpf_UNIQUE` (`cpf`);

--
-- Índices de tabela `estoque`
--
ALTER TABLE `estoque`
  ADD PRIMARY KEY (`id_estoque`),
  ADD KEY `fk_estoque_produtos1_idx` (`id_produtos`);

--
-- Índices de tabela `fabrica`
--
ALTER TABLE `fabrica`
  ADD PRIMARY KEY (`id_fabrica`),
  ADD UNIQUE KEY `telefone_UNIQUE` (`telefone`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`),
  ADD UNIQUE KEY `cnpj_UNIQUE` (`cnpj`),
  ADD KEY `fk_fabrica_estoque1_idx` (`estoque_id_estoque`);

--
-- Índices de tabela `fornecedor`
--
ALTER TABLE `fornecedor`
  ADD PRIMARY KEY (`id_fornecedor`),
  ADD UNIQUE KEY `cnpj_UNIQUE` (`cnpj`),
  ADD UNIQUE KEY `telefone_UNIQUE` (`telefone`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`);

--
-- Índices de tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`id_funcionario`),
  ADD UNIQUE KEY `cpf_UNIQUE` (`cpf`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`),
  ADD UNIQUE KEY `telefone_UNIQUE` (`telefone`),
  ADD KEY `fk_funcionario_fornecedor1_idx` (`fornecedor_id_fornecedor`),
  ADD KEY `fk_funcionario_fabrica1_idx` (`fabrica_id_fabrica`);

--
-- Índices de tabela `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`),
  ADD UNIQUE KEY `nome_usuario_UNIQUE` (`nome_usuario`),
  ADD KEY `fk_login_cadastro1_idx` (`cadastro_id_cadastro`);

--
-- Índices de tabela `pagamento`
--
ALTER TABLE `pagamento`
  ADD PRIMARY KEY (`id_pagamento`);

--
-- Índices de tabela `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`ID_PEDIDO`),
  ADD KEY `fk_pedido_pagamento1_idx` (`pagamento_id_pagamento`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id_produtos`),
  ADD KEY `fk_produtos_cliente1_idx` (`cliente_id_cliente`),
  ADD KEY `fk_produtos_pedido1_idx` (`pedido_ID_PEDIDO`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cadastro`
--
ALTER TABLE `cadastro`
  MODIFY `id_cadastro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `estoque`
--
ALTER TABLE `estoque`
  MODIFY `id_estoque` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `fabrica`
--
ALTER TABLE `fabrica`
  MODIFY `id_fabrica` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `fornecedor`
--
ALTER TABLE `fornecedor`
  MODIFY `id_fornecedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `id_funcionario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `login`
--
ALTER TABLE `login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `pagamento`
--
ALTER TABLE `pagamento`
  MODIFY `id_pagamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `pedido`
--
ALTER TABLE `pedido`
  MODIFY `ID_PEDIDO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id_produtos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `cadastro`
--
ALTER TABLE `cadastro`
  ADD CONSTRAINT `fk_cadastro_cliente1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `estoque`
--
ALTER TABLE `estoque`
  ADD CONSTRAINT `fk_estoque_produtos1` FOREIGN KEY (`Id_produtos`) REFERENCES `produtos` (`id_produtos`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `fabrica`
--
ALTER TABLE `fabrica`
  ADD CONSTRAINT `fk_fabrica_estoque1` FOREIGN KEY (`estoque_id_estoque`) REFERENCES `estoque` (`id_estoque`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `funcionario`
--
ALTER TABLE `funcionario`
  ADD CONSTRAINT `fk_funcionario_fabrica1` FOREIGN KEY (`fabrica_id_fabrica`) REFERENCES `fabrica` (`id_fabrica`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_funcionario_fornecedor1` FOREIGN KEY (`fornecedor_id_fornecedor`) REFERENCES `fornecedor` (`id_fornecedor`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `fk_login_cadastro1` FOREIGN KEY (`cadastro_id_cadastro`) REFERENCES `cadastro` (`id_cadastro`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `fk_pedido_pagamento1` FOREIGN KEY (`pagamento_id_pagamento`) REFERENCES `pagamento` (`id_pagamento`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `produtos`
--
ALTER TABLE `produtos`
  ADD CONSTRAINT `fk_produtos_cliente1` FOREIGN KEY (`cliente_id_cliente`) REFERENCES `cliente` (`id_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_produtos_pedido1` FOREIGN KEY (`pedido_ID_PEDIDO`) REFERENCES `pedido` (`ID_PEDIDO`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
