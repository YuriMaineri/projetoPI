-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 23-Out-2019 às 15:50
-- Versão do servidor: 10.4.8-MariaDB
-- versão do PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `app`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria_produto`
--

CREATE TABLE `categoria_produto` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `categoria_produto`
--

INSERT INTO `categoria_produto` (`id`, `nome`) VALUES
(1, 'Stone'),
(2, 'Myra'),
(3, 'Orson'),
(4, 'Noelani'),
(5, 'Darrel'),
(6, 'Guy'),
(7, 'Portia'),
(8, 'Murphy'),
(9, 'Kelsie'),
(10, 'Yael');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `id` int(11) NOT NULL COMMENT '			',
  `nome` varchar(45) NOT NULL,
  `cpf` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`id`, `nome`, `cpf`) VALUES
(1, 'teste', '12312312'),
(3, 'tasddwasdsa', 'dasddas'),
(5, 'Nora', '3'),
(6, 'Darius', '6'),
(7, 'Brock', '1'),
(8, 'Dieter', '10'),
(9, 'Marshall', '5'),
(10, 'Ishmael', '8'),
(11, 'Acton', '5'),
(12, 'Maisie', '2'),
(13, 'Drake', '8'),
(14, 'Quail', '7');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente_telefone`
--

CREATE TABLE `cliente_telefone` (
  `id` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `telefone` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cliente_telefone`
--

INSERT INTO `cliente_telefone` (`id`, `id_cliente`, `telefone`) VALUES
(2, 1, '132312312'),
(3, 3, '423423423423'),
(5, 5, '977299159'),
(6, 6, '103895250'),
(7, 7, '602366214'),
(8, 8, '431261015'),
(9, 9, '099023450'),
(10, 10, '064845541'),
(11, 11, '400556636'),
(12, 12, '642018228'),
(13, 13, '475271795'),
(14, 14, '357041424'),
(15, 1, '31231312313'),
(16, 6, 'vamoqvamo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `colaborador`
--

CREATE TABLE `colaborador` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `login` varchar(25) NOT NULL,
  `senha` varchar(45) NOT NULL,
  `email` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `colaborador`
--

INSERT INTO `colaborador` (`id`, `nome`, `login`, `senha`, `email`) VALUES
(1, 'asd', 'ante@asd.net', 'asdasdad', 'id.anteadssda@cursus.net'),
(2, 'Ralph', 'tempus@leo.net', 'TFS82ILT8FK', 'nascetur.ridiculus.mus@feugiatmetussit.com'),
(3, 'Leroy', 'aliquam@afeugiattellus.co', 'FUB60XMU3OE', 'ultrices.iaculis@Cumsociisnatoque.co.uk'),
(4, 'Alden', 'enim.Sed@nonfeugiatnec.ed', 'BVE05EJZ3OQ', 'eu.eleifend@eratvitaerisus.ca'),
(5, 'Wyatt', 'ornare@ProinmiAliquam.edu', 'CMR04RDI0NI', 'sem@nectellusNunc.ca'),
(6, 'Cadman', 'lobortis.augue.scelerisqu', 'VSH48YTX8QA', 'facilisis.Suspendisse.commodo@pedeetrisus.co.uk'),
(7, 'Marvin', 'mi.lacinia@facilisisegeti', 'XGQ45ZKT5MM', 'arcu.vel@malesuadafringillaest.edu'),
(8, 'Justin', 'odio.Nam@Cras.com', 'ENG84SEG7NW', 'enim@sagittisDuis.ca'),
(9, 'Keaton', 'tincidunt@variusorciin.ca', 'TXB56VJO6EL', 'odio.a.purus@massa.org'),
(10, 'Byron', 'risus@elementumsemvitae.c', 'GCT81IPE1JH', 'Nullam.suscipit.est@nunc.co.uk'),
(11, 'tasdasdsa', 'dasdas', 'hhf4', 'dhhhshd'),
(13, 'tasfedasdsa', 'defasdas', 'hhffe4', 'dhhehshd');

-- --------------------------------------------------------

--
-- Estrutura da tabela `forma_pagamento`
--

CREATE TABLE `forma_pagamento` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `status` enum('ativo','inativo') NOT NULL DEFAULT 'inativo'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `forma_pagamento`
--

INSERT INTO `forma_pagamento` (`id`, `nome`, `status`) VALUES
(5, 'Marny', 'ativo'),
(6, 'Lynn', 'inativo'),
(7, 'Dorian', 'ativo'),
(8, 'Jaime', 'inativo'),
(9, 'Brynn', 'inativo'),
(10, 'Zeph', 'inativo'),
(11, 'Rooney', 'ativo'),
(12, 'Iola', 'ativo'),
(13, 'Ulla', 'ativo'),
(14, 'Coby', 'inativo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `itens_pedido`
--

CREATE TABLE `itens_pedido` (
  `id` int(11) NOT NULL,
  `id_pedido` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `valor` float NOT NULL,
  `id_pagamento` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `itens_pedido`
--

INSERT INTO `itens_pedido` (`id`, `id_pedido`, `id_produto`, `quantidade`, `valor`, `id_pagamento`) VALUES
(1, 1, 6, 3, 193, 1),
(2, 2, 6, 7, 102, 2),
(3, 3, 10, 5, 148, 3),
(4, 4, 8, 10, 203, 4),
(5, 5, 6, 7, 183, 5),
(6, 6, 5, 3, 141, 6),
(7, 7, 6, 4, 106, 7),
(8, 8, 10, 9, 153, 8),
(9, 9, 6, 9, 106, 9),
(10, 10, 5, 10, 176, 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pagamento`
--

CREATE TABLE `pagamento` (
  `id` int(11) NOT NULL,
  `id_forma_pagamento` int(11) NOT NULL,
  `valor` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pagamento`
--

INSERT INTO `pagamento` (`id`, `id_forma_pagamento`, `valor`) VALUES
(1, 5, 2),
(2, 6, 4),
(3, 7, 5),
(4, 8, 7),
(5, 9, 1),
(6, 10, 1),
(7, 11, 8),
(8, 12, 8),
(9, 13, 3),
(10, 14, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido`
--

CREATE TABLE `pedido` (
  `id` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `valor_total` float NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('aguardando','pago') NOT NULL DEFAULT 'aguardando',
  `id_colaborador` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pedido`
--

INSERT INTO `pedido` (`id`, `id_cliente`, `valor_total`, `created_at`, `status`, `id_colaborador`) VALUES
(1, 5, 10, '0000-00-00 00:00:00', 'pago', 1),
(2, 6, 3, '0000-00-00 00:00:00', 'pago', 2),
(3, 7, 9, '0000-00-00 00:00:00', 'pago', 3),
(4, 8, 7, '0000-00-00 00:00:00', 'pago', 4),
(5, 9, 5, '0000-00-00 00:00:00', 'pago', 5),
(6, 10, 6, '0000-00-00 00:00:00', 'pago', 6),
(7, 11, 6, '0000-00-00 00:00:00', 'aguardando', 7),
(8, 12, 7, '0000-00-00 00:00:00', 'pago', 8),
(9, 13, 3, '0000-00-00 00:00:00', 'pago', 9),
(10, 14, 4, '0000-00-00 00:00:00', 'pago', 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `valor` float NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `status` enum('ativo','inativo') NOT NULL DEFAULT 'inativo'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`id`, `nome`, `valor`, `id_categoria`, `status`) VALUES
(5, 'Ishmael', 8, 1, 'ativo'),
(6, 'Tobias', 1, 2, 'ativo'),
(7, 'Amelia', 5, 3, 'ativo'),
(8, 'Ivor', 8, 4, 'ativo'),
(9, 'Lars', 3, 5, 'ativo'),
(10, 'Igor', 1, 6, 'ativo'),
(11, 'Abdul', 1, 7, 'ativo'),
(12, 'Diana', 1, 8, 'ativo'),
(13, 'Hadley', 1, 9, 'ativo'),
(14, 'Shoshana', 1, 10, 'ativo');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `categoria_produto`
--
ALTER TABLE `categoria_produto`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `cliente_telefone`
--
ALTER TABLE `cliente_telefone`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cliente_telefone_1_idx` (`id_cliente`);

--
-- Índices para tabela `colaborador`
--
ALTER TABLE `colaborador`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`),
  ADD UNIQUE KEY `login_UNIQUE` (`login`);

--
-- Índices para tabela `forma_pagamento`
--
ALTER TABLE `forma_pagamento`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `itens_pedido`
--
ALTER TABLE `itens_pedido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_itens_pedido_1_idx` (`id_pedido`),
  ADD KEY `fk_itens_pedido_2_idx` (`id_produto`),
  ADD KEY `fk_itens_pedido_3_idx` (`id_pagamento`);

--
-- Índices para tabela `pagamento`
--
ALTER TABLE `pagamento`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pagamento_2_idx` (`id_forma_pagamento`);

--
-- Índices para tabela `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pedido_1_idx` (`id_cliente`),
  ADD KEY `fk_pedido_2_idx` (`id_colaborador`);

--
-- Índices para tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_produto_1_idx` (`id_categoria`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categoria_produto`
--
ALTER TABLE `categoria_produto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '			', AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `cliente_telefone`
--
ALTER TABLE `cliente_telefone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `colaborador`
--
ALTER TABLE `colaborador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `forma_pagamento`
--
ALTER TABLE `forma_pagamento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `itens_pedido`
--
ALTER TABLE `itens_pedido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `pagamento`
--
ALTER TABLE `pagamento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `pedido`
--
ALTER TABLE `pedido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `cliente_telefone`
--
ALTER TABLE `cliente_telefone`
  ADD CONSTRAINT `fk_cliente_telefone_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `itens_pedido`
--
ALTER TABLE `itens_pedido`
  ADD CONSTRAINT `fk_itens_pedido_1` FOREIGN KEY (`id_pedido`) REFERENCES `pedido` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_itens_pedido_2` FOREIGN KEY (`id_produto`) REFERENCES `produto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_itens_pedido_3` FOREIGN KEY (`id_pagamento`) REFERENCES `pagamento` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `pagamento`
--
ALTER TABLE `pagamento`
  ADD CONSTRAINT `fk_pagamento_2` FOREIGN KEY (`id_forma_pagamento`) REFERENCES `forma_pagamento` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `fk_pedido_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_pedido_2` FOREIGN KEY (`id_colaborador`) REFERENCES `colaborador` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `produto`
--
ALTER TABLE `produto`
  ADD CONSTRAINT `fk_produto_1` FOREIGN KEY (`id_categoria`) REFERENCES `categoria_produto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
