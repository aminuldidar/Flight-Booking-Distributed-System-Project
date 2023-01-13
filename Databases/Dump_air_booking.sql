CREATE DATABASE  IF NOT EXISTS `air_booking_fin_helsinki` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `air_booking_fin_helsinki`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: air_booking_fin_helsinki
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `branch_office`
--

DROP TABLE IF EXISTS `branch_office`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `branch_office` (
  `idbranch_office` int NOT NULL,
  `branch_name` varchar(45) NOT NULL,
  `country_id` varchar(45) NOT NULL,
  `country_name` varchar(45) NOT NULL,
  PRIMARY KEY (`idbranch_office`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch_office`
--

LOCK TABLES `branch_office` WRITE;
/*!40000 ALTER TABLE `branch_office` DISABLE KEYS */;
INSERT INTO `branch_office` VALUES (3,'Helsinki','2','FIN');
/*!40000 ALTER TABLE `branch_office` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `idcountry` int NOT NULL,
  `country_name` varchar(45) NOT NULL,
  PRIMARY KEY (`idcountry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (2,'FIN');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manage_air`
--

DROP TABLE IF EXISTS `manage_air`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manage_air` (
  `flight_id` int NOT NULL,
  `num_seat` int DEFAULT NULL,
  `coast_seat` varchar(45) DEFAULT NULL,
  `departure_city` varchar(45) DEFAULT NULL,
  `arrival_city` varchar(45) DEFAULT NULL,
  `airlines_site_office_id` int DEFAULT NULL,
  `flight_mood` varchar(45) DEFAULT NULL,
  `airline_name` varchar(45) DEFAULT NULL,
  `airline_model` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`flight_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manage_air`
--

LOCK TABLES `manage_air` WRITE;
/*!40000 ALTER TABLE `manage_air` DISABLE KEYS */;
/*!40000 ALTER TABLE `manage_air` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passenger`
--

DROP TABLE IF EXISTS `passenger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `passenger` (
  `idpassenger` int NOT NULL AUTO_INCREMENT,
  `passenger_name` varchar(45) NOT NULL,
  `passenger_email` varchar(45) NOT NULL,
  `passenger_tel` varchar(45) NOT NULL,
  `agency_site_office_id` varchar(45) NOT NULL,
  `country_id` varchar(45) NOT NULL,
  PRIMARY KEY (`idpassenger`)
) ENGINE=InnoDB AUTO_INCREMENT=2266 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passenger`
--

LOCK TABLES `passenger` WRITE;
/*!40000 ALTER TABLE `passenger` DISABLE KEYS */;
INSERT INTO `passenger` VALUES (2254,'Finch','finch@gmail.com','41009110098','3','2'),(2255,'Cummins','cummins@gmail.com','4100999862','3','2'),(2256,'Smith','smith@gmail.com','410099986221','3','2'),(2257,'Kartik','kartik@gmail.com','4100999860000','3','2'),(2258,'Warner','warner@gmail.com','410099986011','3','2'),(2259,'Miler','miller@gmail.com','410099986555','3','2'),(2260,'Rashid','rashid@gmail.com','4100999222','3','2'),(2261,'Rabbil','rabbil@gmail.com','358765400004','3','2'),(2262,'Naina','naina@gmail.com','+3435565','3','2'),(2263,'Nelli','nelli@gmail.com','+34545656','3','2'),(2264,'Rossa','rossa@gmail.com','+435465','3','2'),(2265,'Raihan','raihan@gmail.com','+2343','3','2');
/*!40000 ALTER TABLE `passenger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservation` (
  `reservation_id` int NOT NULL,
  `passenger_id` int DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `flight_id` int DEFAULT NULL,
  `airline_site_office_id` int DEFAULT NULL,
  PRIMARY KEY (`reservation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-18 22:43:39
CREATE DATABASE  IF NOT EXISTS `air_booking_usa` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `air_booking_usa`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: air_booking_usa
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `branch_office`
--

DROP TABLE IF EXISTS `branch_office`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `branch_office` (
  `idbranch_office` int NOT NULL,
  `branch_name` varchar(45) NOT NULL,
  `country_id` varchar(45) NOT NULL,
  `country_name` varchar(45) NOT NULL,
  PRIMARY KEY (`idbranch_office`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch_office`
--

LOCK TABLES `branch_office` WRITE;
/*!40000 ALTER TABLE `branch_office` DISABLE KEYS */;
INSERT INTO `branch_office` VALUES (1,'Newyork','1','USA'),(2,'Washington','1','USA');
/*!40000 ALTER TABLE `branch_office` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `idcountry` int NOT NULL,
  `country_name` varchar(45) NOT NULL,
  PRIMARY KEY (`idcountry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'USA'),(2,'FIN'),(3,'TUR');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manage_air`
--

DROP TABLE IF EXISTS `manage_air`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manage_air` (
  `flight_id` int NOT NULL,
  `num_seat` int DEFAULT NULL,
  `coast_seat` varchar(45) DEFAULT NULL,
  `departure_city` varchar(45) DEFAULT NULL,
  `arrival_city` varchar(45) DEFAULT NULL,
  `airlines_site_office_id` int DEFAULT NULL,
  `flight_mood` varchar(45) DEFAULT NULL,
  `airline_name` varchar(45) DEFAULT NULL,
  `airline_model` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`flight_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manage_air`
--

LOCK TABLES `manage_air` WRITE;
/*!40000 ALTER TABLE `manage_air` DISABLE KEYS */;
INSERT INTO `manage_air` VALUES (7,35,'600','Lappenranta','Newyork',4,'1','Finair','Boing'),(9,20,'580','Newyork','Lappenranta',1,'1','Finair','Boing');
/*!40000 ALTER TABLE `manage_air` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passenger`
--

DROP TABLE IF EXISTS `passenger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `passenger` (
  `idpassenger` int NOT NULL AUTO_INCREMENT,
  `passenger_name` varchar(45) NOT NULL,
  `passenger_email` varchar(45) NOT NULL,
  `passenger_tel` varchar(45) NOT NULL,
  `agency_site_office_id` varchar(45) NOT NULL,
  `country_id` varchar(45) NOT NULL,
  PRIMARY KEY (`idpassenger`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passenger`
--

LOCK TABLES `passenger` WRITE;
/*!40000 ALTER TABLE `passenger` DISABLE KEYS */;
INSERT INTO `passenger` VALUES (1,'Isru','isru@gmail.com','1234','1','1'),(2,'Knkur','knkur@gmail.com','3456','1','1'),(3,'Mnkur','mnkur@gmail.com','45656','1','1'),(4,'fmnne','fmnne@gmail.com','65456','2','1'),(5,'Zmimmy','zmimmy@gmail.com','9876','2','1'),(6,'Kabir','kabir@gmail.com','7657','3','2'),(7,'Ruhi','ruhi@gmail.com','098776','3','2'),(8,'Minni','minni@gmail.com','98787','4','2'),(9,'Kanai','kanai@gmail.com','09877','5','3'),(10,'nazmul','naz@gmail.com','6786','1','1'),(11,'Mbappe','bappe@gmail.com','418887543','1','1'),(12,'Messy','messy@gmail.com','35856432986','1','1'),(13,'Amir','amir@gmail.com','3487658875432','1','1'),(14,'Salman','salman@gmail.com','34876576599','1','1'),(15,'Dipok','dipok@gmail.com','974665625564321','1','1'),(16,'Avishek','avishek@gmail.com','9746656678854','1','1'),(17,'Rohit','rohit@gmail.com','974666732','1','1'),(18,'David','david@gmail.com','4198765425','1','1'),(19,'Aron','aron@gmail.com','4198765425875','1','1'),(20,'Sangakara','sangakara@gmail.com','410096654','1','1'),(21,'Dilshan','dilshan@gmail.com','4100966548876','1','1'),(22,'Sanaka','sanaka@gmail.com','4100966548800','1','1'),(23,'Mendis','mendis@gmail.com','410096654666','1','1'),(24,'Kushal','kushal@gmail.com','4100966654','1','1'),(25,'Jabir','jabir@gmail.com','41009666548876','1','1'),(26,'Mamun','mamun@gmail.com','410096665477','1','1'),(27,'Abid','abid@gmail.com','41009666547744','1','1'),(28,'Preety','preety@gmail.com','410096665444321','1','1'),(29,'Ashik','ashik@gmail.com','35876540000','1','1');
/*!40000 ALTER TABLE `passenger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservation` (
  `reservation_id` int NOT NULL AUTO_INCREMENT,
  `passenger_id` int DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `flight_id` int DEFAULT NULL,
  `airline_site_office_id` int DEFAULT NULL,
  PRIMARY KEY (`reservation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-18 22:43:39
CREATE DATABASE  IF NOT EXISTS `air_booking_fin_lappeenranta` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `air_booking_fin_lappeenranta`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: air_booking_fin_lappeenranta
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `branch_office`
--

DROP TABLE IF EXISTS `branch_office`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `branch_office` (
  `idbranch_office` int NOT NULL,
  `branch_name` varchar(45) NOT NULL,
  `country_id` varchar(45) NOT NULL,
  `country_name` varchar(45) NOT NULL,
  PRIMARY KEY (`idbranch_office`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch_office`
--

LOCK TABLES `branch_office` WRITE;
/*!40000 ALTER TABLE `branch_office` DISABLE KEYS */;
INSERT INTO `branch_office` VALUES (4,'Lappenranta','2','FIN');
/*!40000 ALTER TABLE `branch_office` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `idcountry` int NOT NULL,
  `country_name` varchar(45) NOT NULL,
  PRIMARY KEY (`idcountry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (2,'FIN');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manage_air`
--

DROP TABLE IF EXISTS `manage_air`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manage_air` (
  `flight_id` int NOT NULL,
  `num_seat` int DEFAULT NULL,
  `coast_seat` varchar(45) DEFAULT NULL,
  `departure_city` varchar(45) DEFAULT NULL,
  `arrival_city` varchar(45) DEFAULT NULL,
  `airlines_site_office_id` int DEFAULT NULL,
  `flight_mood` varchar(45) DEFAULT NULL,
  `airline_name` varchar(45) DEFAULT NULL,
  `airline_model` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`flight_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manage_air`
--

LOCK TABLES `manage_air` WRITE;
/*!40000 ALTER TABLE `manage_air` DISABLE KEYS */;
/*!40000 ALTER TABLE `manage_air` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passenger`
--

DROP TABLE IF EXISTS `passenger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `passenger` (
  `idpassenger` int NOT NULL AUTO_INCREMENT,
  `passenger_name` varchar(45) NOT NULL,
  `passenger_email` varchar(45) NOT NULL,
  `passenger_tel` varchar(45) NOT NULL,
  `agency_site_office_id` varchar(45) NOT NULL,
  `country_id` varchar(45) NOT NULL,
  PRIMARY KEY (`idpassenger`)
) ENGINE=InnoDB AUTO_INCREMENT=2266 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passenger`
--

LOCK TABLES `passenger` WRITE;
/*!40000 ALTER TABLE `passenger` DISABLE KEYS */;
INSERT INTO `passenger` VALUES (2254,'Finch','finch@gmail.com','41009110098','4','2'),(2255,'Cummins','cummins@gmail.com','4100999862','4','2'),(2256,'Smith','smith@gmail.com','410099986221','4','2'),(2257,'Kartik','kartik@gmail.com','4100999860000','4','2'),(2258,'Warner','warner@gmail.com','410099986011','4','2'),(2259,'Miler','miller@gmail.com','410099986555','4','2'),(2260,'Rashid','rashid@gmail.com','4100999222','4','2'),(2261,'Rabbil','rabbil@gmail.com','358765400004','4','2'),(2262,'Naina','naina@gmail.com','+3435565','4','2'),(2263,'Nelli','nelli@gmail.com','+34545656','4','2'),(2264,'Rossa','rossa@gmail.com','+435465','4','2'),(2265,'Raihan','raihan@gmail.com','+2343','4','2');
/*!40000 ALTER TABLE `passenger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservation` (
  `reservation_id` int NOT NULL,
  `passenger_id` int DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `flight_id` int DEFAULT NULL,
  `airline_site_office_id` int DEFAULT NULL,
  PRIMARY KEY (`reservation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-18 22:43:39
CREATE DATABASE  IF NOT EXISTS `air_booking` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `air_booking`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: air_booking
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `branch_office`
--

DROP TABLE IF EXISTS `branch_office`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `branch_office` (
  `idbranch_office` int NOT NULL,
  `branch_name` varchar(45) NOT NULL,
  `country_id` varchar(45) NOT NULL,
  `country_name` varchar(45) NOT NULL,
  PRIMARY KEY (`idbranch_office`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch_office`
--

LOCK TABLES `branch_office` WRITE;
/*!40000 ALTER TABLE `branch_office` DISABLE KEYS */;
INSERT INTO `branch_office` VALUES (1,'Newyork','1','USA'),(2,'Washington','1','USA'),(3,'Helsinki','2','FIN'),(4,'Lappenranta','2','FIN'),(5,'Istambul','3','TUR');
/*!40000 ALTER TABLE `branch_office` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `idcountry` int NOT NULL,
  `country_name` varchar(45) NOT NULL,
  PRIMARY KEY (`idcountry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'USA'),(2,'FIN'),(3,'TUR');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `flight_search`
--

DROP TABLE IF EXISTS `flight_search`;
/*!50001 DROP VIEW IF EXISTS `flight_search`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `flight_search` AS SELECT 
 1 AS `flight_id`,
 1 AS `num_seat`,
 1 AS `coast_seat`,
 1 AS `departure_city`,
 1 AS `arrival_city`,
 1 AS `airlines_site_office_id`,
 1 AS `flight_mood`,
 1 AS `airline_name`,
 1 AS `airline_model`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `manage_air`
--

DROP TABLE IF EXISTS `manage_air`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manage_air` (
  `flight_id` int NOT NULL,
  `num_seat` int DEFAULT NULL,
  `coast_seat` varchar(45) DEFAULT NULL,
  `departure_city` varchar(45) DEFAULT NULL,
  `arrival_city` varchar(45) DEFAULT NULL,
  `airlines_site_office_id` int DEFAULT NULL,
  `flight_mood` varchar(45) DEFAULT NULL,
  `airline_name` varchar(45) DEFAULT NULL,
  `airline_model` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`flight_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manage_air`
--

LOCK TABLES `manage_air` WRITE;
/*!40000 ALTER TABLE `manage_air` DISABLE KEYS */;
/*!40000 ALTER TABLE `manage_air` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passenger`
--

DROP TABLE IF EXISTS `passenger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `passenger` (
  `idpassenger` int NOT NULL AUTO_INCREMENT,
  `passenger_name` varchar(45) NOT NULL,
  `passenger_email` varchar(45) NOT NULL,
  `passenger_tel` varchar(45) NOT NULL,
  `agency_site_office_id` varchar(45) NOT NULL,
  `country_id` varchar(45) NOT NULL,
  PRIMARY KEY (`idpassenger`)
) ENGINE=InnoDB AUTO_INCREMENT=2242 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passenger`
--

LOCK TABLES `passenger` WRITE;
/*!40000 ALTER TABLE `passenger` DISABLE KEYS */;
INSERT INTO `passenger` VALUES (1,'Isru','isru@gmail.com','1234','1','1'),(2,'Knkur','knkur@gmail.com','3456','1','1'),(3,'Mnkur','mnkur@gmail.com','45656','1','1'),(4,'fmnne','fmnne@gmail.com','65456','2','1'),(5,'Zmimmy','zmimmy@gmail.com','9876','2','1'),(6,'Kabir','kabir@gmail.com','7657','3','2'),(7,'Ruhi','ruhi@gmail.com','098776','3','2'),(8,'Minni','minni@gmail.com','98787','4','2'),(9,'Kanai','kanai@gmail.com','09877','5','3'),(2238,'ddsd','ewrr@gmail.com','+88019324','3','2'),(2239,'ddsd','ewrr@gmail.com','+88019324','3','2'),(2240,'ljff','ewrr@gmail.com','+88019324','3','2'),(2241,'Rahi','rahi@gmail.com','345','3','Lappenranta');
/*!40000 ALTER TABLE `passenger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservation` (
  `reservation_id` int NOT NULL AUTO_INCREMENT,
  `passenger_id` int DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `flight_id` int DEFAULT NULL,
  `airlines_site_office_id` int DEFAULT NULL,
  PRIMARY KEY (`reservation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
INSERT INTO `reservation` VALUES (1,1,'2022-12-17 11:17:58',2,1),(9,1,'2022-12-17 16:02:08',2,1),(19,1,'2022-12-17 16:04:55',2,1),(126,1,'2022-12-17 16:46:31',2,1);
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `flight_search`
--

/*!50001 DROP VIEW IF EXISTS `flight_search`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `flight_search` AS select `air_booking_fin`.`manage_air`.`flight_id` AS `flight_id`,`air_booking_fin`.`manage_air`.`num_seat` AS `num_seat`,`air_booking_fin`.`manage_air`.`coast_seat` AS `coast_seat`,`air_booking_fin`.`manage_air`.`departure_city` AS `departure_city`,`air_booking_fin`.`manage_air`.`arrival_city` AS `arrival_city`,`air_booking_fin`.`manage_air`.`airlines_site_office_id` AS `airlines_site_office_id`,`air_booking_fin`.`manage_air`.`flight_mood` AS `flight_mood`,`air_booking_fin`.`manage_air`.`airline_name` AS `airline_name`,`air_booking_fin`.`manage_air`.`airline_model` AS `airline_model` from `air_booking_fin`.`manage_air` union select `air_booking_usa`.`manage_air`.`flight_id` AS `flight_id`,`air_booking_usa`.`manage_air`.`num_seat` AS `num_seat`,`air_booking_usa`.`manage_air`.`coast_seat` AS `coast_seat`,`air_booking_usa`.`manage_air`.`departure_city` AS `departure_city`,`air_booking_usa`.`manage_air`.`arrival_city` AS `arrival_city`,`air_booking_usa`.`manage_air`.`airlines_site_office_id` AS `airlines_site_office_id`,`air_booking_usa`.`manage_air`.`flight_mood` AS `flight_mood`,`air_booking_usa`.`manage_air`.`airline_name` AS `airline_name`,`air_booking_usa`.`manage_air`.`airline_model` AS `airline_model` from `air_booking_usa`.`manage_air` */;
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

-- Dump completed on 2022-12-18 22:43:39
CREATE DATABASE  IF NOT EXISTS `air_booking_fin` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `air_booking_fin`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: air_booking_fin
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `branch_office`
--

DROP TABLE IF EXISTS `branch_office`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `branch_office` (
  `idbranch_office` int NOT NULL,
  `branch_name` varchar(45) NOT NULL,
  `country_id` varchar(45) NOT NULL,
  `country_name` varchar(45) NOT NULL,
  PRIMARY KEY (`idbranch_office`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch_office`
--

LOCK TABLES `branch_office` WRITE;
/*!40000 ALTER TABLE `branch_office` DISABLE KEYS */;
INSERT INTO `branch_office` VALUES (3,'Helsinki','2','FIN'),(4,'Lappenranta','2','FIN');
/*!40000 ALTER TABLE `branch_office` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `idcountry` int NOT NULL,
  `country_name` varchar(45) NOT NULL,
  PRIMARY KEY (`idcountry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'USA'),(2,'FIN'),(3,'TUR');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manage_air`
--

DROP TABLE IF EXISTS `manage_air`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manage_air` (
  `flight_id` int NOT NULL,
  `num_seat` int DEFAULT NULL,
  `coast_seat` varchar(45) DEFAULT NULL,
  `departure_city` varchar(45) DEFAULT NULL,
  `arrival_city` varchar(45) DEFAULT NULL,
  `airlines_site_office_id` int DEFAULT NULL,
  `flight_mood` varchar(45) DEFAULT NULL,
  `airline_name` varchar(45) DEFAULT NULL,
  `airline_model` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`flight_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manage_air`
--

LOCK TABLES `manage_air` WRITE;
/*!40000 ALTER TABLE `manage_air` DISABLE KEYS */;
INSERT INTO `manage_air` VALUES (1,30,'500','Lappenranta','Newyork',4,'1','Finair','Airbus');
/*!40000 ALTER TABLE `manage_air` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passenger`
--

DROP TABLE IF EXISTS `passenger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `passenger` (
  `idpassenger` int NOT NULL AUTO_INCREMENT,
  `passenger_name` varchar(45) NOT NULL,
  `passenger_email` varchar(45) NOT NULL,
  `passenger_tel` varchar(45) NOT NULL,
  `agency_site_office_id` varchar(45) NOT NULL,
  `country_id` varchar(45) NOT NULL,
  PRIMARY KEY (`idpassenger`)
) ENGINE=InnoDB AUTO_INCREMENT=2266 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passenger`
--

LOCK TABLES `passenger` WRITE;
/*!40000 ALTER TABLE `passenger` DISABLE KEYS */;
INSERT INTO `passenger` VALUES (2254,'Finch','finch@gmail.com','41009110098','4','2'),(2255,'Cummins','cummins@gmail.com','4100999862','4','2'),(2256,'Smith','smith@gmail.com','410099986221','4','2'),(2257,'Kartik','kartik@gmail.com','4100999860000','3','2'),(2258,'Warner','warner@gmail.com','410099986011','3','2'),(2259,'Miler','miller@gmail.com','410099986555','3','2'),(2260,'Rashid','rashid@gmail.com','4100999222','3','2'),(2261,'Rabbil','rabbil@gmail.com','358765400004','4','2'),(2262,'Naina','naina@gmail.com','+3435565','3','2'),(2263,'Nelli','nelli@gmail.com','+34545656','3','2'),(2264,'Rossa','rossa@gmail.com','+435465','3','2'),(2265,'Raihan','raihan@gmail.com','+2343','3','2');
/*!40000 ALTER TABLE `passenger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservation` (
  `reservation_id` int NOT NULL AUTO_INCREMENT,
  `passenger_id` int DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `flight_id` int DEFAULT NULL,
  `airline_site_office_id` int DEFAULT NULL,
  PRIMARY KEY (`reservation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
INSERT INTO `reservation` VALUES (19,1,'2022-12-17 16:04:55',2,1),(100,1,'2022-12-17 15:53:30',2,1),(150,1,'2022-12-17 16:04:55',2,1),(151,1,'2022-12-17 16:44:02',2,1),(152,1,'2022-12-17 16:44:07',2,1),(153,1,'2022-12-17 11:17:58',2,1),(154,1,'2022-12-17 16:02:08',2,1),(155,1,'2022-12-17 16:04:55',2,1),(156,1,'2022-12-17 16:46:31',2,1);
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-18 22:43:39
