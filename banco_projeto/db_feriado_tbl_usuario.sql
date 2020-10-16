-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: db_feriado
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
-- Table structure for table `tbl_usuario`
--

DROP TABLE IF EXISTS `tbl_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_usuario` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `nome_usuario` varchar(100) NOT NULL,
  `racf` varchar(7) NOT NULL,
  `funcional` varchar(9) NOT NULL,
  `email` varchar(80) NOT NULL,
  `senha` varchar(20) NOT NULL,
  `link_foto` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `nome_usuario` (`nome_usuario`),
  UNIQUE KEY `racf` (`racf`),
  UNIQUE KEY `funcional` (`funcional`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_usuario`
--

LOCK TABLES `tbl_usuario` WRITE;
/*!40000 ALTER TABLE `tbl_usuario` DISABLE KEYS */;
INSERT INTO `tbl_usuario` VALUES (1,'Professor Isidro','pisidro','123456789','isidro@isidro.com','1234','https://avatars2.githubusercontent.com/u/6184696?s=460&v=4'),(2,'Mega Man','megaman','123456780','mega@man.com','1234','https://cdnstatic8.com/eaglepatches.com.br/image/cache/data-patch-bordado-megaman-570x570.jpg'),(3,'Tico','ticotic','987654321','tico@ticoeteco.com','1234','https://lh3.googleusercontent.com/proxy/qXAI_NB59M-F_5CHJdeZtMAGGjUfSeO-Aw6VnLEheFBmtofBvdbGsoUas2bMV9MGy2BjQx5QaPBzOzYku5yFkwHBww_1TdSFazxQYkxQpkxnwoLXasMn5UgYBPeffHwtXIGuFK0f'),(4,'Teco','tecotec','987123456','teco@ticoeteco.com','1234','https://lh3.googleusercontent.com/proxy/g6XjEsEi91oCgdYaVlS7T0qCr3olgNcxa8bYRkpmV79FMj2aXLzGpAT6vKPmVaMVUmEXoWderahBpeleh9Pq9OPH76weRyDFL363eIQJBcnh4JBuNDY1dSZACypwlAes9VHgaozW');
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

-- Dump completed on 2020-10-16 17:23:14
