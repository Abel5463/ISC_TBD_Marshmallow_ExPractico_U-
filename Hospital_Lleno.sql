CREATE DATABASE  IF NOT EXISTS `hospital` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `hospital`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: hospital
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `cuartos`
--

DROP TABLE IF EXISTS `cuartos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cuartos` (
  `CUARTO_ID` int NOT NULL AUTO_INCREMENT,
  `PACIENTE_ID` int DEFAULT NULL,
  `NUMERO_CUARTO` int NOT NULL,
  `INICIO_ESTADIA` date NOT NULL,
  `FIN_ESTADIA` date DEFAULT NULL,
  PRIMARY KEY (`CUARTO_ID`),
  KEY `PACIENTE_ID` (`PACIENTE_ID`),
  CONSTRAINT `cuartos_ibfk_1` FOREIGN KEY (`PACIENTE_ID`) REFERENCES `pacientes` (`PACIENTE_ID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuartos`
--

LOCK TABLES `cuartos` WRITE;
/*!40000 ALTER TABLE `cuartos` DISABLE KEYS */;
INSERT INTO `cuartos` VALUES (1,1,121,'2017-04-10','2017-04-17'),(2,2,190,'2017-04-11','2017-04-13'),(3,3,108,'2017-04-12','2017-04-17'),(4,4,179,'2017-04-13','2017-04-18'),(5,5,158,'2017-04-14','2017-04-17'),(6,6,183,'2017-04-15','2017-04-16'),(7,7,142,'2017-04-16','2017-04-23'),(8,8,108,'2017-04-17','2017-04-24'),(9,9,100,'2017-04-18','2017-04-23'),(10,10,109,'2017-04-19','2017-04-24'),(11,11,116,'2017-04-20','2017-04-23'),(12,12,182,'2017-04-21','2017-04-24'),(13,13,180,'2017-04-22','2017-04-28'),(14,14,188,'2017-04-23','2017-04-25'),(15,15,173,'2017-04-24','2017-05-01'),(16,16,176,'2017-04-25','2017-04-30'),(17,17,122,'2017-04-26','2017-04-27'),(18,18,155,'2017-04-27','2017-05-07'),(19,19,181,'2017-04-28','2017-04-30'),(20,20,178,'2017-04-29','2017-05-05'),(21,21,139,'2017-04-30','2017-05-07'),(22,22,119,'2017-05-01','2017-05-10'),(23,23,193,'2017-05-02','2017-05-09'),(24,24,153,'2017-05-03','2017-05-04'),(25,25,168,'2017-05-04','2017-05-14'),(26,26,115,'2017-05-05','2017-05-12'),(27,27,140,'2017-05-06','2017-05-09'),(28,28,170,'2017-05-07','2017-05-14'),(29,29,153,'2017-05-08','2017-05-10'),(30,30,177,'2017-05-09','2017-05-14'),(31,31,101,'2017-05-10','2017-05-17'),(32,32,118,'2017-05-11','2017-05-21'),(33,33,120,'2017-05-12','2017-05-19'),(34,34,156,'2017-05-13','2017-05-19'),(35,35,174,'2017-05-14','2017-05-15'),(36,36,156,'2017-05-15','2017-05-19'),(37,37,397,'2017-05-16','2017-05-26'),(38,38,314,'2017-05-17','2017-05-18'),(39,39,385,'2017-05-18','2017-05-24'),(40,40,356,'2017-05-19','2017-05-26'),(41,41,317,'2017-05-20','2017-05-28'),(42,42,305,'2017-05-21','2017-05-29'),(43,43,363,'2017-05-22','2017-05-26'),(44,44,346,'2017-05-23','2017-06-02'),(45,45,396,'2017-05-24','2017-05-31'),(46,46,376,'2017-05-25','2017-06-03'),(47,47,353,'2017-05-26','2017-05-27'),(48,48,342,'2017-05-27','2017-06-06'),(49,49,382,'2017-05-28','2017-05-29'),(50,50,346,'2017-05-29','2017-05-30'),(51,51,349,'2017-05-30','2017-06-02'),(52,52,381,'2017-05-31','2017-06-08'),(53,53,383,'2017-06-01','2017-06-11'),(54,54,339,'2017-06-02','2017-06-07'),(55,55,326,'2017-06-03','2017-06-09'),(56,56,391,'2017-06-04','2017-06-12'),(57,57,377,'2017-06-05','2017-06-13'),(58,58,323,'2017-06-06','2017-06-13');
/*!40000 ALTER TABLE `cuartos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuentas_pacientes`
--

DROP TABLE IF EXISTS `cuentas_pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cuentas_pacientes` (
  `CUENTAS_PACIENTES_ID` int NOT NULL AUTO_INCREMENT,
  `PACIENTE_ID` int DEFAULT NULL,
  `FORMA_PAGO_PAC_ID` int DEFAULT NULL,
  `FECHA_EMISION` date NOT NULL,
  `OTROS` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`CUENTAS_PACIENTES_ID`),
  KEY `PACIENTE_ID` (`PACIENTE_ID`),
  KEY `FORMA_PAGO_PAC_ID` (`FORMA_PAGO_PAC_ID`),
  CONSTRAINT `cuentas_pacientes_ibfk_1` FOREIGN KEY (`PACIENTE_ID`) REFERENCES `pacientes` (`PACIENTE_ID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `cuentas_pacientes_ibfk_2` FOREIGN KEY (`FORMA_PAGO_PAC_ID`) REFERENCES `formas_pago_pacientes` (`FORMA_PAGO_PAC_ID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuentas_pacientes`
--

LOCK TABLES `cuentas_pacientes` WRITE;
/*!40000 ALTER TABLE `cuentas_pacientes` DISABLE KEYS */;
INSERT INTO `cuentas_pacientes` VALUES (1,1,1,'2017-04-20','\r'),(2,2,2,'2017-04-17','\r'),(3,3,3,'2017-04-20','\r'),(4,4,4,'2017-04-22','\r'),(5,5,5,'2017-04-21','\r'),(6,6,6,'2017-04-18','\r'),(7,7,7,'2017-04-24','\r'),(8,8,8,'2017-04-27','\r'),(9,9,9,'2017-04-28','\r'),(10,10,10,'2017-04-27','\r'),(11,11,11,'2017-04-28','\r'),(12,12,12,'2017-04-28','\r'),(13,13,13,'2017-04-29','\r'),(14,14,14,'2017-04-26','\r'),(15,15,15,'2017-05-05','\r'),(16,16,16,'2017-05-02','\r'),(17,17,17,'2017-05-01','\r'),(18,18,18,'2017-05-12','\r'),(19,19,19,'2017-05-03','\r'),(20,20,20,'2017-05-09','\r'),(21,21,21,'2017-05-08','\r'),(22,22,22,'2017-05-14','\r'),(23,23,23,'2017-05-12','\r'),(24,24,24,'2017-05-05','\r'),(25,25,25,'2017-05-19','\r'),(26,26,26,'2017-05-14','\r'),(27,27,27,'2017-05-12','\r'),(28,28,28,'2017-05-15','\r'),(29,29,29,'2017-05-13','\r'),(30,30,30,'2017-05-18','\r'),(31,31,31,'2017-05-20','\r'),(32,32,32,'2017-05-26','\r'),(33,33,33,'2017-05-22','\r'),(34,34,34,'2017-05-21','\r'),(35,35,35,'2017-05-16','\r'),(36,36,36,'2017-05-20','\r'),(37,37,37,'2017-05-27','\r'),(38,38,38,'2017-05-21','\r'),(39,39,39,'2017-05-26','\r'),(40,40,40,'2017-05-31','\r'),(41,41,41,'2017-05-31','\r'),(42,42,42,'2017-06-01','\r'),(43,43,43,'2017-05-27','\r'),(44,44,44,'2017-06-07','\r'),(45,45,45,'2017-06-04','\r'),(46,46,46,'2017-06-07','\r'),(47,47,47,'2017-05-31','\r'),(48,48,48,'2017-06-07','\r'),(49,49,49,'2017-05-31','\r'),(50,50,50,'2017-06-03','\r'),(51,51,51,'2017-06-03','\r'),(52,52,52,'2017-06-10','\r'),(53,53,53,'2017-06-14','\r'),(54,54,54,'2017-06-09','\r'),(55,55,55,'2017-06-14','\r'),(56,56,56,'2017-06-17','\r'),(57,57,57,'2017-06-16','\r'),(58,58,58,'2017-06-15','\r');
/*!40000 ALTER TABLE `cuentas_pacientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuentas_pacientes_detlles`
--

DROP TABLE IF EXISTS `cuentas_pacientes_detlles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cuentas_pacientes_detlles` (
  `CUANTAS_PACIENTES_DET_ID` int NOT NULL AUTO_INCREMENT,
  `CUENTAS_PACIENTES_ID` int DEFAULT NULL,
  `DETALLE` varchar(50) DEFAULT (_utf8mb4'DIAGNOSTICO'),
  `CANTIDAD` double NOT NULL,
  `CSOTO_TOTAL` double NOT NULL,
  PRIMARY KEY (`CUANTAS_PACIENTES_DET_ID`),
  KEY `CUENTAS_PACIENTES_ID` (`CUENTAS_PACIENTES_ID`),
  CONSTRAINT `cuentas_pacientes_detlles_ibfk_1` FOREIGN KEY (`CUENTAS_PACIENTES_ID`) REFERENCES `cuentas_pacientes` (`CUENTAS_PACIENTES_ID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuentas_pacientes_detlles`
--

LOCK TABLES `cuentas_pacientes_detlles` WRITE;
/*!40000 ALTER TABLE `cuentas_pacientes_detlles` DISABLE KEYS */;
INSERT INTO `cuentas_pacientes_detlles` VALUES (1,1,'',6,437557),(2,2,'',5,420352),(3,3,'',4,803455),(4,4,'',6,863833),(5,5,'',2,835504),(6,6,'',4,845256),(7,7,'',3,553474),(8,8,'',3,1299575),(9,9,'',2,1144618),(10,10,'',2,1033289),(11,11,'',5,775124),(12,12,'',5,666403),(13,13,'',4,527460),(14,14,'',6,528996),(15,15,'',3,909453),(16,16,'',3,555734),(17,17,'',4,1318496),(18,18,'',5,903422),(19,19,'',3,584977),(20,20,'',4,968731),(21,21,'',2,932764),(22,22,'',5,1254654),(23,23,'',6,1536903),(24,24,'',3,422753),(25,25,'',4,942310),(26,26,'',3,805018),(27,27,'',6,405645),(28,28,'',6,951084),(29,29,'',6,265126),(30,30,'',3,1113848),(31,31,'',4,824572),(32,32,'',4,844650),(33,33,'',4,1140223),(34,34,'',4,1038846),(35,35,'',2,833046),(36,36,'',6,909805),(37,37,'',3,1000135),(38,38,'',4,431209),(39,39,'',6,513181),(40,40,'',5,593033),(41,41,'',4,941333),(42,42,'',4,1185991),(43,43,'',4,392658),(44,44,'',5,441482),(45,45,'',3,605941),(46,46,'',4,1404520),(47,47,'',5,929980),(48,48,'',4,228805),(49,49,'',2,863760),(50,50,'',2,1170219),(51,51,'',4,224462),(52,52,'',4,680019),(53,53,'',5,1351265),(54,54,'',4,813048),(55,55,'',6,695843),(56,56,'',4,431025),(57,57,'',6,906084),(58,58,'',5,831506);
/*!40000 ALTER TABLE `cuentas_pacientes_detlles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `direcciones`
--

DROP TABLE IF EXISTS `direcciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `direcciones` (
  `DIRECCION_ID` int NOT NULL AUTO_INCREMENT,
  `CALLE` varchar(50) NOT NULL,
  `NUMERO_EXTERIOR` int NOT NULL,
  `NUMERO_INTERIOR` int DEFAULT NULL,
  `COLONIA` varchar(100) NOT NULL,
  `CODIGO_POSTAL` varchar(10) NOT NULL,
  `CIUDAD` varchar(50) NOT NULL,
  `ESTADO` varchar(50) NOT NULL,
  `PAIS` varchar(100) NOT NULL,
  `OTROS` varchar(100) NOT NULL,
  PRIMARY KEY (`DIRECCION_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direcciones`
--

LOCK TABLES `direcciones` WRITE;
/*!40000 ALTER TABLE `direcciones` DISABLE KEYS */;
INSERT INTO `direcciones` VALUES (1,'1 rue Alsace-Lorraine',1,NULL,'No especifica','40620','Toulouse','No especifica','France','\r'),(2,'12 Orchestra Terrace',12,NULL,'No especifica','72299','Walla Walla','WA','USA','\r'),(3,'12, rue des Bouchers',12,NULL,'No especifica','10368','Marseille','No especifica','France','\r'),(4,'120 Hanover Sq.',120,NULL,'No especifica','60155','London','No especifica','UK','\r'),(5,'184, chausse de Tournai',184,NULL,'No especifica','55769','Lille','No especifica','France','\r'),(6,'187 Suffolk Ln.',187,NULL,'No especifica','78271','Boise','ID','USA','\r'),(7,'1900 Oak St.',1900,NULL,'No especifica','85240','Vancouver','BC','Canada','\r'),(8,'2, rue du Commerce',2,NULL,'No especifica','46913','Helsinki','No especifica','','\r'),(9,'23 Tsawassen Blvd.',23,NULL,'No especifica','31994','Tsawassen','BC','Canada','\r'),(10,'24, place Klber',24,NULL,'No especifica','72584','Strasbourg','No especifica','France','\r'),(11,'25, rue Lauriston',25,NULL,'No especifica','43635','Paris','No especifica','France','\r'),(12,'265, boulevard Charonne',265,NULL,'No especifica','26346','Paris','No especifica','France','\r'),(13,'2732 Baker Blvd.',2732,NULL,'No especifica','87535','Eugene','OR','USA','\r'),(14,'2743 Bering St.',2743,NULL,'No especifica','79901','Anchorage','AK','USA','\r'),(15,'2817 Milton Dr.',2817,NULL,'No especifica','85182','Albuquerque','NM','USA','\r'),(16,'305 - 14th Ave. S. Suite 3B',305,3,'No especifica','62245','Oulu','No especifica','Finland','\r'),(17,'35 King George',35,NULL,'No especifica','13216','London','No especifica','UK','\r'),(18,'43 rue St. Laurent',43,NULL,'No especifica','18465','Montral','Qubec','Canada','\r'),(19,'5 Ave. Los Palos Grandes',5,NULL,'No especifica','68441','Caracas','DF','Venezuela','\r'),(20,'54, rue Royale',54,NULL,'No especifica','63117','Nantes','No especifica','France','\r'),(21,'55 Grizzly Peak Rd.',55,NULL,'No especifica','39549','Butte','MT','USA','\r'),(22,'59 rue de l\'Abbaye',59,NULL,'No especifica','21955','Warszawa','No especifica','','\r'),(23,'67, avenue de l\'Europe',67,NULL,'No especifica','42768','Versailles','No especifica','France','\r'),(24,'67, rue des Cinquante Otages',67,NULL,'No especifica','56274','Nantes','No especifica','France','\r'),(25,'722 DaVinci Blvd.',722,NULL,'No especifica','13113','Kirkland','WA','USA','\r'),(26,'8 Johnstown Road',8,NULL,'No especifica','47847','Cork','Co. Cork','Ireland','\r'),(27,'87 Polk St. Suite 5',87,NULL,'No especifica','11981','San Francisco','CA','USA','\r'),(28,'89 Chiaroscuro Rd.',89,NULL,'No especifica','29410','Portland','OR','USA','\r'),(29,'89 Jefferson Way Suite 2',89,NULL,'No especifica','44919','Portland','OR','USA','\r'),(30,'90 Wadhurst Rd.',90,NULL,'No especifica','43827','London','No especifica','UK','\r'),(31,'Adenauerallee 900',900,NULL,'No especifica','86925','Lyon','No especifica','France','\r'),(32,'Alameda dos Canrios, 891',891,NULL,'No especifica','36965','Sao Paulo','SP','Brazil','\r'),(33,'Av. Brasil, 442',442,NULL,'No especifica','68328','Campinas','SP','Brazil','\r'),(34,'Av. Copacabana, 267',267,NULL,'No especifica','34941','Rio de Janeiro','RJ','Brazil','\r'),(35,'Av. del Libertador 900',900,NULL,'No especifica','71252','Buenos Aires','No especifica','Argentina','\r'),(36,'Av. dos Lusadas, 23',23,NULL,'No especifica','84473','Sao Paulo','SP','Brazil','\r'),(37,'Av. Ins de Castro, 414',414,NULL,'No especifica','14942','Sao Paulo','SP','Brazil','\r'),(38,'Avda. Azteca 123',123,NULL,'No especifica','78040','Mxico D.F.','Mxico D.F.','Mexico','\r'),(39,'Avda. de la Constitucin 2222',2222,NULL,'No especifica','71760','Mxico D.F.','Mxico D.F.','Mexico','\r'),(40,'Ave. 5 de Mayo Porlamar',5,NULL,'No especifica','20768','I. de Margarita','Nueva Esparta','Venezuela','\r'),(41,'Berguvsvgen  8',8,NULL,'No especifica','26468','Lule','No especifica','Sweden','\r'),(42,'Berkeley Gardens 12  Brewery',12,NULL,'No especifica','61775','London','No especifica','UK','\r'),(43,'Berliner Platz 43',43,NULL,'No especifica','21914','Mnchen','No especifica','Germany','\r'),(44,'Boulevard Tirou, 255',255,NULL,'No especifica','86215','Charleroi','No especifica','Belgium','\r'),(45,'C/ Araquil, 67',67,NULL,'No especifica','11697','Madrid','No especifica','Spain','\r'),(46,'C/ Moralzarzal, 86',86,NULL,'No especifica','77528','Madrid','No especifica','Spain','\r'),(47,'C/ Romero, 33',33,NULL,'No especifica','18057','Sevilla','No especifica','Spain','\r'),(48,'Calle Dr. Jorge Cash 321',321,NULL,'No especifica','19460','Mxico D.F.','Mxico D.F.','Mexico','\r'),(49,'Carrera 22 con Ave. Carlos Soublette #8-35',22,8,'No especifica','50156','San Cristbal','Tchira','Venezuela','\r'),(50,'Carrera 52 con Ave. Bolvar #65-98 Llano Largo',52,NULL,'No especifica','76914','Barquisimeto','Lara','Venezuela','\r'),(51,'Cerrito 333',333,NULL,'No especifica','41756','Buenos Aires','No especifica','Argentina','\r'),(52,'City Center Plaza 516 Main St.',516,NULL,'No especifica','47913','Elgin','OR','USA','\r'),(53,'Erling Skakkes gate 78',78,NULL,'No especifica','68136','Stavern','No especifica','Norway','\r'),(54,'Estrada da sade n. 58',58,NULL,'No especifica','11380','Lisboa','No especifica','Portugal','\r'),(55,'Fauntleroy Circus',100,NULL,'No especifica','12425','London','No especifica','UK','\r'),(56,'Forsterstr. 57',57,NULL,'No especifica','29719','Mannheim','No especifica','Germany','\r'),(57,'Garden House Crowther Way',5,NULL,'No especifica','52697','Cowes','Isle of Wight','UK','\r'),(58,'Geislweg 14',14,NULL,'No especifica','34435','Salzburg','No especifica','Austria','\r'),(59,'Gran Va, 1',1,NULL,'No especifica','61601','Madrid','No especifica','Spain','\r'),(60,'Grenzacherweg 237',237,NULL,'No especifica','83335','Genve','No especifica','Switzerland','\r'),(61,'Hauptstr. 29',29,NULL,'No especifica','23662','Bern','No especifica','Switzerland','\r'),(62,'Heerstr. 22',22,NULL,'No especifica','73900','Leipzig','No especifica','Germany','\r'),(63,'Ing. Gustavo Moncada 8585 Piso 20-A',8585,20,'No especifica','83428','Buenos Aires','No especifica','Argentina','\r'),(64,'Jardim das rosas n. 32',32,NULL,'No especifica','87099','Lisboa','No especifica','Portugal','\r'),(65,'kergatan 24',24,NULL,'No especifica','83154','Brcke','No especifica','Sweden','\r'),(66,'Keskuskatu 45',45,NULL,'No especifica','25873','Resende','SP','Brazil','\r'),(67,'Kirchgasse 6',6,NULL,'No especifica','59319','Graz','No especifica','Austria','\r'),(68,'Luisenstr. 48',78,NULL,'No especifica','32205','Mnster','No especifica','Germany','\r'),(69,'Magazinweg 7',7,NULL,'No especifica','69129','Frankfurt a.M.','','Germany','\r'),(70,'Mataderos  2312',2312,NULL,'No especifica','37179','Mxico D.F.','Mxico D.F.','Mexico','\r'),(71,'Maubelstr. 90',90,NULL,'No especifica','73705','Brandenburg','No especifica','Germany','\r'),(72,'Mehrheimerstr. 369',369,NULL,'No especifica','46012','Kln','No especifica','Germany','\r'),(73,'Obere Str. 57',57,NULL,'No especifica','30071','Berlin','No especifica','Germany','\r'),(74,'P.O. Box 555',555,NULL,'No especifica','26230','Lander','WY','USA','\r'),(75,'Rambla de Catalua, 23',23,NULL,'No especifica','38184','Barcelona','No especifica','Spain','\r'),(76,'Rua da Panificadora, 12',12,NULL,'No especifica','37964','Rio de Janeiro','RJ','Brazil','\r'),(77,'Rua do Mercado, 12',12,NULL,'No especifica','10549','Stuttgart','No especifica','Germany','\r'),(78,'Rua do Pao, 67',67,NULL,'No especifica','22071','Rio de Janeiro','RJ','Brazil','\r'),(79,'Rua Ors, 92',92,NULL,'No especifica','16799','Sao Paulo','SP','Brazil','\r'),(80,'Rue Joseph-Bens 532',532,NULL,'No especifica','32742','Bruxelles','No especifica','Belgium','\r'),(81,'Sierras de Granada 9993',9993,NULL,'No especifica','45792','Mxico D.F.','No especifica','Mexico','\r'),(82,'Smagsloget 45',45,NULL,'No especifica','88442','rhus','No especifica','Denmark','\r'),(83,'South House 300 Queensbridge',300,NULL,'No especifica','77552','London','No especifica','UK','\r'),(84,'Strada Provinciale 124',124,NULL,'No especifica','47511','Reggio Emilia','No especifica','Italy','\r'),(85,'Taucherstrae 10',10,NULL,'No especifica','86041','Cunewalde','No especifica','Germany','\r'),(86,'Torikatu 38',38,NULL,'No especifica','18047','Reims','No especifica','France','\r'),(87,'ul. Filtrowa 6+B7:B928',68,NULL,'No especifica','33192','Seattle','WA','USA','\r'),(88,'Via Ludovico il Moro 22',22,NULL,'No especifica','82459','Bergamo','No especifica','Italy','\r'),(89,'Via Monte Bianco 34',34,NULL,'No especifica','87116','Torino','No especifica','Italy','\r'),(90,'Vinbltet 34',34,NULL,'No especifica','59536','Kobenhavn','No especifica','Denmark','\r'),(91,'Walserweg 21',21,NULL,'No especifica','20796','Aachen','No especifica','Germany','\r');
/*!40000 ALTER TABLE `direcciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `direcciones_empleados`
--

DROP TABLE IF EXISTS `direcciones_empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `direcciones_empleados` (
  `DIRECCION_EMPLEDOS_ID` int NOT NULL AUTO_INCREMENT,
  `EMPLEADOS_ID` int DEFAULT NULL,
  `DIRECCION_ID` int DEFAULT NULL,
  PRIMARY KEY (`DIRECCION_EMPLEDOS_ID`),
  KEY `EMPLEADOS_ID` (`EMPLEADOS_ID`),
  KEY `DIRECCION_ID` (`DIRECCION_ID`),
  CONSTRAINT `direcciones_empleados_ibfk_1` FOREIGN KEY (`EMPLEADOS_ID`) REFERENCES `empleados` (`EMPLEADOS_ID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `direcciones_empleados_ibfk_2` FOREIGN KEY (`DIRECCION_ID`) REFERENCES `direcciones` (`DIRECCION_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direcciones_empleados`
--

LOCK TABLES `direcciones_empleados` WRITE;
/*!40000 ALTER TABLE `direcciones_empleados` DISABLE KEYS */;
INSERT INTO `direcciones_empleados` VALUES (1,1,58),(2,2,54),(3,3,76),(4,4,32),(5,5,85),(6,6,35),(7,7,15),(8,8,84),(9,9,34),(10,10,60),(11,11,59),(12,12,53),(13,13,6),(14,14,30),(15,15,90),(16,16,11),(17,17,74),(18,18,44),(19,19,29),(20,20,21),(21,21,68),(22,22,38),(23,23,37),(24,24,25),(25,25,82),(26,26,8),(27,27,22),(28,28,31),(29,29,86),(30,30,77);
/*!40000 ALTER TABLE `direcciones_empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `direcciones_pacientes`
--

DROP TABLE IF EXISTS `direcciones_pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `direcciones_pacientes` (
  `DIRECCION_PACIENTE_ID` int NOT NULL AUTO_INCREMENT,
  `PACIENTE_ID` int DEFAULT NULL,
  `DIRECCION_ID` int DEFAULT NULL,
  PRIMARY KEY (`DIRECCION_PACIENTE_ID`),
  KEY `PACIENTE_ID` (`PACIENTE_ID`),
  KEY `DIRECCION_ID` (`DIRECCION_ID`),
  CONSTRAINT `direcciones_pacientes_ibfk_1` FOREIGN KEY (`PACIENTE_ID`) REFERENCES `pacientes` (`PACIENTE_ID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `direcciones_pacientes_ibfk_2` FOREIGN KEY (`DIRECCION_ID`) REFERENCES `direcciones` (`DIRECCION_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direcciones_pacientes`
--

LOCK TABLES `direcciones_pacientes` WRITE;
/*!40000 ALTER TABLE `direcciones_pacientes` DISABLE KEYS */;
INSERT INTO `direcciones_pacientes` VALUES (1,1,73),(2,2,39),(3,3,70),(4,4,4),(5,5,41),(6,6,56),(7,7,10),(8,8,45),(9,9,3),(10,10,9),(11,11,55),(12,12,51),(13,13,82),(14,14,61),(15,15,36),(16,16,42),(17,17,91),(18,18,24),(19,19,17),(20,20,67),(21,21,79),(22,22,46),(23,23,5),(24,24,65),(25,25,43),(26,26,20),(27,27,89),(28,28,64),(29,29,75),(30,30,47),(31,31,33),(32,32,13),(33,33,19),(34,34,78),(35,35,49),(36,36,52),(37,37,26),(38,38,57),(39,39,71),(40,40,23),(41,41,1),(42,42,7),(43,43,2),(44,44,69),(45,45,27),(46,46,50),(47,47,40),(48,48,28),(49,49,88),(50,50,80),(51,51,18),(52,52,62),(53,53,83),(54,54,63),(55,55,14),(56,56,72),(57,57,12),(58,58,48);
/*!40000 ALTER TABLE `direcciones_pacientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `EMPLEADOS_ID` int NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(50) NOT NULL,
  `APELLIDO_PAT` varchar(50) NOT NULL,
  `APELLIDO_MAT` varchar(50) NOT NULL,
  `TITULO` varchar(70) DEFAULT NULL,
  `FECHA_NACIMIENTO` date NOT NULL,
  `OTROS` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`EMPLEADOS_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,'Alejandro','McAlpine','McAlpine','Senior Engineer','1953-09-19','\r'),(2,'Breannda','Billingsley','Billingsley','Staff','1961-10-15','\r'),(3,'Tse','Herber','Herber','Senior Engineer','1962-10-19','\r'),(4,'Anoosh','Peyn','Peyn','Engineer','1961-11-02','\r'),(5,'Gino','Leonhardt','Leonhardt','Senior Engineer','1952-08-06','\r'),(6,'Udi','Jansch','Jansch','Senior Staff','1959-04-07','\r'),(7,'Satosi','Awdeh','Awdeh','Staff','1963-04-14','\r'),(8,'Kwee','Schusler','Schusler','Senior Engineer','1952-11-13','\r'),(9,'Claudi','Stavenow','Stavenow','Senior Staff','1953-01-07','\r'),(10,'Charlene','Brattka','Brattka','Staff','1962-11-26','\r'),(11,'Margareta','Bierman','Bierman','Assistant Engineer','1960-09-06','\r'),(12,'Reuven','Garigliano','Garigliano','Assistant Engineer','1955-08-20','\r'),(13,'Hisao','Lipner','Lipner','Engineer','1958-01-21','\r'),(14,'Hironoby','Sidou','Sidou','Senior Engineer','1952-05-15','\r'),(15,'Shir','McClurg','McClurg','Engineer','1954-02-23','\r'),(16,'Mokhtar','Bernatsky','Bernatsky','Staff','1955-08-28','\r'),(17,'Gao','Dolinsky','Dolinsky','Engineer','1960-03-09','\r'),(18,'Erez','Ritzmann','Ritzmann','Senior Engineer','1952-06-13','\r'),(19,'Mona','Azuma','Azuma','Senior Staff','1964-04-18','\r'),(20,'Danel','Mondadori','Mondadori','Engineer','1959-12-25','\r'),(21,'Kshitij','Gils','Gils','Senior Staff','1961-10-05','\r'),(22,'Premal','Baek','Baek','Staff','1957-12-03','\r'),(23,'Zhongwei','Rosen','Rosen','Senior Staff','1960-12-17','\r'),(24,'Parviz','Lortz','Lortz','Staff','1963-09-09','\r'),(25,'Vishv','Zockler','Zockler','Engineer','1959-07-23','\r'),(26,'Tuval','Kalloufi','Kalloufi','Senior Engineer','1960-05-25','\r'),(27,'Kenroku','Malabarba','Malabarba','Staff','1962-11-07','\r'),(28,'Somnath','Foote','Foote','Engineer','1962-11-19','\r'),(29,'Xinglin','Eugenio','Eugenio','Technique Leader','1959-07-23','\r'),(30,'Jungsoon','Syrzycki','Syrzycki','Engineer','1954-02-25','\r');
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formas_pago`
--

DROP TABLE IF EXISTS `formas_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `formas_pago` (
  `FORMA_PAGO_ID` int NOT NULL AUTO_INCREMENT,
  `FORMA_PAGO` varchar(50) NOT NULL,
  PRIMARY KEY (`FORMA_PAGO_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formas_pago`
--

LOCK TABLES `formas_pago` WRITE;
/*!40000 ALTER TABLE `formas_pago` DISABLE KEYS */;
INSERT INTO `formas_pago` VALUES (1,'EFECTIVO\r'),(2,'TARJETA CRÉDITO\r'),(3,'TARJETA DEBITO\r'),(4,'SEGURO\r'),(5,'CHEQUE\r'),(6,'NO REGISTRADA');
/*!40000 ALTER TABLE `formas_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formas_pago_pacientes`
--

DROP TABLE IF EXISTS `formas_pago_pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `formas_pago_pacientes` (
  `FORMA_PAGO_PAC_ID` int NOT NULL AUTO_INCREMENT,
  `PACIENTE_ID` int DEFAULT NULL,
  `FORMA_PAGO_ID` int DEFAULT NULL,
  `DETALLES` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`FORMA_PAGO_PAC_ID`),
  KEY `FORMA_PAGO_ID` (`FORMA_PAGO_ID`),
  KEY `PACIENTE_ID` (`PACIENTE_ID`),
  CONSTRAINT `formas_pago_pacientes_ibfk_1` FOREIGN KEY (`FORMA_PAGO_ID`) REFERENCES `formas_pago` (`FORMA_PAGO_ID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `formas_pago_pacientes_ibfk_2` FOREIGN KEY (`PACIENTE_ID`) REFERENCES `pacientes` (`PACIENTE_ID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formas_pago_pacientes`
--

LOCK TABLES `formas_pago_pacientes` WRITE;
/*!40000 ALTER TABLE `formas_pago_pacientes` DISABLE KEYS */;
INSERT INTO `formas_pago_pacientes` VALUES (1,1,6,'\r'),(2,2,6,'\r'),(3,3,1,'\r'),(4,4,2,'\r'),(5,5,3,'\r'),(6,6,4,'\r'),(7,7,5,'\r'),(8,8,1,'\r'),(9,9,2,'\r'),(10,10,3,'\r'),(11,11,4,'\r'),(12,12,5,'\r'),(13,13,6,'\r'),(14,14,6,'\r'),(15,15,6,'\r'),(16,16,6,'\r'),(17,17,1,'\r'),(18,18,2,'\r'),(19,19,3,'\r'),(20,20,4,'\r'),(21,21,5,'\r'),(22,22,6,'\r'),(23,23,6,'\r'),(24,24,6,'\r'),(25,25,6,'\r'),(26,26,1,'\r'),(27,27,2,'\r'),(28,28,3,'\r'),(29,29,4,'\r'),(30,30,5,'\r'),(31,31,6,'\r'),(32,32,6,'\r'),(33,33,6,'\r'),(34,34,6,'\r'),(35,35,6,'\r'),(36,36,6,'\r'),(37,37,1,'\r'),(38,38,2,'\r'),(39,39,3,'\r'),(40,40,4,'\r'),(41,41,5,'\r'),(42,42,6,'\r'),(43,43,6,'\r'),(44,44,6,'\r'),(45,45,6,'\r'),(46,46,1,'\r'),(47,47,2,'\r'),(48,48,3,'\r'),(49,49,4,'\r'),(50,50,5,'\r'),(51,51,6,'\r'),(52,52,6,'\r'),(53,53,1,'\r'),(54,54,2,'\r'),(55,55,3,'\r'),(56,56,4,'\r'),(57,57,5,'\r'),(58,58,6,'\r');
/*!40000 ALTER TABLE `formas_pago_pacientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pacientes`
--

DROP TABLE IF EXISTS `pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pacientes` (
  `PACIENTE_ID` int NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(50) NOT NULL,
  `APELLIDO_PAT` varchar(50) NOT NULL,
  `APELLIDO_MAT` varchar(50) NOT NULL,
  `FECHA_NACIMIENTO` date NOT NULL,
  `PESO` double NOT NULL,
  `ALTURA` double NOT NULL,
  `NUMERO_SEGURO_SOCIAL` varchar(50) NOT NULL,
  `genero` enum('masculino','femenino') DEFAULT NULL,
  `TELEFONO_CASA` varchar(16) DEFAULT NULL,
  `TELEFONO_TRABAJO` varchar(16) DEFAULT NULL,
  `TELEFONO_MOVIL` varchar(16) DEFAULT NULL,
  `OTROS` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`PACIENTE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pacientes`
--

LOCK TABLES `pacientes` WRITE;
/*!40000 ALTER TABLE `pacientes` DISABLE KEYS */;
INSERT INTO `pacientes` VALUES (1,'Georgi','Facello','Facello','1960-02-20',93,1.99,'10001','masculino','','','','\r'),(2,'Bezalel','Simmel','Simmel','1952-07-08',88,1.69,'10002','femenino','','','','\r'),(3,'Parto','Bamford','Bamford','1953-09-29',62,1.88,'10003','masculino','','','','\r'),(4,'Chirstian','Koblick','Koblick','1958-09-05',93,1.84,'10004','masculino','','','','\r'),(5,'Kyoichi','Maliniak','Maliniak','1958-10-31',86,1.89,'10005','masculino','','','','\r'),(6,'Anneke','Preusig','Preusig','1953-04-03',86,1.54,'10006','femenino','','','','\r'),(7,'Tzvetan','Zielinski','Zielinski','1962-07-10',56,1.77,'10007','femenino','','','','\r'),(8,'Saniya','Kalloufi','Kalloufi','1963-11-26',78,1.82,'10008','masculino','','','','\r'),(9,'Sumant','Peac','Peac','1956-12-13',85,1.64,'10009','femenino','','','','\r'),(10,'Duangkaew','Piveteau','Piveteau','1958-07-14',92,1.71,'10010','femenino','','','','\r'),(11,'Mary','Sluis','Sluis','1959-01-27',96,1.96,'10011','femenino','','','','\r'),(12,'Patricio','Bridgland','Bridgland','1960-08-09',63,1.9,'10012','masculino','','','','\r'),(13,'Eberhardt','Terkki','Terkki','1956-11-14',81,1.64,'10013','masculino','','','','\r'),(14,'Berni','Genin','Genin','1962-12-29',67,1.74,'10014','masculino','','','','\r'),(15,'Guoxiang','Nooteboom','Nooteboom','1953-02-08',60,1.55,'10015','masculino','','','','\r'),(16,'Kazuhito','Cappelletti','Cappelletti','1959-08-10',97,1.71,'10016','masculino','','','','\r'),(17,'Cristinel','Bouloucos','Bouloucos','1963-07-22',66,1.91,'10017','femenino','','','','\r'),(18,'Kazuhide','Peha','Peha','1960-07-20',88,1.51,'10018','femenino','','','','\r'),(19,'Lillian','Haddadi','Haddadi','1959-10-01',85,1.61,'10019','masculino','','','','\r'),(20,'Mayuko','Warwick','Warwick','1959-09-13',96,1.78,'10020','masculino','','','','\r'),(21,'Ramzi','Erde','Erde','1959-08-27',91,1.61,'10021','masculino','','','','\r'),(22,'Shahaf','Famili','Famili','1956-02-26',70,1.81,'10022','masculino','','','','\r'),(23,'Bojan','Montemayor','Montemayor','1960-09-19',86,1.8,'10023','femenino','','','','\r'),(24,'Suzette','Pettey','Pettey','1961-09-21',79,1.74,'10024','femenino','','','','\r'),(25,'Prasadram','Heyers','Heyers','1957-08-14',91,1.95,'10025','masculino','','','','\r'),(26,'Yongqiao','Berztiss','Berztiss','1960-07-23',75,1.91,'10026','masculino','','','','\r'),(27,'Divier','Reistad','Reistad','1952-06-29',57,1.6,'10027','femenino','','','','\r'),(28,'Domenick','Tempesti','Tempesti','1963-07-11',62,1.72,'10028','masculino','','','','\r'),(29,'Otmar','Herbst','Herbst','1961-04-24',77,1.6,'10029','masculino','','','','\r'),(30,'Elvis','Demeyer','Demeyer','1958-05-21',93,1.64,'10030','masculino','','','','\r'),(31,'Karsten','Joslin','Joslin','1953-07-28',95,1.52,'10031','masculino','','','','\r'),(32,'Jeong','Reistad','Reistad','1961-02-26',84,1.6,'10032','femenino','','','','\r'),(33,'Arif','Merlo','Merlo','1954-09-13',92,1.77,'10033','masculino','','','','\r'),(34,'Bader','Swan','Swan','1957-04-04',69,1.56,'10034','masculino','','','','\r'),(35,'Alain','Chappelet','Chappelet','1956-06-06',57,1.55,'10035','masculino','','','','\r'),(36,'Adamantios','Portugali','Portugali','1961-09-01',62,1.99,'10036','masculino','','','','\r'),(37,'Pradeep','Makrucki','Makrucki','1954-05-30',60,1.75,'10037','masculino','','','','\r'),(38,'Huan','Lortz','Lortz','1954-10-01',97,1.88,'10038','masculino','','','','\r'),(39,'Alejandro','Brender','Brender','1959-10-01',92,1.78,'10039','masculino','','','','\r'),(40,'Weiyi','Meriste','Meriste','1959-09-13',97,1.84,'10040','femenino','','','','\r'),(41,'Uri','Lenart','Lenart','1959-08-27',80,1.9,'10041','femenino','','','','\r'),(42,'Magy','Stamatiou','Stamatiou','1956-02-26',69,1.91,'10042','femenino','','','','\r'),(43,'Yishay','Tzvieli','Tzvieli','1960-09-19',65,1.95,'10043','masculino','','','','\r'),(44,'Mingsen','Casley','Casley','1961-09-21',90,1.8,'10044','femenino','','','','\r'),(45,'Moss','Shanbhogue','Shanbhogue','1957-08-14',90,1.97,'10045','masculino','','','','\r'),(46,'Lucien','Rosenbaum','Rosenbaum','1960-07-23',85,1.53,'10046','masculino','','','','\r'),(47,'Zvonko','Nyanchama','Nyanchama','1952-06-29',78,1.65,'10047','masculino','','','','\r'),(48,'Florian','Syrotiuk','Syrotiuk','1963-07-11',76,1.58,'10048','masculino','','','','\r'),(49,'Basil','Tramer','Tramer','1961-04-24',99,1.55,'10049','femenino','','','','\r'),(50,'Yinghua','Dredge','Dredge','1958-05-21',78,1.54,'10050','masculino','','','','\r'),(51,'Hidefumi','Caine','Caine','1953-07-28',54,1.84,'10051','masculino','','','','\r'),(52,'Heping','Nitsch','Nitsch','1961-02-26',85,1.59,'10052','masculino','','','','\r'),(53,'Sanjiv','Zschoche','Zschoche','1954-09-13',52,1.53,'10053','femenino','','','','\r'),(54,'Mayumi','Schueller','Schueller','1957-04-04',75,1.72,'10054','masculino','','','','\r'),(55,'Georgy','Dredge','Dredge','1956-06-06',97,1.61,'10055','masculino','','','','\r'),(56,'Brendon','Bernini','Bernini','1961-09-01',91,1.63,'10056','femenino','','','','\r'),(57,'Ebbe','Callaway','Callaway','1954-05-30',91,1.96,'10057','femenino','','','','\r'),(58,'Berhard','McFarlin','McFarlin','1954-10-01',99,1.96,'10058','masculino','','','','\r');
/*!40000 ALTER TABLE `pacientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registro_pacientes`
--

DROP TABLE IF EXISTS `registro_pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registro_pacientes` (
  `REGISTRO_PACIENTE` int NOT NULL AUTO_INCREMENT,
  `PACIENTE_ID` int DEFAULT NULL,
  `CUENTAS_PACIENTES_ID` int DEFAULT NULL,
  `REGISTRO_POR_EMPLEADO_ID` int DEFAULT NULL,
  `FECHA_ADMISION` date NOT NULL,
  `CONDICION_MEDICA` varchar(100) NOT NULL,
  `OTROS` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`REGISTRO_PACIENTE`),
  KEY `PACIENTE_ID` (`PACIENTE_ID`),
  KEY `REGISTRO_POR_EMPLEADO_ID` (`REGISTRO_POR_EMPLEADO_ID`),
  KEY `CUENTAS_PACIENTES_ID` (`CUENTAS_PACIENTES_ID`),
  CONSTRAINT `registro_pacientes_ibfk_1` FOREIGN KEY (`PACIENTE_ID`) REFERENCES `pacientes` (`PACIENTE_ID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `registro_pacientes_ibfk_2` FOREIGN KEY (`REGISTRO_POR_EMPLEADO_ID`) REFERENCES `empleados` (`EMPLEADOS_ID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `registro_pacientes_ibfk_3` FOREIGN KEY (`CUENTAS_PACIENTES_ID`) REFERENCES `cuentas_pacientes` (`CUENTAS_PACIENTES_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registro_pacientes`
--

LOCK TABLES `registro_pacientes` WRITE;
/*!40000 ALTER TABLE `registro_pacientes` DISABLE KEYS */;
INSERT INTO `registro_pacientes` VALUES (1,1,1,1,'2017-04-08','Abdominal Aortic Aneurysm','\r'),(2,2,2,2,'2017-04-09','Abdominal Cramps (Heat Cramps)','\r'),(3,3,3,3,'2017-04-10','Abdominal Hernia (Hernia Overview)','\r'),(4,4,4,4,'2017-04-12','Bacterial Vaginosis (Causes, Symptoms, Treatment)','\r'),(5,5,5,5,'2017-04-12','Bad Breath','\r'),(6,6,6,6,'2017-04-14','Bad Cholesterol Test (Cholesterol Test)','\r'),(7,7,7,7,'2017-04-15','Baker Cyst','\r'),(8,8,8,8,'2017-04-15','Farting (Intestinal Gas (Belching, Bloating, Flatulence))','\r'),(9,9,9,9,'2017-04-16','Fast Heart Beat (Palpitations Overview)','\r'),(10,10,10,10,'2017-04-17','Fatigue','\r'),(11,11,11,11,'2017-04-18','Fatigue From Cancer (Cancer Fatigue','\r'),(12,12,12,12,'2017-04-19','Lambliasis (Giardia Lamblia)','\r'),(13,13,13,13,'2017-04-20','Lambliosis (Giardia Lamblia)','\r'),(14,14,14,14,'2017-04-22','Landau-Kleffner Syndrome','\r'),(15,15,15,15,'2017-04-22','Lap Band Surgery (Gastric Banding)','\r'),(16,16,16,16,'2017-04-24','Laparoscopic Liver Biopsy (Liver Biopsy)','\r'),(17,17,17,17,'2017-04-24','Omega-3 Fatty Acids','\r'),(18,18,18,18,'2017-04-25','Onchocerciasis','\r'),(19,19,19,19,'2017-04-27','Onychocryptosis (Ingrown Toenail)','\r'),(20,20,20,20,'2017-04-28','Scarlatina)','\r'),(21,21,21,21,'2017-04-28','Scars','\r'),(22,22,22,22,'2017-04-30','Schatzki Ring','\r'),(23,23,23,23,'2017-05-01','Scheuermann\'s Kyphosis (Kyphosis)','\r'),(24,24,24,24,'2017-05-01','Schistosoma guineensis (Schistosomiasis)','\r'),(25,25,25,25,'2017-05-02','Schistosoma haematobium (Schistosomiasis)','\r'),(26,26,26,26,'2017-05-04','Schistosoma japonicum (Schistosomiasis)','\r'),(27,27,27,27,'2017-05-04','Tachycardia (Heart Rhythm Disorders)','\r'),(28,28,28,28,'2017-05-06','Tachycardia, Paroxysmal Atrial (Paroxysmal Supraventricular Tachycardia (PSVT))','\r'),(29,29,29,29,'2017-05-07','Tachycardia, Paroxysmal Supraventricular (Paroxysmal Supraventricular Tachycardia (PSVT))','\r'),(30,30,30,30,'2017-05-07','Tailbone Pain (Coccydynia)','\r'),(31,31,31,1,'2017-05-09','Tailor\'s Bunion (Bunions)','\r'),(32,32,32,2,'2017-05-10','Takayasu Arteritis (Takayasu Disease)','\r'),(33,33,33,3,'2017-05-10','Takayasu Disease','\r'),(34,34,34,4,'2017-05-11','Taking Dental Medications','\r'),(35,35,35,5,'2017-05-13','Tarry Stools (Stool Color Changes)','\r'),(36,36,36,6,'2017-05-14','Abdominal Aortic Aneurysm','\r'),(37,37,37,7,'2017-05-14','Abdominal Cramps (Heat Cramps)','\r'),(38,38,38,8,'2017-05-15','Abdominal Hernia (Hernia Overview)','\r'),(39,39,39,9,'2017-05-16','Bacterial Vaginosis (Causes, Symptoms, Treatment)','\r'),(40,40,40,10,'2017-05-18','Bad Breath','\r'),(41,41,41,11,'2017-05-18','Bad Cholesterol Test (Cholesterol Test)','\r'),(42,42,42,12,'2017-05-20','Baker Cyst','\r'),(43,43,43,13,'2017-05-21','Farting (Intestinal Gas (Belching, Bloating, Flatulence))','\r'),(44,44,44,14,'2017-05-22','Fast Heart Beat (Palpitations Overview)','\r'),(45,45,45,15,'2017-05-23','Fatigue','\r'),(46,46,46,16,'2017-05-23','Fatigue From Cancer (Cancer Fatigue','\r'),(47,47,47,17,'2017-05-25','Lambliasis (Giardia Lamblia)','\r'),(48,48,48,18,'2017-05-25','Lambliosis (Giardia Lamblia)','\r'),(49,49,49,19,'2017-05-27','Landau-Kleffner Syndrome','\r'),(50,50,50,20,'2017-05-28','Lap Band Surgery (Gastric Banding)','\r'),(51,51,51,21,'2017-05-29','Laparoscopic Liver Biopsy (Liver Biopsy)','\r'),(52,52,52,22,'2017-05-29','Omega-3 Fatty Acids','\r'),(53,53,53,23,'2017-05-31','Onchocerciasis','\r'),(54,54,54,24,'2017-05-31','Onychocryptosis (Ingrown Toenail)','\r'),(55,55,55,25,'2017-06-01','Scarlatina)','\r'),(56,56,56,26,'2017-06-02','Scars','\r'),(57,57,57,27,'2017-06-04','Schatzki Ring','\r'),(58,58,58,28,'2017-06-05','Scheuermann\'s Kyphosis (Kyphosis)','\r');
/*!40000 ALTER TABLE `registro_pacientes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-04 22:38:16
