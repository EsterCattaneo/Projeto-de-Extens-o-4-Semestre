drop database doceviver;
CREATE DATABASE  IF NOT EXISTS `doceviver`;
USE `doceviver`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: doceviver
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB
--
-- Table structure for table `cardapio`
--

DROP TABLE IF EXISTS `cardapio`;

CREATE TABLE `cardapio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome_item` varchar(255) NOT NULL,
  `preco` decimal(5,2) NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `detalhes` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cardapio`
--

INSERT INTO `cardapio` VALUES (1,'Pão na Chapa',4.00,'Salgados','Pão francês, manteiga'),(2,'Pão de Queijo',5.00,'Salgados','Polvilho, queijo, leite, ovos'),(3,'Coxinha de Frango',5.50,'Salgados','Frango desfiado, catupiry, massa de farinha de trigo'),(4,'Fatia de Torta de Palmito',10.00,'Vegana','Massa de grão-de-bico, palmito, tomate, cebola'),(5,'Lanche Natural',15.00,'Vegana','Pão integral, alface, tomate, cenoura ralada, tofu'),(6,'Brigadeiro',5.00,'Doces','Leite condensado, chocolate em pó, manteiga'),(7,'Cone Recheado',10.00,'Doces','Massa de cone, doce de leite, cobertura de chocolate'),(8,'Água',3.00,'Bebidas','Água mineral'),(9,'Café',5.00,'Bebidas','Café moído na hora'),(10,'Suco',10.00,'Bebidas','Frutas frescas, água, açúcar (opcional)');

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
CREATE TABLE `clientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `data_nascimento` date DEFAULT NULL,
  `data_registro` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


--
-- Dumping data for table `clientes`
--
INSERT INTO `clientes` VALUES (1,'Carlos Oliveira','carlos.oliveira@email.com','senha123','1999-07-23','2024-08-26 19:27:13'),(2,'Fernanda Souza','fernanda.souza@email.com','segura456',NULL,'2024-08-26 19:27:13'),(3,'Roberto Lima','roberto.lima@email.com','minhasenha789','1956-06-21','2024-08-26 19:27:13'),(4,'Juliana Costa','juliana.costa@email.com','password321','2001-03-09','2024-08-26 19:27:13'),(5,'Bruno Cardoso','bruno.cardoso@email.com','segura123','2002-05-19','2024-08-26 19:27:13'),(6,'Mariana Duarte','mariana.duarte@email.com','senha456','2006-01-01','2024-08-26 19:27:13'),(7,'gigi linda','gigi@email.com','minhasenha','1999-08-09','2024-08-26 19:27:15');


--
-- Table structure for table `curtida`
--

DROP TABLE IF EXISTS `curtida`;
CREATE TABLE `curtida` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cardapio_id` int(11) NOT NULL,
  `curtidas` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `curtida`
--
INSERT INTO `curtida` VALUES (1,1,3),(2,2,5),(3,3,4),(4,4,4),(5,5,3),(6,6,1),(7,7,0),(8,8,1);

--
-- Table structure for table `fale_conosco`
--

DROP TABLE IF EXISTS `fale_conosco`;
CREATE TABLE `fale_conosco` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `mensagem` text NOT NULL,
  `data_envio` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fale_conosco`
--

INSERT INTO `fale_conosco` VALUES (1,'Maria Silva','maria.silva@email.com','(11) 98765-4321','Gostaria de saber mais sobre os bolos disponíveis.','2024-08-26 19:27:13'),(2,'João Pereira','joao.pereira@email.com',NULL,'Quais são as opções de doces sem açúcar?','2024-08-26 19:27:13'),(3,'Ana Costa','ana.costa@email.com','(21) 91234-5678','Vocês fazem entregas aos domingos?','2024-08-26 19:27:13'),(4,'Lucas Almeida','lucas.almeida@email.com','(31) 99887-6543','Quais são os horários de funcionamento?','2024-08-26 19:27:13'),(5,'Beatriz Rocha','beatriz.rocha@email.com','(41) 98765-1234','Há opções sem glúten no cardápio?','2024-08-26 19:27:13'),(6,'Pedro Martins','pedro.martins@email.com','(51) 91234-4321','Aceitam encomendas para festas grandes?','2024-08-26 19:27:13');

--
-- Table structure for table `funcionaria_adm`
--

DROP TABLE IF EXISTS `funcionaria_adm`;
CREATE TABLE `funcionaria_adm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `data_contratacao` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `funcionaria_adm`
--

INSERT INTO `funcionaria_adm` VALUES (1,'Juliana Santos','juliana.santos@email.com','admsecure123','2024-08-26 19:27:14'),(2,'Paula Ferreira','paula.ferreira@email.com','senhaadm456','2024-08-26 19:27:14'),(3,'Ricardo Menezes','ricardo.menezes@email.com','admin789','2024-08-26 19:27:14'),(4,'Daniela Lopes','daniela.lopes@email.com','adminpass123','2024-08-26 19:27:14'),(5,'Eduardo Ribeiro','eduardo.ribeiro@email.com','secureadm456','2024-08-26 19:27:14');

--
-- Table structure for table `galeria`
--

DROP TABLE IF EXISTS `galeria`;
CREATE TABLE `galeria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cliente_id` int(11) NOT NULL,
  `comentario` varchar(1000) NOT NULL,
  `cardapio_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cliente_id` (`cliente_id`),
  CONSTRAINT `galeria_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `galeria`
--

INSERT INTO `galeria` VALUES (1,1,'Ótimo atendimento e produtos de qualidade!',0),(2,2,'Adorei a experiência, voltarei mais vezes.',0),(3,3,'Ambiente agradável e comida deliciosa.',0),(4,4,'Recomendo a todos! Atendimento excelente.',0),(5,5,'O pedido chegou rápido e estava tudo perfeito.',0),(6,7,'Amei, muito gostoso',0),(7,7,'lindo',0),(8,7,'Hmmm, muito gostoso',1),(9,7,'amo muito',8),(10,7,'o melhor que ja tomei!!',7),(11,7,'Gostei do chocolate quente',8),(12,7,'Gostei do chocolate quente',8),(13,7,'pipipopo',1),(14,7,'meu bolo preferido!!!',2),(15,7,'uma delicia',3),(16,7,'Crocanto',6),(17,7,'limdo',2);

-- Table structure for table `itens_pedido`
--

DROP TABLE IF EXISTS `itens_pedido`;
CREATE TABLE `itens_pedido` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pedido_id` int(11) DEFAULT NULL,
  `cardapio_id` int(11) DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `preco_unitario` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pedido_id` (`pedido_id`),
  KEY `cardapio_id` (`cardapio_id`),
  CONSTRAINT `itens_pedido_ibfk_1` FOREIGN KEY (`pedido_id`) REFERENCES `pedidos` (`id`),
  CONSTRAINT `itens_pedido_ibfk_2` FOREIGN KEY (`cardapio_id`) REFERENCES `cardapio` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table `itens_pedido`
--

INSERT INTO `itens_pedido` VALUES (1,1,2,3,700.00);

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cliente_id` int(11) DEFAULT NULL,
  `data_pedido` timestamp NOT NULL DEFAULT current_timestamp(),
  `total` decimal(10,2) NOT NULL,
  `status` varchar(50) DEFAULT 'Em processamento',
  PRIMARY KEY (`id`),
  KEY `cliente_id` (`cliente_id`),
  CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pedidos`
--

INSERT INTO `pedidos` VALUES (1,1,'2024-08-26 19:27:14',2100.00,'oook'),(2,2,'2024-08-26 19:27:14',30.00,'Em processamento'),(3,3,'2024-08-26 19:27:14',50.00,'Cancelado'),(4,4,'2024-08-26 19:27:14',45.00,'Em processamento'),(5,5,'2024-08-26 19:27:14',20.00,'Concluído'),(6,6,'2024-08-26 19:27:14',80.00,'Concluído'),(7,1,'2024-08-26 19:27:14',500.00,'Em processamento');

--
-- Table structure for table `pedidos_cardapio`
--

DROP TABLE IF EXISTS `pedidos_cardapio`;
CREATE TABLE `pedidos_cardapio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pedido_id` int(11) DEFAULT NULL,
  `cardapio_id` int(11) DEFAULT NULL,
  `quantidade` int(11) NOT NULL,
  `preco_unitario` decimal(5,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pedido_id` (`pedido_id`),
  KEY `cardapio_id` (`cardapio_id`),
  CONSTRAINT `pedidos_cardapio_ibfk_1` FOREIGN KEY (`pedido_id`) REFERENCES `pedidos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `pedidos_cardapio_ibfk_2` FOREIGN KEY (`cardapio_id`) REFERENCES `cardapio` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pedidos_cardapio`
--

INSERT INTO `pedidos_cardapio` VALUES (1,1,1,1,4.00),(2,1,2,2,5.00),(3,1,3,3,5.50),(4,2,4,2,10.00),(5,2,5,1,15.00),(6,3,6,5,5.00),(7,4,7,2,10.00),(8,4,9,1,5.00),(9,5,8,2,3.00),(10,5,9,1,5.00),(11,6,10,3,10.00),(12,6,7,4,10.00);


-- Dump completed on 2024-11-10 22:18:48
