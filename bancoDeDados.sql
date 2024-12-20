CREATE DATABASE  IF NOT EXISTS `doceviver` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `doceviver`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: doceviver
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cardapio`
--

DROP TABLE IF EXISTS `cardapio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cardapio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome_item` varchar(255) NOT NULL,
  `preco` decimal(5,2) NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `detalhes` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cardapio`
--

LOCK TABLES `cardapio` WRITE;
/*!40000 ALTER TABLE `cardapio` DISABLE KEYS */;
INSERT INTO `cardapio` VALUES (1,'Pão na Chapa',40.00,'Salgados','Pão francês, manteiga'),(2,'Pão de Queijo',9.00,'Salgados','Polvilho, queijo, leite, ovos'),(3,'Coxinha de Frango',5.50,'Salgados','Frango desfiado, catupiry, massa de farinha de trigo'),(4,'Fatia de Torta de Palmito',10.00,'Vegana','Massa de grão-de-bico, palmito, tomate, cebola'),(5,'Lanche Natural',15.00,'Vegana','Pão integral, alface, tomate, cenoura ralada, tofu'),(6,'Brigadeiro',5.00,'Doces','Leite condensado, chocolate em pó, manteiga'),(7,'Cone Recheado',8.60,'Doces','Massa de cone, doce de leite, cobertura de chocolate'),(8,'Água',3.00,'Bebidas','Água mineral'),(9,'Café',5.07,'Bebidas','Café moído na hora'),(10,'Suco',10.00,'Bebidas','Frutas frescas, água, açúcar (opcional)');
/*!40000 ALTER TABLE `cardapio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `data_nascimento` date DEFAULT NULL,
  `data_registro` timestamp NOT NULL DEFAULT current_timestamp(),
  `admin` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Carlos Oliveira','carlos.oliveira@email.com','senha123','1999-07-23','2024-08-26 19:27:13',0),(2,'Fernanda Souza','fernanda.souza@email.com','segura456',NULL,'2024-08-26 19:27:13',0),(3,'Roberto Lima','roberto.lima@email.com','minhasenha789','1956-06-21','2024-08-26 19:27:13',0),(4,'Juliana Costa','juliana.costa@email.com','password321','2001-03-09','2024-08-26 19:27:13',0),(5,'Bruno Cardoso','bruno.cardoso@email.com','segura123','2002-05-19','2024-08-26 19:27:13',0),(6,'Mariana Duarte','mariana.duarte@email.com','senha456','2006-01-01','2024-08-26 19:27:13',0),(7,'gigi linda','gigi@email.com','minhasenha','1999-08-09','2024-08-26 19:27:15',0),(8,'Fe','fe@gmail.com','123456','2001-04-08','2024-12-07 19:36:22',0),(9,'Fe','fe@gmail.com','123456','2001-04-08','2024-12-07 19:36:39',0),(10,'Gi','gi@gi.com','GigiAmaOFefeEVic','2003-05-11','2024-12-07 19:37:36',0),(57,'Ester Cattaneo','ester.cattaneo@gmail.com','ca52659d995989a059fd6adeb87f76dc','2004-06-21','2024-12-08 13:21:24',1),(58,'Felipe','maiasssnoty@outlook.com','68199467d21136cd5a7bc5a0cddf5d0d','2001-04-08','2024-12-08 16:32:32',0),(59,'gigis','gigis@gmail.com','d91ec1d45535ebf3d8f6882217d10676','2003-05-11','2024-12-09 01:09:14',1);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curtida`
--

DROP TABLE IF EXISTS `curtida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curtida` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cardapio_id` int(11) NOT NULL,
  `curtidas` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curtida`
--

LOCK TABLES `curtida` WRITE;
/*!40000 ALTER TABLE `curtida` DISABLE KEYS */;
INSERT INTO `curtida` VALUES (1,1,3),(2,2,5),(3,3,5),(4,4,4),(5,5,3),(6,6,1),(7,7,0),(8,8,1);
/*!40000 ALTER TABLE `curtida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fale_conosco`
--

DROP TABLE IF EXISTS `fale_conosco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fale_conosco` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `mensagem` text NOT NULL,
  `data_envio` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fale_conosco`
--

LOCK TABLES `fale_conosco` WRITE;
/*!40000 ALTER TABLE `fale_conosco` DISABLE KEYS */;
INSERT INTO `fale_conosco` VALUES (1,'Maria Silva','maria.silva@email.com','(11) 98765-4321','Gostaria de saber mais sobre os bolos disponíveis.','2024-08-26 19:27:13'),(2,'João Pereira','joao.pereira@email.com',NULL,'Quais são as opções de doces sem açúcar?','2024-08-26 19:27:13'),(3,'Ana Costa','ana.costa@email.com','(21) 91234-5678','Vocês fazem entregas aos domingos?','2024-08-26 19:27:13'),(4,'Lucas Almeida','lucas.almeida@email.com','(31) 99887-6543','Quais são os horários de funcionamento?','2024-08-26 19:27:13'),(5,'Beatriz Rocha','beatriz.rocha@email.com','(41) 98765-1234','Há opções sem glúten no cardápio?','2024-08-26 19:27:13'),(6,'Pedro Martins','pedro.martins@email.com','(51) 91234-4321','Aceitam encomendas para festas grandes?','2024-08-26 19:27:13'),(7,'fefe','felipe@gmail.com','1991911919','Gostei demais, mt bai','2024-12-07 17:22:22');
/*!40000 ALTER TABLE `fale_conosco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faleconosco`
--

DROP TABLE IF EXISTS `faleconosco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faleconosco` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `mensagem` text NOT NULL,
  `data_envio` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faleconosco`
--

LOCK TABLES `faleconosco` WRITE;
/*!40000 ALTER TABLE `faleconosco` DISABLE KEYS */;
INSERT INTO `faleconosco` VALUES (1,'fefe','fe@gmail.com','1991911919','Amei a doceria sô. Só colocar um crem di lei e tá bao','2024-12-07 17:17:15'),(2,'fefe','fe@gmail.com','1991911919','Mt bao, gostei','2024-12-07 17:21:02');
/*!40000 ALTER TABLE `faleconosco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionaria_adm`
--

DROP TABLE IF EXISTS `funcionaria_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionaria_adm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `data_contratacao` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionaria_adm`
--

LOCK TABLES `funcionaria_adm` WRITE;
/*!40000 ALTER TABLE `funcionaria_adm` DISABLE KEYS */;
INSERT INTO `funcionaria_adm` VALUES (1,'Juliana Santos','juliana.santos@email.com','admsecure123','2024-08-26 19:27:14'),(2,'Paula Ferreira','paula.ferreira@email.com','senhaadm456','2024-08-26 19:27:14'),(3,'Ricardo Menezes','ricardo.menezes@email.com','admin789','2024-08-26 19:27:14'),(4,'Daniela Lopes','daniela.lopes@email.com','adminpass123','2024-08-26 19:27:14'),(5,'Eduardo Ribeiro','eduardo.ribeiro@email.com','secureadm456','2024-08-26 19:27:14');
/*!40000 ALTER TABLE `funcionaria_adm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galeria`
--

DROP TABLE IF EXISTS `galeria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galeria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cliente_id` int(11) NOT NULL,
  `comentario` varchar(1000) NOT NULL,
  `cardapio_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cliente_id` (`cliente_id`),
  CONSTRAINT `galeria_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galeria`
--

LOCK TABLES `galeria` WRITE;
/*!40000 ALTER TABLE `galeria` DISABLE KEYS */;
INSERT INTO `galeria` VALUES (1,1,'Ótimo atendimento e produtos de qualidade!',0),(2,2,'Adorei a experiência, voltarei mais vezes.',0),(3,3,'Ambiente agradável e comida deliciosa.',0),(4,4,'Recomendo a todos! Atendimento excelente.',0),(5,5,'O pedido chegou rápido e estava tudo perfeito.',0),(6,7,'Amei, muito gostoso',0),(7,7,'lindo',0),(8,7,'Hmmm, muito gostoso',1),(9,7,'amo muito',8),(10,7,'o melhor que ja tomei!!',7),(11,7,'Gostei do chocolate quente',8),(12,7,'Gostei do chocolate quente',8),(14,7,'meu bolo preferido!!!',2),(15,7,'uma delicia',3),(16,7,'Crocanto',6),(17,7,'limdo',2),(18,7,'meu docinho preferido!',4),(19,7,'minha preferida!!!',5);
/*!40000 ALTER TABLE `galeria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itens_pedido`
--

DROP TABLE IF EXISTS `itens_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itens_pedido`
--

LOCK TABLES `itens_pedido` WRITE;
/*!40000 ALTER TABLE `itens_pedido` DISABLE KEYS */;
INSERT INTO `itens_pedido` VALUES (1,1,2,3,700.00);
/*!40000 ALTER TABLE `itens_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,1,'2024-08-26 19:27:14',2100.00,'oook'),(2,2,'2024-08-26 19:27:14',30.00,'Em processamento'),(3,3,'2024-08-26 19:27:14',50.00,'Cancelado'),(4,4,'2024-08-26 19:27:14',45.00,'Em processamento'),(5,5,'2024-08-26 19:27:14',20.00,'Concluído'),(6,6,'2024-08-26 19:27:14',80.00,'Concluído'),(7,1,'2024-08-26 19:27:14',500.00,'Em processamento');
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos_cardapio`
--

DROP TABLE IF EXISTS `pedidos_cardapio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos_cardapio`
--

LOCK TABLES `pedidos_cardapio` WRITE;
/*!40000 ALTER TABLE `pedidos_cardapio` DISABLE KEYS */;
INSERT INTO `pedidos_cardapio` VALUES (1,1,1,1,4.00),(2,1,2,2,5.00),(3,1,3,3,5.50),(4,2,4,2,10.00),(5,2,5,1,15.00),(6,3,6,5,5.00),(7,4,7,2,10.00),(8,4,9,1,5.00),(9,5,8,2,3.00),(10,5,9,1,5.00),(11,6,10,3,10.00),(12,6,7,4,10.00);
/*!40000 ALTER TABLE `pedidos_cardapio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vw1_pedidos_clientes`
--

DROP TABLE IF EXISTS `vw1_pedidos_clientes`;
/*!50001 DROP VIEW IF EXISTS `vw1_pedidos_clientes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw1_pedidos_clientes` AS SELECT 
 1 AS `pedido_id`,
 1 AS `cliente_nome`,
 1 AS `data_pedido`,
 1 AS `total`,
 1 AS `status`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw2_detalhes_pedidos`
--

DROP TABLE IF EXISTS `vw2_detalhes_pedidos`;
/*!50001 DROP VIEW IF EXISTS `vw2_detalhes_pedidos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw2_detalhes_pedidos` AS SELECT 
 1 AS `pedido_id`,
 1 AS `cliente_nome`,
 1 AS `nome_item`,
 1 AS `quantidade`,
 1 AS `preco_unitario`,
 1 AS `subtotal`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw3_fale_conosco`
--

DROP TABLE IF EXISTS `vw3_fale_conosco`;
/*!50001 DROP VIEW IF EXISTS `vw3_fale_conosco`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw3_fale_conosco` AS SELECT 
 1 AS `mensagem_id`,
 1 AS `remetente`,
 1 AS `email`,
 1 AS `telefone`,
 1 AS `mensagem`,
 1 AS `data_envio`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw4_itens_mais_pedidos`
--

DROP TABLE IF EXISTS `vw4_itens_mais_pedidos`;
/*!50001 DROP VIEW IF EXISTS `vw4_itens_mais_pedidos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw4_itens_mais_pedidos` AS SELECT 
 1 AS `nome_item`,
 1 AS `vezes_pedido`,
 1 AS `quantidade_total`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vw1_pedidos_clientes`
--

/*!50001 DROP VIEW IF EXISTS `vw1_pedidos_clientes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw1_pedidos_clientes` AS select `p`.`id` AS `pedido_id`,`c`.`nome` AS `cliente_nome`,`p`.`data_pedido` AS `data_pedido`,`p`.`total` AS `total`,`p`.`status` AS `status` from (`pedidos` `p` join `clientes` `c` on(`p`.`cliente_id` = `c`.`id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw2_detalhes_pedidos`
--

/*!50001 DROP VIEW IF EXISTS `vw2_detalhes_pedidos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw2_detalhes_pedidos` AS select `p`.`id` AS `pedido_id`,`c`.`nome` AS `cliente_nome`,`cp`.`nome_item` AS `nome_item`,`pc`.`quantidade` AS `quantidade`,`pc`.`preco_unitario` AS `preco_unitario`,`pc`.`quantidade` * `pc`.`preco_unitario` AS `subtotal` from (((`pedidos` `p` join `pedidos_cardapio` `pc` on(`p`.`id` = `pc`.`pedido_id`)) join `cardapio` `cp` on(`pc`.`cardapio_id` = `cp`.`id`)) join `clientes` `c` on(`p`.`cliente_id` = `c`.`id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw3_fale_conosco`
--

/*!50001 DROP VIEW IF EXISTS `vw3_fale_conosco`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw3_fale_conosco` AS select `fale_conosco`.`id` AS `mensagem_id`,`fale_conosco`.`nome` AS `remetente`,`fale_conosco`.`email` AS `email`,`fale_conosco`.`telefone` AS `telefone`,`fale_conosco`.`mensagem` AS `mensagem`,`fale_conosco`.`data_envio` AS `data_envio` from `fale_conosco` order by `fale_conosco`.`data_envio` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw4_itens_mais_pedidos`
--

/*!50001 DROP VIEW IF EXISTS `vw4_itens_mais_pedidos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw4_itens_mais_pedidos` AS select `cp`.`nome_item` AS `nome_item`,count(`pc`.`id`) AS `vezes_pedido`,sum(`pc`.`quantidade`) AS `quantidade_total` from (`pedidos_cardapio` `pc` join `cardapio` `cp` on(`pc`.`cardapio_id` = `cp`.`id`)) group by `cp`.`nome_item` order by sum(`pc`.`quantidade`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-08 22:44:08
