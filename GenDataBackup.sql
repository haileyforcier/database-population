CREATE DATABASE  IF NOT EXISTS `dentalofficedb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `dentalofficedb`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: dentalofficedb
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
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointment` (
  `AppointmentID` int NOT NULL AUTO_INCREMENT,
  `PatientID` int DEFAULT NULL,
  `DentistID` int DEFAULT NULL,
  `AssistantID` int DEFAULT NULL,
  `AppointmentDate` date DEFAULT NULL,
  `StartTime` time DEFAULT NULL,
  `EndTime` time DEFAULT NULL,
  `InsuranceID` int DEFAULT NULL,
  `InsuranceCoveredAmount` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`AppointmentID`),
  KEY `PatientID` (`PatientID`),
  KEY `DentistID` (`DentistID`),
  KEY `AssistantID` (`AssistantID`),
  KEY `InsuranceID` (`InsuranceID`),
  CONSTRAINT `appointment_ibfk_1` FOREIGN KEY (`PatientID`) REFERENCES `patient` (`PatientID`),
  CONSTRAINT `appointment_ibfk_2` FOREIGN KEY (`DentistID`) REFERENCES `employee` (`EmployeeID`),
  CONSTRAINT `appointment_ibfk_3` FOREIGN KEY (`AssistantID`) REFERENCES `employee` (`EmployeeID`),
  CONSTRAINT `appointment_ibfk_4` FOREIGN KEY (`InsuranceID`) REFERENCES `insurance` (`InsuranceID`)
) ENGINE=InnoDB AUTO_INCREMENT=422 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment`
--

LOCK TABLES `appointment` WRITE;
/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
INSERT INTO `appointment` VALUES (372,15,2,7,'2024-11-02','11:01:00','11:39:01',4,39.61),(373,11,3,5,'2024-10-29','13:30:27','15:55:05',5,320.54),(374,10,1,7,'2024-10-08','13:36:14','16:25:59',9,34.08),(375,13,2,6,'2024-10-20','12:10:33','15:06:34',6,3077.80),(376,15,3,5,'2024-10-25','08:42:32','10:27:31',1,494.17),(377,9,1,4,'2024-11-02','13:30:53','15:00:01',7,416.03),(378,9,1,7,'2024-10-19','10:57:40','12:21:03',3,154.58),(379,15,2,6,'2024-10-31','14:05:20','16:56:07',8,2806.19),(380,9,3,5,'2024-11-03','13:22:42','14:21:38',4,179.01),(381,10,2,7,'2024-10-25','16:43:03','19:35:26',4,647.85),(382,10,3,6,'2024-10-20','12:20:42','12:57:51',6,549.41),(383,16,2,6,'2024-11-01','12:59:24','14:09:57',3,308.79),(384,13,2,6,'2024-10-07','10:45:38','12:32:55',3,555.52),(385,11,2,5,'2024-10-10','10:10:05','12:49:46',5,645.45),(386,16,3,7,'2024-10-26','16:56:10','19:53:56',5,456.97),(387,16,2,4,'2024-10-12','11:58:04','14:00:52',6,183.87),(388,12,3,5,'2024-11-01','10:27:02','12:56:27',7,324.11),(389,12,3,5,'2024-10-23','09:49:35','11:18:37',5,399.58),(390,10,3,4,'2024-10-20','16:38:20','18:11:16',2,3610.24),(391,9,2,6,'2024-10-09','14:04:28','14:46:50',10,329.17),(392,12,1,4,'2024-10-24','14:22:28','16:57:52',4,345.83),(393,11,3,5,'2024-10-14','10:16:01','11:58:25',4,483.43),(394,13,1,7,'2024-11-01','08:16:48','10:24:35',1,807.51),(395,13,1,6,'2024-11-02','10:23:58','12:40:07',4,2906.92),(396,12,2,6,'2024-11-05','13:34:49','14:33:00',8,333.21),(397,9,1,7,'2024-10-21','11:43:58','13:52:23',10,155.84),(398,14,1,5,'2024-10-22','15:13:15','16:52:11',10,18.53),(399,11,2,4,'2024-11-04','11:32:51','12:13:34',5,630.33),(400,9,3,5,'2024-10-15','15:47:04','17:30:20',9,497.63),(401,11,2,4,'2024-10-24','11:26:04','12:20:09',9,460.29),(402,16,2,4,'2024-10-26','11:13:50','13:53:15',7,3194.89),(403,9,2,5,'2024-10-13','15:52:13','18:14:28',8,1089.70),(404,9,3,6,'2024-10-20','11:13:39','12:42:54',4,771.33),(405,11,1,7,'2024-10-15','08:55:05','11:02:46',8,469.77),(406,11,3,7,'2024-10-31','10:38:41','13:38:33',10,3245.29),(407,12,3,7,'2024-10-29','14:34:21','16:01:53',4,2593.69),(408,15,1,4,'2024-10-19','11:44:31','14:18:27',9,152.55),(409,12,1,7,'2024-10-28','09:23:16','11:27:56',9,3020.41),(410,10,2,4,'2024-10-23','09:39:01','10:52:30',6,344.31),(411,11,1,6,'2024-10-29','11:08:45','12:57:36',2,774.26),(412,12,2,6,'2024-10-12','10:25:42','12:57:31',6,500.64),(413,10,1,4,'2024-10-20','11:41:27','13:58:53',10,397.62),(414,9,2,7,'2024-11-01','11:56:14','13:55:10',7,2757.11),(415,15,2,6,'2024-10-14','10:21:42','12:13:00',7,158.50),(416,16,3,7,'2024-10-13','08:52:04','11:19:53',1,488.18),(417,15,1,4,'2024-11-04','11:07:38','13:46:25',5,362.29),(418,9,2,6,'2024-10-26','14:27:24','16:28:56',6,361.56),(419,9,2,7,'2024-11-03','11:27:59','12:29:47',1,185.99),(420,16,2,7,'2024-11-01','10:22:31','12:40:50',7,159.19),(421,10,1,4,'2024-10-28','13:20:30','15:51:51',7,183.91);
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointmentservice`
--

DROP TABLE IF EXISTS `appointmentservice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointmentservice` (
  `AppointmentServiceID` int NOT NULL AUTO_INCREMENT,
  `AppointmentID` int NOT NULL,
  `ServiceID` int NOT NULL,
  PRIMARY KEY (`AppointmentServiceID`),
  KEY `AppointmentID` (`AppointmentID`),
  KEY `ServiceID` (`ServiceID`),
  CONSTRAINT `appointmentservice_ibfk_1` FOREIGN KEY (`AppointmentID`) REFERENCES `appointment` (`AppointmentID`) ON DELETE CASCADE,
  CONSTRAINT `appointmentservice_ibfk_2` FOREIGN KEY (`ServiceID`) REFERENCES `service` (`ServiceID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=330 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointmentservice`
--

LOCK TABLES `appointmentservice` WRITE;
/*!40000 ALTER TABLE `appointmentservice` DISABLE KEYS */;
INSERT INTO `appointmentservice` VALUES (266,372,2),(267,373,5),(268,374,2),(269,375,4),(270,376,6),(271,377,1),(272,377,5),(273,378,7),(274,379,4),(275,380,7),(276,381,3),(277,382,6),(278,383,5),(279,384,6),(280,385,3),(281,386,6),(282,387,7),(283,388,5),(284,388,1),(285,389,5),(286,390,4),(287,390,1),(288,390,5),(289,391,5),(290,392,5),(291,392,1),(292,392,2),(293,393,6),(294,394,7),(295,394,6),(296,394,1),(297,395,4),(298,396,7),(299,396,1),(300,396,7),(301,397,7),(302,398,1),(303,399,6),(304,399,7),(305,400,6),(306,401,6),(307,402,2),(308,402,4),(309,403,3),(310,403,6),(311,404,3),(312,405,6),(313,406,4),(314,406,7),(315,407,4),(316,408,7),(317,409,4),(318,410,5),(319,411,3),(320,412,6),(321,413,5),(322,414,4),(323,415,7),(324,416,6),(325,417,5),(326,418,5),(327,419,7),(328,420,7),(329,421,7);
/*!40000 ALTER TABLE `appointmentservice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `EmployeeID` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Role` varchar(50) NOT NULL,
  `PhoneNumber` varchar(15) NOT NULL,
  `Salary` decimal(10,2) NOT NULL,
  PRIMARY KEY (`EmployeeID`),
  UNIQUE KEY `PhoneNumber` (`PhoneNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Dr. Alice','Johnson','Dentist','555-987-4567',145000.00),(2,'Dr. Bob','Williams','Dentist','555-987-6543',140000.00),(3,'Dr. Ken','Jeong','Dentist','555-987-4775',155000.00),(4,'John','Smith','Assistant','555-789-3217',48000.00),(5,'Lisa','White','Assistant','555-789-2158',54000.00),(6,'Mark','Graham','Assistant','555-789-9785',50000.00),(7,'Amanda','Grace','Assistant','555-789-2467',52000.00);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insurance`
--

DROP TABLE IF EXISTS `insurance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insurance` (
  `InsuranceID` int NOT NULL AUTO_INCREMENT,
  `CompanyName` varchar(100) NOT NULL,
  `PolicyID` varchar(50) NOT NULL,
  `PhoneNumber` varchar(15) NOT NULL,
  `ExpirationDate` date NOT NULL,
  PRIMARY KEY (`InsuranceID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insurance`
--

LOCK TABLES `insurance` WRITE;
/*!40000 ALTER TABLE `insurance` DISABLE KEYS */;
INSERT INTO `insurance` VALUES (1,'Dental Health Plus','DHP-1233','800-101-2222','2026-01-01'),(2,'Dental Care Max','DCM-4756','800-332-4044','2025-12-01'),(3,'Delta Dental','DD-39827','800-999-7699','2027-12-31'),(4,'Smile Guard','SG-34027','800-010-9011','2027-12-01'),(5,'Ever White Insurance','EWI-37659','800-741-3329','2025-12-31'),(6,'Dental Bright Co','DBC-5587','800-668-9686','2026-02-28'),(7,'Safe Crest','SC-78776','800-257-2248','2024-12-31'),(8,'Guardian Health Insurance','GHI-99983','800-115-7788','2026-02-28'),(9,'Sunshine Care Inc','SCI-8867','800-554-2244','2028-01-31'),(10,'Cheap Dental Co','CDC-0001','800-500-7988','2024-12-01');
/*!40000 ALTER TABLE `insurance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `PatientID` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `BirthDate` date NOT NULL,
  `PhoneNumber` varchar(15) NOT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `State` varchar(50) DEFAULT NULL,
  `ZipCode` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`PatientID`),
  UNIQUE KEY `PhoneNumber` (`PhoneNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (9,'John','Doe','1980-06-15','715-271-7739','123 Main St','Chippewa Falls','WI','54729'),(10,'Jane','Smith','1930-08-17','715-720-0970','456 Elm St','Eau Claire','WI','54701'),(11,'Jim','Halpert','1978-02-18','747-424-8887','13831 Calvert St','Van Nuys','CA','91401'),(12,'Pamela','Halpert','1979-03-25','747-424-8888','13831 Calvert St','Van Nuys','CA','91401'),(13,'Peter','Griffin','1966-06-22','401-785-0331','31 Spooner St','Quahog','RI','00093'),(14,'Lois','Pewterschmidt','1967-06-03','401-444-3679','1180 Narragansett Blvd','Cranston','RI','02905'),(15,'Gordon','Ramsay','1966-11-08','877-796-2096','3655 Las Vegas Blvd','Las Vegas','NV','89109'),(16,'Hailey','Forcier','2003-07-27','715-944-6756','1369 Daphne Circle','Chippewa Falls','WI','54729');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patientinsurance`
--

DROP TABLE IF EXISTS `patientinsurance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patientinsurance` (
  `PatientInsuranceID` int NOT NULL AUTO_INCREMENT,
  `PatientID` int DEFAULT NULL,
  `InsuranceID` int DEFAULT NULL,
  PRIMARY KEY (`PatientInsuranceID`),
  KEY `PatientID` (`PatientID`),
  KEY `InsuranceID` (`InsuranceID`),
  CONSTRAINT `patientinsurance_ibfk_1` FOREIGN KEY (`PatientID`) REFERENCES `patient` (`PatientID`),
  CONSTRAINT `patientinsurance_ibfk_2` FOREIGN KEY (`InsuranceID`) REFERENCES `insurance` (`InsuranceID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patientinsurance`
--

LOCK TABLES `patientinsurance` WRITE;
/*!40000 ALTER TABLE `patientinsurance` DISABLE KEYS */;
INSERT INTO `patientinsurance` VALUES (1,9,1),(2,9,2),(3,10,3),(4,11,4),(5,12,5),(6,13,6),(7,14,7),(8,15,8),(9,16,9);
/*!40000 ALTER TABLE `patientinsurance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service` (
  `ServiceID` int NOT NULL AUTO_INCREMENT,
  `ServiceName` varchar(100) DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`ServiceID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service`
--

LOCK TABLES `service` WRITE;
/*!40000 ALTER TABLE `service` DISABLE KEYS */;
INSERT INTO `service` VALUES (1,'General Cleaning',25.00),(2,'X-Rays',50.00),(3,'Crowns',1000.00),(4,'Install Braces',4000.00),(5,'Adjust Braces',500.00),(6,'Cavity Repair',750.00),(7,'Enamel Sealant',250.00);
/*!40000 ALTER TABLE `service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'dentalofficedb'
--
/*!50003 DROP PROCEDURE IF EXISTS `PopulateAppointments` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PopulateAppointments`()
BEGIN
    DECLARE v_PatientID INT;
    DECLARE v_DentistID INT;
    DECLARE v_AssistantID INT;
    DECLARE v_InsuranceID INT;
    DECLARE v_AppointmentDate DATE;
    DECLARE v_StartTime TIME;
    DECLARE v_EndTime TIME;
    DECLARE v_CoveredAmount DECIMAL(10, 2);
    DECLARE v_ServiceID INT;
    DECLARE v_ServiceCount INT;
    DECLARE v_TotalServiceCost DECIMAL(10, 2);
    DECLARE v_ServicePrice DECIMAL(10, 2);
    DECLARE counter INT DEFAULT 0;
    DECLARE i INT;
    DECLARE v_LastAppointmentID INT;
    DECLARE v_AppointmentDuration INT;

    -- Loop to create 50 appointments
    WHILE counter < 50 DO
        -- Select random PatientID, DentistID, AssistantID
        SET v_PatientID = FLOOR(9 + RAND() * (16 - 9 + 1)); -- Patient IDs 9 to 16
        SET v_DentistID = FLOOR(1 + RAND() * (3)); -- 3 dentists (IDs 1-3)
        SET v_AssistantID = FLOOR(4 + RAND() * (4)); -- Assistant IDs that range from 4 to 7

        -- Randomly select an InsuranceID 
        SET v_InsuranceID = FLOOR(1 + RAND() * (10)); -- bc 10 insurance records

        -- Generate random appointment date and time
        SET v_AppointmentDate = CURDATE() + INTERVAL FLOOR(RAND() * 30) DAY; -- Random date within 30 days from today
        SET v_StartTime = ADDTIME('08:00:00', SEC_TO_TIME(FLOOR(RAND() * 9 * 3600))); -- Random time between 08:00:00 and 17:00:00
        
        -- Random appointment duration between 30 minutes (1800 seconds) to 3 hours (10800 seconds)
        SET v_AppointmentDuration = FLOOR(1800 + RAND() * (10800 - 1800 + 1)); -- Random duration in seconds
        SET v_EndTime = ADDTIME(v_StartTime, SEC_TO_TIME(v_AppointmentDuration)); -- End time based on duration

        -- Insert into Appointment table
        INSERT INTO Appointment (PatientID, DentistID, AssistantID, AppointmentDate, StartTime, EndTime, InsuranceID)
        VALUES (v_PatientID, v_DentistID, v_AssistantID, v_AppointmentDate, v_StartTime, v_EndTime, v_InsuranceID);

        -- Get the last inserted AppointmentID
        SET v_LastAppointmentID = LAST_INSERT_ID();
        
        -- Randomly assign number of services (1-3 services)
        SET v_ServiceCount = IF(RAND() < 0.25, FLOOR(1 + RAND() * 3), 1); -- 25% chance for 2 or 3 services, otherwise 1 service
        SET v_TotalServiceCost = 0; -- Initialize total service cost for this appointment

        -- Loop to assign services
        SET i = 0; -- Initialize service index
        WHILE i < v_ServiceCount DO
            SET v_ServiceID = FLOOR(1 + RAND() * (7)); -- bc 7 services (IDs 1-7)

            -- Get the service price
            SELECT Price INTO v_ServicePrice FROM Service WHERE ServiceID = v_ServiceID;

            -- Add to total service cost
            SET v_TotalServiceCost = v_TotalServiceCost + v_ServicePrice;

            -- Insert into AppointmentService table
            INSERT INTO AppointmentService (AppointmentID, ServiceID) VALUES (v_LastAppointmentID, v_ServiceID);

            SET i = i + 1; -- Increment service index
        END WHILE;

        -- Calculate insurance coverage amount (60% to 80% of total service cost)
        SET v_CoveredAmount = v_TotalServiceCost * (0.6 + RAND() * 0.2); -- Random value between 60% and 80%

        -- Update the Appointment with the insurance covered amount
        UPDATE Appointment
        SET InsuranceCoveredAmount = v_CoveredAmount
        WHERE AppointmentID = v_LastAppointmentID;

        SET counter = counter + 1; -- Increment the counter
    END WHILE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-07 21:27:46
