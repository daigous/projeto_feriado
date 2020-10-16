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
-- Table structure for table `itmn330_feriado`
--

DROP TABLE IF EXISTS `itmn330_feriado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itmn330_feriado` (
  `id_feriado` int NOT NULL AUTO_INCREMENT,
  `nome_feriado` varchar(50) DEFAULT NULL,
  `data_inicio` date DEFAULT NULL,
  `data_fim` date DEFAULT NULL,
  `id_agencia` int NOT NULL,
  PRIMARY KEY (`id_feriado`),
  KEY `fk_agencia` (`id_agencia`),
  CONSTRAINT `fk_agencia` FOREIGN KEY (`id_agencia`) REFERENCES `itmn330_agencia` (`id_agencia`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itmn330_feriado`
--

LOCK TABLES `itmn330_feriado` WRITE;
/*!40000 ALTER TABLE `itmn330_feriado` DISABLE KEYS */;
INSERT INTO `itmn330_feriado` VALUES (1,'Natal','2020-12-25','2020-12-25',1),(2,'Aniversario da Cidade','2020-08-15','2020-08-15',3),(3,'Feriado do Diego','2020-10-04','2020-10-04',4),(4,'Carnaval','2021-02-26','2021-03-03',1),(5,'Dia de Caldas','2020-10-19','2020-10-19',5),(6,'Páscoa','2021-04-04','2021-04-04',1),(7,'Revolução Constitucionalista','2021-07-09','2021-07-09',2),(9,'Dia do Butantan','2020-10-28','2020-10-28',2),(10,'Ano novo','2021-01-01','2021-01-01',1),(11,'Consciência Negra','2020-11-20','2020-11-20',1),(12,'Dia de Finados','2020-11-02','2020-11-02',1),(13,'Dia do índio','2020-12-14','2020-12-15',1),(14,'Independência','2021-09-07','2021-09-07',1);
/*!40000 ALTER TABLE `itmn330_feriado` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-16 17:23:16
