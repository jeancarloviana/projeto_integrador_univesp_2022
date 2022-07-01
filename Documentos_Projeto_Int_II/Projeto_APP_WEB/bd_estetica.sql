-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.4.21-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para bd_estetica
CREATE DATABASE IF NOT EXISTS `bd_estetica` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `bd_estetica`;

-- Copiando estrutura para tabela bd_estetica.tb01_funcionario
CREATE TABLE IF NOT EXISTS `tb01_funcionario` (
  `tb01_cpf` int(11) NOT NULL,
  `tb01_nome` varchar(50) DEFAULT NULL,
  `tb01_telefone` int(11) DEFAULT NULL,
  `tb01_funcao` varchar(50) DEFAULT NULL,
  `tb01_senha` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`tb01_cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela bd_estetica.tb01_funcionario: ~1 rows (aproximadamente)
DELETE FROM `tb01_funcionario`;
/*!40000 ALTER TABLE `tb01_funcionario` DISABLE KEYS */;
INSERT INTO `tb01_funcionario` (`tb01_cpf`, `tb01_nome`, `tb01_telefone`, `tb01_funcao`, `tb01_senha`) VALUES
	(1, 'admin', 1, NULL, '123');
/*!40000 ALTER TABLE `tb01_funcionario` ENABLE KEYS */;

-- Copiando estrutura para tabela bd_estetica.tb02_servico
CREATE TABLE IF NOT EXISTS `tb02_servico` (
  `tb02_id` int(11) NOT NULL AUTO_INCREMENT,
  `tb02_nome` varchar(50) NOT NULL,
  `tb02_preco` float NOT NULL,
  `tb02_tempo` time NOT NULL,
  PRIMARY KEY (`tb02_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela bd_estetica.tb02_servico: ~0 rows (aproximadamente)
DELETE FROM `tb02_servico`;
/*!40000 ALTER TABLE `tb02_servico` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb02_servico` ENABLE KEYS */;

-- Copiando estrutura para tabela bd_estetica.tb03_cliente
CREATE TABLE IF NOT EXISTS `tb03_cliente` (
  `tb03_cpf` int(11) NOT NULL,
  `tb03_nome` varchar(50) NOT NULL,
  `tb03_telefone` int(11) NOT NULL,
  `tb03_data` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`tb03_cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela bd_estetica.tb03_cliente: ~0 rows (aproximadamente)
DELETE FROM `tb03_cliente`;
/*!40000 ALTER TABLE `tb03_cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb03_cliente` ENABLE KEYS */;

-- Copiando estrutura para tabela bd_estetica.tb04_agenda
CREATE TABLE IF NOT EXISTS `tb04_agenda` (
  `tb04_id` int(11) NOT NULL AUTO_INCREMENT,
  `tb04_cpf_func` int(11) DEFAULT 0,
  `tb04_id_servico` int(11) DEFAULT 0,
  `tb04_cpf_cliente` int(11) DEFAULT 0,
  `tb04_data` varchar(50) DEFAULT '0',
  PRIMARY KEY (`tb04_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela bd_estetica.tb04_agenda: ~0 rows (aproximadamente)
DELETE FROM `tb04_agenda`;
/*!40000 ALTER TABLE `tb04_agenda` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb04_agenda` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
