CREATE DATABASE  IF NOT EXISTS `projeto` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `projeto`;
-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: projeto
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `tbl_banco_mudanca`
--

DROP TABLE IF EXISTS `tbl_banco_mudanca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_banco_mudanca` (
  `id` int NOT NULL AUTO_INCREMENT,
  `vlan_atual` varchar(11) DEFAULT NULL,
  `vlan_anterior` varchar(11) DEFAULT NULL,
  `usuario_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKn5w3piylq74gangxfy5584i9w` (`usuario_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_banco_mudanca`
--

LOCK TABLES `tbl_banco_mudanca` WRITE;
/*!40000 ALTER TABLE `tbl_banco_mudanca` DISABLE KEYS */;
INSERT INTO `tbl_banco_mudanca` VALUES (1,'624.373.080','288.412.145',3),(2,'639.459.120','816.199.075',7),(3,'849.204.374','738.123.298',7),(4,'423.496.611','903.406.071',8),(5,'467.081.519','531.351.290',3),(6,'828.661.776','256.111.186',3),(7,'638.784.198','382.348.304',9),(8,'969.304.674','443.482.396',7),(9,'790.962.624','114.220.667',8),(10,'149.414.283','334.269.722',8),(11,'144.112.111','222.444.111',NULL);
/*!40000 ALTER TABLE `tbl_banco_mudanca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_computador`
--

DROP TABLE IF EXISTS `tbl_computador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_computador` (
  `numserie` int NOT NULL AUTO_INCREMENT,
  `conector` varchar(5) DEFAULT NULL,
  `descricao` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`numserie`)
) ENGINE=MyISAM AUTO_INCREMENT=9815 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_computador`
--

LOCK TABLES `tbl_computador` WRITE;
/*!40000 ALTER TABLE `tbl_computador` DISABLE KEYS */;
INSERT INTO `tbl_computador` VALUES (9813,'9820A','notebook bom'),(1955,'abcd5','xpto'),(4,'abcdc','xpto1'),(2404,'zzcva','xpto'),(1587,'afc','xpto3'),(1547,'abc1','xpto4'),(3990,'abc12','xpto5'),(3798,'abc10','xpto6'),(1751,'zzz12','xpto7'),(270,'a12av','xpto8'),(355,'a689a','xpto9'),(1261,'addds','xpto2'),(9814,'vvcva','xzapto');
/*!40000 ALTER TABLE `tbl_computador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_departamento`
--

DROP TABLE IF EXISTS `tbl_departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_departamento` (
  `id` int NOT NULL AUTO_INCREMENT,
  `andar` int DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `unidade` varchar(100) DEFAULT NULL,
  `vlan` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_departamento`
--

LOCK TABLES `tbl_departamento` WRITE;
/*!40000 ALTER TABLE `tbl_departamento` DISABLE KEYS */;
INSERT INTO `tbl_departamento` VALUES (1,1,'Tecnologia/Servidores','CTO','192.168.100'),(4,2,'Andar2','U1','192.168.001'),(5,3,'Andar3','U3','192.168.003'),(6,4,'Andar4','U4','192.168.004'),(7,5,'Andar5','U5','192.168.005'),(8,8,'Andar6','U6','192.168.006'),(9,9,'Andar8','U7','192.168.008'),(10,10,'Andar10','U8','192.168.009'),(2,2,'Andar0','Z1','192.175.001');
/*!40000 ALTER TABLE `tbl_departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_usuario`
--

DROP TABLE IF EXISTS `tbl_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_usuario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(70) DEFAULT NULL,
  `linkfoto` varchar(200) DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `racf` varchar(7) NOT NULL,
  `senha` varchar(20) DEFAULT NULL,
  `computador_numserie` int DEFAULT NULL,
  `departamento_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK5tk01ywl6mb0maf2pj1ny95fy` (`computador_numserie`),
  KEY `FKstwbvofk5v40vr93bi0apdtg3` (`departamento_id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_usuario`
--

LOCK TABLES `tbl_usuario` WRITE;
/*!40000 ALTER TABLE `tbl_usuario` DISABLE KEYS */;
INSERT INTO `tbl_usuario` VALUES (1,'breno@breno.com.br','image123.jpeg','breno','bfabrcj','breno123',9813,1),(2,'breno2@breno.com.br','image1234.jpeg','breno1','bfabrcz','breno123',9814,2),(3,'dhafford0@drupal.org','http://dummyimage.com/154x130.jpg/dddddd/000000','Dukie','xewyjsr','XbVhDWIj6gZX',1955,4),(4,'cfiddyment9@mapquest.com','http://dummyimage.com/208x208.png/5fa2dd/ffffff','Crissie','seccatj','tWqF7817Wda',2404,10),(5,'icrisall8@aol.com','http://dummyimage.com/145x241.jpg/cc0000/ffffff','Idell','xfxpksc','0RY2O0',355,4),(7,'ewye1@amazon.co.uk','http://dummyimage.com/175x136.jpg/dddddd/000000','Evita','jkxvtwd','PzJg4N',1261,2),(8,'rklemt2@mit.edu','http://dummyimage.com/120x208.jpg/dddddd/000000','Rubin','udfcoxb','eAdqMO',1587,5),(9,'anorcliffe3@walmart.com','http://dummyimage.com/250x181.png/ff4444/ffffff','Ashlee','wottavv','AKYtE92fk5',1547,9),(10,'jfrancesco4@senate.gov','http://dummyimage.com/171x137.png/5fa2dd/ffffff','Jaimie','lphurrz','Qux7niX',3990,1),(11,'wbern5@aol.com','http://dummyimage.com/184x111.bmp/dddddd/000000','Willa','rpfmima','HorhBrE',3798,4),(12,'sgrovier6@jalbum.net','http://dummyimage.com/208x145.bmp/ff4444/ffffff','Stacy','kelkade','aRPSGDOxeqcY',1751,7),(13,'emacieja7@amazon.com','http://dummyimage.com/177x161.png/5fa2dd/ffffff','Elga','lizyhom','xqkMgCw',270,7),(14,'icrisall8@aol.com','http://dummyimage.com/145x241.jpg/cc0000/ffffff','Idell','xfxpksc','0RY2O0',355,4),(16,'breno2@breno.com.br','image1234.jpeg','breno1','bfabrcz','breno123',9814,2),(18,'ewye1@amazon.co.uk','http://dummyimage.com/175x136.jpg/dddddd/000000','Evita','jkxvtwd','PzJg4N',1261,2),(20,'anorcliffe3@walmart.com','http://dummyimage.com/250x181.png/ff4444/ffffff','Ashlee','wottavv','AKYtE92fk5',1547,9),(21,'jfrancesco4@senate.gov','http://dummyimage.com/171x137.png/5fa2dd/ffffff','Jaimie','lphurrz','Qux7niX',3990,1),(22,'wbern5@aol.com','http://dummyimage.com/184x111.bmp/dddddd/000000','Willa','rpfmima','HorhBrE',3798,4),(23,'sgrovier6@jalbum.net','http://dummyimage.com/208x145.bmp/ff4444/ffffff','Stacy','kelkade','aRPSGDOxeqcY',1751,7),(24,'emacieja7@amazon.com','http://dummyimage.com/177x161.png/5fa2dd/ffffff','Elga','lizyhom','xqkMgCw',270,7),(25,'icrisall8@aol.com','http://dummyimage.com/145x241.jpg/cc0000/ffffff','Idell','xfxpksc','0RY2O0',355,4);
/*!40000 ALTER TABLE `tbl_usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-12  9:12:17
