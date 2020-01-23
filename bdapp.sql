-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 20-Jan-2020 às 17:27
-- Versão do servidor: 10.4.8-MariaDB
-- versão do PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bdapp`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE `aluno` (
  `codaluno` int(11) NOT NULL,
  `nome` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telefone` varchar(50) DEFAULT NULL,
  `codturma` int(11) DEFAULT NULL,
  `senha` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `aluno`
--

INSERT INTO `aluno` (`codaluno`, `nome`, `email`, `telefone`, `codturma`, `senha`) VALUES
(1234, 'Maria', 'maria@gmail.com', '22999995555', 1, 'maria'),
(1243, 'Paulo', 'paulo@gmail.com', '2299563789', 1, 'paulo'),
(1324, 'Pedro', 'pedro@gmail.com', '2299376254', 2, 'pedro');

-- --------------------------------------------------------

--
-- Estrutura da tabela `disciplina`
--

CREATE TABLE `disciplina` (
  `coddisc` int(11) NOT NULL,
  `materia` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `disciplina`
--

INSERT INTO `disciplina` (`coddisc`, `materia`) VALUES
(1, 'Programação'),
(2, 'Estrutura de dados'),
(3, 'Manutenção');

-- --------------------------------------------------------

--
-- Estrutura da tabela `professor`
--

CREATE TABLE `professor` (
  `codprof` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `senha` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `professor`
--

INSERT INTO `professor` (`codprof`, `nome`, `email`, `telefone`, `senha`) VALUES
(4123, 'Joaquim', 'joaquim@gmail.com', '2299938478', 'joaquim'),
(4231, 'Jose', 'jose@gmail.com', '22997356387', 'jose'),
(4321, 'João', 'joao@gmail.com', '2299998888', 'joao');

-- --------------------------------------------------------

--
-- Estrutura da tabela `reservarsala`
--

CREATE TABLE `reservarsala` (
  `codreserva` int(11) NOT NULL,
  `codsala` int(11) NOT NULL,
  `codturma` int(11) NOT NULL,
  `codprof` int(11) NOT NULL,
  `coddisc` int(11) NOT NULL,
  `codhora` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `reservarsala`
--

INSERT INTO `reservarsala` (`codreserva`, `codsala`, `codturma`, `codprof`, `coddisc`, `codhora`) VALUES
(1, 9, 1, 4123, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sala`
--

CREATE TABLE `sala` (
  `codsala` int(11) NOT NULL,
  `Sala` varchar(10) NOT NULL,
  `qtd_carteira` int(11) NOT NULL,
  `disponivel` varchar(10) DEFAULT NULL,
  `codhora` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `sala`
--

INSERT INTO `sala` (`codsala`, `Sala`, `qtd_carteira`, `disponivel`, `codhora`) VALUES
(9, 'E09', 20, 'ocupada', 1),
(13, 'E13', 20, 'livre', 1),
(15, 'E15', 20, 'livre', 3),
(16, 'E10', 25, 'ocupada', 2),
(17, 'E11', 20, 'livre', 2),
(18, 'E12', 20, 'ocupada', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbhorario`
--

CREATE TABLE `tbhorario` (
  `codhora` int(10) NOT NULL,
  `hora` varchar(15) NOT NULL,
  `qtd_aula` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbhorario`
--

INSERT INTO `tbhorario` (`codhora`, `hora`, `qtd_aula`) VALUES
(1, '18:20-19:10', 1),
(2, '19:10-20:00', 1),
(3, '20:10-21:00', 1),
(4, '21:00-21:50', 1),
(5, '21:50-22:40', 1),
(6, '18:20-20:00', 2),
(7, '19:10-21:00', 2),
(8, '21:00-21:50', 2),
(9, '21:50-22:40', 2),
(10, '18:20-21:00', 3),
(11, '19:10-21:50', 3),
(12, '20:10-22:40', 3),
(13, '18:00-21:50', 4),
(14, '19:10-22:40', 4),
(15, '18:20-22:40', 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma`
--

CREATE TABLE `turma` (
  `codturma` int(11) NOT NULL,
  `turno` varchar(10) DEFAULT NULL,
  `módulo` int(11) NOT NULL,
  `classe` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `turma`
--

INSERT INTO `turma` (`codturma`, `turno`, `módulo`, `classe`) VALUES
(1, 'Noturno', 1, 'modulo 1'),
(2, 'Noturno', 3, 'modulo 2');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`codaluno`),
  ADD KEY `fk_Turma` (`codturma`);

--
-- Índices para tabela `disciplina`
--
ALTER TABLE `disciplina`
  ADD PRIMARY KEY (`coddisc`);

--
-- Índices para tabela `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`codprof`);

--
-- Índices para tabela `reservarsala`
--
ALTER TABLE `reservarsala`
  ADD PRIMARY KEY (`codreserva`),
  ADD KEY `fk_turma` (`codturma`),
  ADD KEY `fk_professor` (`codprof`),
  ADD KEY `fk_sala` (`codsala`),
  ADD KEY `fk_disciplina` (`coddisc`),
  ADD KEY `fk_tbhorario` (`codhora`);

--
-- Índices para tabela `sala`
--
ALTER TABLE `sala`
  ADD PRIMARY KEY (`codsala`),
  ADD KEY `fk_tbhorario` (`codhora`);

--
-- Índices para tabela `tbhorario`
--
ALTER TABLE `tbhorario`
  ADD PRIMARY KEY (`codhora`);

--
-- Índices para tabela `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`codturma`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `disciplina`
--
ALTER TABLE `disciplina`
  MODIFY `coddisc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `professor`
--
ALTER TABLE `professor`
  MODIFY `codprof` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4322;

--
-- AUTO_INCREMENT de tabela `reservarsala`
--
ALTER TABLE `reservarsala`
  MODIFY `codreserva` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;

--
-- AUTO_INCREMENT de tabela `sala`
--
ALTER TABLE `sala`
  MODIFY `codsala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `tbhorario`
--
ALTER TABLE `tbhorario`
  MODIFY `codhora` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `turma`
--
ALTER TABLE `turma`
  MODIFY `codturma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `reservarsala`
--
ALTER TABLE `reservarsala`
  ADD CONSTRAINT `fk_disciplina` FOREIGN KEY (`codDisc`) REFERENCES `disciplina` (`codDisc`),
  ADD CONSTRAINT `fk_professor` FOREIGN KEY (`codProf`) REFERENCES `professor` (`codProf`),
  ADD CONSTRAINT `fk_sala` FOREIGN KEY (`codsala`) REFERENCES `sala` (`codSala`),
  ADD CONSTRAINT `fk_tbhorario` FOREIGN KEY (`codhora`) REFERENCES `tbhorario` (`codhora`),
  ADD CONSTRAINT `fk_turma` FOREIGN KEY (`codTurma`) REFERENCES `turma` (`codTurma`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
