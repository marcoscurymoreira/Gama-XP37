-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: desafio03
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `cidadeestados`
--

DROP TABLE IF EXISTS `cidadeestados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cidadeestados` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cidade` varchar(45) NOT NULL,
  `estado` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cidadeestados`
--

LOCK TABLES `cidadeestados` WRITE;
/*!40000 ALTER TABLE `cidadeestados` DISABLE KEYS */;
INSERT INTO `cidadeestados` VALUES (1,'Itaperuna','RJ'),(2,'Rio de Janeiro','RJ'),(3,'Campos do Jordão','SP'),(4,'São Paulo','SP'),(5,'Tiradentes','MG'),(6,'Muriaé','MG'),(7,'Vitoria','ES'),(8,'Guarapari','ES');
/*!40000 ALTER TABLE `cidadeestados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(20) NOT NULL,
  `whatsapp` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Marcos Moreira','quinhopd@gmail.com','senha01','22988010609'),(2,'Leonardo Moreira','leo@gmail.com','senha02','22988546698'),(3,'Leonardo Moreira','leo@gmail.com','senha03','22988546698'),(4,'Mateus Gama','mateus@gmail.com','senha04','32999554467'),(5,'Insana Gama','insana@gmail.com','senha05','11999885564'),(6,'Paloma Batista','paloma@gmail.com','senha06','22999564646'),(7,'Jubileu Fonseca','jubileu@gmail.com','senha07','32988547842'),(8,'Isidro Fera','isidro@gmail.com','senha08','11992568741'),(9,'Inaja Okara','inaja@gmail.com','senha09','11994678522'),(10,'Inagora Inaja','inagora@gmail.com','senha10','11988546789');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamentos`
--

DROP TABLE IF EXISTS `departamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departamentos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamentos`
--

LOCK TABLES `departamentos` WRITE;
/*!40000 ALTER TABLE `departamentos` DISABLE KEYS */;
INSERT INTO `departamentos` VALUES (1,'Adaptadores'),(2,'Ferramentas'),(3,'Eletronicos'),(4,'Casa'),(5,'Acessorios'),(6,'Moveis'),(7,'Tablets e Celulares'),(8,'Games'),(9,'Informatica');
/*!40000 ALTER TABLE `departamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enderecos`
--

DROP TABLE IF EXISTS `enderecos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enderecos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipoendereco` varchar(45) NOT NULL,
  `tipoLogradouro` varchar(45) NOT NULL,
  `logradouro` varchar(255) NOT NULL,
  `numero` int NOT NULL,
  `complemento` varchar(45) DEFAULT NULL,
  `CEP` varchar(8) NOT NULL,
  `bairro` varchar(45) NOT NULL,
  `cidadeEstado` int NOT NULL,
  `cliente` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fkCidadeEstado_idx` (`cidadeEstado`),
  KEY `fkCliente_idx` (`cliente`),
  CONSTRAINT `fkCidadeEstado` FOREIGN KEY (`cidadeEstado`) REFERENCES `cidadeestados` (`id`),
  CONSTRAINT `fkClientes` FOREIGN KEY (`cliente`) REFERENCES `clientes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enderecos`
--

LOCK TABLES `enderecos` WRITE;
/*!40000 ALTER TABLE `enderecos` DISABLE KEYS */;
INSERT INTO `enderecos` VALUES (1,'Residencial','Rua','Primeiro de Maio',807,'Altos','28300000','Niteroi',1,1),(2,'Comercial','Av.','Estácio de Sá',1587,'Apto 101','21256578','Centro',2,2),(3,'Residencial','Beco','Beco do Rostie',15,NULL,'11256897','Capivari',3,3),(4,'Comercial','Av.','São João',10,'Esquina com Ipiranga','11587444','Centro',4,4),(5,'Residencial','Praça','Praça Central',1,NULL,'32587000','Centro',5,5),(6,'Residencial','Beco','Beco da Baiana',58,'Casa 02','32587000','Belvedere',6,6),(7,'Residencial','Av.','Praiana',550,'Apto 507','28578466','Praia da Costa',7,7),(8,'Residencial','Av.','Beira Mar',421,'Apto 501','28547000','Praia do Centro',8,8),(9,'Residencial','Rua','Palmeiras',150,NULL,'25666897','Centro',8,9),(10,'Residencial','Av.','Lumiar',587,NULL,'26444897','Centro',7,10);
/*!40000 ALTER TABLE `enderecos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estoques`
--

DROP TABLE IF EXISTS `estoques`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estoques` (
  `id` int NOT NULL AUTO_INCREMENT,
  `produto` int NOT NULL,
  `quantidade` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fkproduto_idx` (`produto`),
  CONSTRAINT `fkproduto` FOREIGN KEY (`produto`) REFERENCES `produtos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estoques`
--

LOCK TABLES `estoques` WRITE;
/*!40000 ALTER TABLE `estoques` DISABLE KEYS */;
INSERT INTO `estoques` VALUES (1,1,10),(2,2,20),(3,3,16),(4,4,3),(5,5,6),(6,6,0),(7,7,2),(8,8,7),(9,9,7),(10,10,2),(11,11,3),(12,12,0),(13,13,16),(14,14,34),(15,15,0),(16,16,45),(17,17,0),(18,18,29);
/*!40000 ALTER TABLE `estoques` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `codigo` int NOT NULL,
  `data` datetime NOT NULL,
  `pedidostatus` int NOT NULL,
  `cliente` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fkStatus_idx` (`pedidostatus`),
  KEY `fkCliente_idx` (`cliente`),
  CONSTRAINT `fkCliente` FOREIGN KEY (`cliente`) REFERENCES `clientes` (`id`),
  CONSTRAINT `fkPedidoStatus` FOREIGN KEY (`pedidostatus`) REFERENCES `pedidosstatus` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,1234555,'2021-05-21 00:00:00',1,2),(2,123678,'2021-05-20 00:00:00',1,4),(3,456789,'2021-05-19 00:00:00',2,4),(4,934675,'2021-05-17 00:00:00',2,2),(5,983377,'2021-05-13 00:00:00',3,5),(6,129836,'2021-05-12 00:00:00',3,5),(7,873743,'2021-05-10 00:00:00',4,6);
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidosstatus`
--

DROP TABLE IF EXISTS `pedidosstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidosstatus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidosstatus`
--

LOCK TABLES `pedidosstatus` WRITE;
/*!40000 ALTER TABLE `pedidosstatus` DISABLE KEYS */;
INSERT INTO `pedidosstatus` VALUES (1,'Novo pedido'),(2,'Cancelado'),(3,'Aguardando pagamento'),(4,'Pagamento autorizado'),(5,'Pagamento negado'),(6,'Em separação'),(7,'Em transporte'),(8,'Entregue');
/*!40000 ALTER TABLE `pedidosstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `codigoProduto` varchar(45) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `preco` double NOT NULL,
  `disponivel` int NOT NULL,
  `emDestaque` int NOT NULL,
  `departamento` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fkDepartamento_idx` (`departamento`),
  CONSTRAINT `fkDepartamento` FOREIGN KEY (`departamento`) REFERENCES `departamentos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (1,'25754','ADAPTADOR BLUETOOH USB RECEPTOR DE AUDIO P2',5,1,1,1),(2,'20212','ADAPTADOR CONECTOR HDMI FEMEA L / FEMEA',2.8,1,1,1),(3,'11719','ALICATE PARA CRIMPAR TL-315 3 EM 1',15,1,1,2),(4,'15883','CADEADO SEGURANCA PARA NOTEBOOK HLD F\\u0026K LLAVE',6.5,1,2,2),(5,'23213','ANTENA P/TV DIGITAL KOLKE KVV288 INTERNA VHF/UHF/FHD PRETO',9,1,1,3),(6,'18092','APRESENTADOR LASER SATELLITE LR-26R PRETO',8,2,2,3),(7,'26414','ASPIRADOR NAPPO NLAR-063 ROBOT WIFI 350ML PRETO',87,1,2,4),(8,'26333','BABA ELETRONICA MOTOROLA MBP161TIMER BRANCO',36.5,1,1,4),(9,'16845','BASTAO SELFIE BLUETOOTH HAVIT HV-BTM33 PRETO',8.1,1,1,5),(10,'8971','BATERIA GOLINE ALKALINE 9V 500MAH',1.2,1,1,5),(11,'27065','CADEIRA GAMER HAVIT 922 GAMENOTE VERMELHO',185,1,2,6),(12,'20437','CADEIRA GAMER MTEK MK01 PRETO/AZUL',175,2,2,6),(13,'24672','CEL SAMSUNG A31 A315G 4GB/128GB AZUL DUAL SIM LTE 6.4',204.5,1,1,7),(14,'27131','TABLET AMAZON FIRE  HD8 KIDS EDITION 2GB/32GB AZUL WIFI/QUAD CORE 8\\u0027\\u0027',99,1,2,7),(15,'23734','CONSOLE NINTENDO SWITCH LITE DH-S-YAZAA AMARELO',205,2,2,8),(16,'26335','CONSOLE SONY PS4 SLIM 1TB CUH-2215B PRETO BIVOLT',382,1,1,8),(17,'25678','DESKTOP ACER C24-963-UA91 I3-1005G1 1.2GHz/8GB/512GB SSD/23.8FHD IPS/W10/INGLES PRETO',750,2,2,9),(18,'27707','FONE C/ MICROFONE JBL C50HI PRETO',7,1,1,9);
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtospedidos`
--

DROP TABLE IF EXISTS `produtospedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtospedidos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) NOT NULL,
  `precoUnitario` double NOT NULL,
  `quantidade` int NOT NULL,
  `precoTotal` varchar(45) NOT NULL,
  `pedido` int NOT NULL,
  `produtofk` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fkPedidoId_idx` (`pedido`),
  KEY `fkProduto_idx` (`produtofk`),
  CONSTRAINT `fkPedido` FOREIGN KEY (`pedido`) REFERENCES `pedidos` (`id`),
  CONSTRAINT `fkProdutoFk` FOREIGN KEY (`produtofk`) REFERENCES `produtos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtospedidos`
--

LOCK TABLES `produtospedidos` WRITE;
/*!40000 ALTER TABLE `produtospedidos` DISABLE KEYS */;
INSERT INTO `produtospedidos` VALUES (11,'ADAPTADOR BLUETOOH USB RECEPTOR DE AUDIO P2',5,2,'10',1,1),(15,'ADAPTADOR CONECTOR HDMI FEMEA L / FEMEA',2.8,5,'14',1,2),(16,'ALICATE PARA CRIMPAR TL-315 3 EM 1',15,2,'30',2,3),(17,'ADAPTADOR BLUETOOH USB RECEPTOR DE AUDIO P2',5,3,'15',2,1),(18,'ANTENA P/TV DIGITAL KOLKE KVV288 INTERNA VHF/UHF/FHD PRETO',9,2,'18',3,5),(19,'APRESENTADOR LASER SATELLITE LR-26R PRETO',8,2,'16',4,6),(20,'ASPIRADOR NAPPO NLAR-063 ROBOT WIFI 350ML PRETO',87,1,'87',5,7),(21,'CADEIRA GAMER HAVIT 922 GAMENOTE VERMELHO',185,1,'185',6,11),(22,'CEL SAMSUNG A31 A315G 4GB/128GB AZUL DUAL SIM LTE 6.4',204.5,1,'204.5',7,13);
/*!40000 ALTER TABLE `produtospedidos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-24 18:10:46
