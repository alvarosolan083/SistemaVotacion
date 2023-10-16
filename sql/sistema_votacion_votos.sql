-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: sistema_votacion
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.28-MariaDB

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
-- Table structure for table `votos`
--

DROP TABLE IF EXISTS `votos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `votos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `rut` varchar(15) NOT NULL,
  `email` varchar(255) NOT NULL,
  `region` varchar(255) NOT NULL,
  `comuna` varchar(255) NOT NULL,
  `candidato` varchar(255) NOT NULL,
  `como_se_entero` varchar(255) DEFAULT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `votos`
--

LOCK TABLES `votos` WRITE;
/*!40000 ALTER TABLE `votos` DISABLE KEYS */;
INSERT INTO `votos` VALUES (20,'Alvaro solano','Alvaro1983','15394554-4','alvarosolanocastillo78@gmail.com','Metropolitana de Santiago','La Cisterna','Candidato 2','Internet, Otros','2023-10-15 21:40:42'),
(21,'juanito perez','juanin','16345987-6','alvarosolanocastillo78@gmail.com','Arica y Parinacota','Bulnes','Candidato 1','Internet, Redes Sociales, Amigos/Familiares','2023-10-15 21:43:34'),
(22,'Alvaro solano','ferninnnnnn','10484870-2','alvarosolanocastillo78@gmail.com','Antofagasta','Calbuco','Candidato 1','Internet, Redes Sociales, Amigos/Familiares','2023-10-15 21:46:27'),
(23,'Alvaro solano','ferninnnnnn','15394554-5','alvarosolanocastillo78@gmail.com','Valparaíso','Cabo de Hornos','Candidato 1','Internet, Redes Sociales, Amigos/Familiares','2023-10-15 21:49:05'),
(24,'Alvaro solano','Alvarote','15394554-k','alvarosolanocastillo78@gmail.com','Arica y Parinacota','Calbuco','Candidato 1','Internet, Redes Sociales, Amigos/Familiares','2023-10-15 21:52:27'),
(25,'Alvaro solano','Alvarito','5846109-1','alvarosolanocastillo78@gmail.com','Antofagasta','Cabrero','Candidato 1','Internet, Redes Sociales, Amigos/Familiares, Otros','2023-10-15 21:54:33'),
(26,'Alvaro solano','Alvarito','15394554-6','alvarosolanocastillo78@gmail.com','Antofagasta','Calama','Candidato 1','Internet, Redes Sociales, Amigos/Familiares','2023-10-15 21:57:52'),
(27,'camilo fernandez','Alvarote','21679532-6','alvarosolanocastillo78@gmail.com','Antofagasta','Cabildo','Candidato 1','Internet, Redes Sociales, Amigos/Familiares','2023-10-15 22:07:52'),
(28,'Alvaro solano','Alvarote','21679532-7','alvarosolanocastillo78@gmail.com','Antofagasta','Bulnes','Candidato 1','Internet, Redes Sociales, Amigos/Familiares','2023-10-15 22:13:39'),
(29,'esteban flores','esteban','12564876-5','alvarosolanocastillo78@gmail.com','Tarapacá','Calbuco','Candidato 1','Internet, Redes Sociales, Amigos/Familiares','2023-10-15 22:20:15'),
(30,'pricila perex','perexSSSSS','12345665-2','alvarosolanocastillo78@gmail.com','Coquimbo','Arica','Candidato 1','Redes Sociales, Amigos/Familiares, Otros','2023-10-15 22:41:30'),
(31,'pricila perex','perexSSSSS','12345665-1','alvarosolanocastillo78@gmail.com','Coquimbo','Cabo de Hornos','Candidato 1','Redes Sociales, Otros','2023-10-16 00:06:28'),
(32,'alvaro solano','Alvaro1983','12345665-3','alvarosolanocastillo78@gmail.com','Antofagasta','Antuco','Candidato 2','Internet, Redes Sociales','2023-10-16 00:07:11'),
(33,'Alvaro solano','Alvaro1983','18544383-0','alvarosolanocastillo78@gmail.com','Metropolitana de Santiago','Algarrobo','Candidato 2','Redes Sociales, Amigos/Familiares','2023-10-16 00:09:22'),
(34,'Alvaro solano','Alvaro1983','18544383-7','alvarosolanocastillo78@gmail.com','Metropolitana de Santiago','La Granja','Candidato 2','Redes Sociales, Amigos/Familiares','2023-10-16 00:09:42'),
(35,'Alvaro solano','Alvaro1983','18544383-8','alvarosolanocastillo78@gmail.com','Valparaíso','Casablanca','Candidato 2','Internet, Redes Sociales','2023-10-16 00:10:02'),
(36,'Alvaro solano','Alvaro1983','18544383-1','alvarosolanocastillo78@gmail.com','Metropolitana de Santiago','San Miguel','Candidato 2','Internet, Otros','2023-10-16 00:10:34'),
(37,'camilo le fort ','camilito','19045676-4','camilo@gmail.com','Del Libertador Gral. Bernardo O’Higgins','Rancagua','Candidato 1','Internet, Redes Sociales','2023-10-16 00:13:06'),
(38,'camilo le fort ','camilito','79045676-4','camilo123@gmail.com','Metropolitana de Santiago','La Florida','Candidato 1','Internet, Amigos/Familiares','2023-10-16 00:15:11'),
(39,'juaquin perez','juaco12345','20234543-1','juaco123@gmail.com','Metropolitana de Santiago','Lo Barnechea','Candidato 2','Internet, Redes Sociales','2023-10-16 00:20:38');
/*!40000 ALTER TABLE `votos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-15 21:26:16
