-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: students_data
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
-- Table structure for table `academic_groups`
--

DROP TABLE IF EXISTS `academic_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `academic_groups` (
  `id_group` bigint NOT NULL AUTO_INCREMENT,
  `group_name` varchar(12) NOT NULL,
  `language` varchar(2) NOT NULL,
  `curator_id` bigint DEFAULT NULL,
  `head_student_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id_group`),
  UNIQUE KEY `UK_r8yfg2spl4c9j26fiukdi37q0` (`group_name`),
  KEY `FKs3b2bcmc64e1085rr8oa27l4o` (`curator_id`),
  KEY `FKjf88a915c7fwvt0drx0o5tkdj` (`head_student_id`),
  CONSTRAINT `FKjf88a915c7fwvt0drx0o5tkdj` FOREIGN KEY (`head_student_id`) REFERENCES `students` (`id`),
  CONSTRAINT `FKs3b2bcmc64e1085rr8oa27l4o` FOREIGN KEY (`curator_id`) REFERENCES `teachers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `academic_groups`
--

LOCK TABLES `academic_groups` WRITE;
/*!40000 ALTER TABLE `academic_groups` DISABLE KEYS */;
INSERT INTO `academic_groups` VALUES (1,'КН-221а','UK',NULL,NULL),(2,'КН-221б','UK',NULL,NULL),(3,'КН-221г','UK',NULL,NULL),(4,'КН-222с','UK',NULL,NULL),(16,'КН-221в','UK',NULL,NULL);
/*!40000 ALTER TABLE `academic_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adresses`
--

DROP TABLE IF EXISTS `adresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adresses` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adresses`
--

LOCK TABLES `adresses` WRITE;
/*!40000 ALTER TABLE `adresses` DISABLE KEYS */;
INSERT INTO `adresses` VALUES (7,'','м.Покровськ','Україна','Донецька'),(8,'','м. Лохвиця','Україна','Полтавська область'),(9,'','','Німеччина',''),(10,'','','Україна','Полтавська область'),(11,'','Рівне','Україна',''),(12,'','смт Десна','Україна','Чернігівська область'),(13,'','Харків','Україна',''),(14,'','Мерефа','Україна','Харьківська'),(15,'','','Україна','Харьков'),(16,'','','Україна','Луганьска'),(17,'','','Україна','Маріуполь'),(18,'','','Україна','Луганьска область'),(19,'','Дніпро','Україна',''),(20,'','Полтава','Україна','Полтавська область'),(21,'','Луганьск','Україна',''),(22,'','м.Синельникове','Україна','Дніпро'),(23,'','','Україна','Київ'),(24,'гуртожиток Гігант','Харків','Україна','Харківська'),(25,'','м.Тернівка','Україна','Дніпропетровська обл.'),(26,'','Київ','Україна','Київська'),(27,'','м.Нетішин','Україна','Хмельницька, Шепетівський район'),(28,'','Харків','Україна','Харківська'),(29,'','Київ','Україна','Киїівська');
/*!40000 ALTER TABLE `adresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails`
--

DROP TABLE IF EXISTS `emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emails` (
  `id` bigint NOT NULL,
  `active` bit(1) NOT NULL DEFAULT b'1',
  `prior` bit(1) NOT NULL DEFAULT b'0',
  `owner_id` bigint DEFAULT NULL,
  `email` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_1u6nfbte7kqw4vwsaw6pq0qyh` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails`
--

LOCK TABLES `emails` WRITE;
/*!40000 ALTER TABLE `emails` DISABLE KEYS */;
INSERT INTO `emails` VALUES (3461,_binary '',_binary '',3252,'Dmytro.Baranes@cs.khpi.edu.ua'),(3462,_binary '',_binary '\0',3252,'dimabaranets125@gmail.com'),(3464,_binary '',_binary '',3253,'Bohdan.Byelchenko@cs.khpi.edu.ua'),(3465,_binary '',_binary '\0',3253,'bpglife15@gmail.com'),(3466,_binary '',_binary '',3254,'Yaroslav.Borodko@cs.khpi.edu.ua'),(3467,_binary '',_binary '\0',3254,'wildp3k4@gmail.com'),(3468,_binary '',_binary '',3255,'Rostyslav.Vasylchenko@cs.khpi.edu.ua'),(3469,_binary '',_binary '\0',3255,'rostislavvsilcenko@gmail.com'),(3470,_binary '',_binary '',3256,'Viktor.Halaburda@cs.khpi.edu.ua'),(3472,_binary '',_binary '\0',3256,'pilkaviktor@gmail.com'),(3473,_binary '',_binary '',3257,'Ihor.Hosuliak@cs.khpi.edu.ua'),(3474,_binary '',_binary '\0',3257,'blackprisrak@gmail.com'),(3475,_binary '',_binary '',3258,'Denys.Danylenko@cs.khpi.edu.ua'),(3476,_binary '',_binary '\0',3258,'danilenkodenis12321@gmail.com'),(3477,_binary '',_binary '',3259,'Daniil.Zaparaniuk@cs.khpi.edu.ua'),(3478,_binary '',_binary '\0',3259,'zaparanuk_daniil@ukr.net'),(3479,_binary '',_binary '',3260,'Marharyta.Zaias@cs.khpi.edu.ua'),(3480,_binary '',_binary '\0',3260,'zayatsmargo666@gmail.com'),(3481,_binary '',_binary '',3261,'Artur.Kalinenko@cs.khpi.edu.ua'),(3482,_binary '',_binary '\0',3261,'kalinenko.a01@gmail.com'),(3483,_binary '',_binary '',3262,'Yurii.Kyryyenko@cs.khpi.edu.ua'),(3484,_binary '',_binary '\0',3262,'urakirienko254@gmail.com'),(3485,_binary '',_binary '',3263,'Danylo.Koniskyi@cs.khpi.edu.ua'),(3486,_binary '',_binary '\0',3263,'daniilkon24@gmail.com'),(3487,_binary '',_binary '',3264,'Anton.Kosinov@cs.khpi.edu.ua'),(3488,_binary '',_binary '\0',3264,'toha.kosin@gmail.com'),(3489,_binary '',_binary '',3265,'Dmytro.Kostiuchenko@cs.khpi.edu.ua'),(3490,_binary '',_binary '\0',3265,'lebr22@ukr.net'),(3491,_binary '',_binary '',3266,'Daryna.Kriazheva@cs.khpi.edu.ua'),(3492,_binary '',_binary '\0',3266,'darina.Kruazheva@gmail.com'),(3493,_binary '',_binary '',3267,'Nazar.Kuzmensov@cs.khpi.edu.ua'),(3494,_binary '',_binary '\0',3267,'kuzmentsov@i.ua'),(3495,_binary '',_binary '',3268,'Pavlo.Lysovskyi@cs.khpi.edu.ua'),(3496,_binary '',_binary '\0',3268,'lisovskiy.04@gmail.com'),(3497,_binary '',_binary '',3269,'Valentyn.Lytovchenko@cs.khpi.edu.ua'),(3498,_binary '',_binary '\0',3269,'gemnazie1@gmail.com'),(3499,_binary '',_binary '',3270,'Ivan.Maiorov@cs.khpi.edu.ua'),(3500,_binary '',_binary '\0',3270,'ivanmayorov12@gmail.com'),(3501,_binary '',_binary '',3271,'Andrii.Nyetkov@cs.khpi.edu.ua'),(3502,_binary '',_binary '\0',3271,'netkov15@gmail.com'),(3503,_binary '',_binary '',3272,'Kostiantyn.Nizov@cs.khpi.edu.ua'),(3504,_binary '',_binary '\0',3272,'nizovkonstantin69@gmail.com'),(3505,_binary '',_binary '',3273,'maksym.o.ovcharenko@cs.khpi.edu.ua'),(3506,_binary '',_binary '',3274,'Mykyta.Plyeshko@cs.khpi.edu.ua'),(3507,_binary '',_binary '\0',3274,'zno2021ukraine@gmail.com'),(3508,_binary '',_binary '',3275,'Daria.Sabelnikova@cs.khpi.edu.ua'),(3509,_binary '',_binary '',3276,'Maksym.Skorin@cs.khpi.edu.ua'),(3510,_binary '',_binary '\0',3276,'max.skorin1@gmail.com'),(3511,_binary '',_binary '',3277,'Yehor.Sulayev@cs.khpi.edu.ua'),(3512,_binary '',_binary '\0',3277,'lacunacoil55@gmail.com'),(3513,_binary '',_binary '',3278,'Oleksandr.Trufanov@cs.khpi.edu.ua'),(3514,_binary '',_binary '\0',3278,'abetthmail@gmail.com'),(3515,_binary '',_binary '',3279,'Artur.Chechun@cs.khpi.edu.ua'),(3516,_binary '',_binary '\0',3279,'casexfas@gmail.com'),(3517,_binary '',_binary '',3280,'Valerii.Shevchenko@cs.khpi.edu.ua'),(3518,_binary '',_binary '\0',3280,'valeriyshevchenko2004@gmail.com'),(3519,_binary '',_binary '',3281,'Yehor.Shuliupov@cs.khpi.edu.ua'),(3640,_binary '',_binary '\0',3275,'');
/*!40000 ALTER TABLE `emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequences`
--

DROP TABLE IF EXISTS `hibernate_sequences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequences` (
  `sequence_name` varchar(255) NOT NULL,
  `next_val` bigint DEFAULT NULL,
  PRIMARY KEY (`sequence_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequences`
--

LOCK TABLES `hibernate_sequences` WRITE;
/*!40000 ALTER TABLE `hibernate_sequences` DISABLE KEYS */;
INSERT INTO `hibernate_sequences` VALUES ('default',3900);
/*!40000 ALTER TABLE `hibernate_sequences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parents`
--

DROP TABLE IF EXISTS `parents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parents` (
  `id` bigint NOT NULL,
  `birthday` date DEFAULT NULL,
  `fname` varchar(15) DEFAULT NULL,
  `sname` varchar(25) NOT NULL,
  `pname` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKrt1ihi0we4r5pr3s02vwwh4ox` (`sname`,`fname`,`pname`,`birthday`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parents`
--

LOCK TABLES `parents` WRITE;
/*!40000 ALTER TABLE `parents` DISABLE KEYS */;
/*!40000 ALTER TABLE `parents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persons_adresses`
--

DROP TABLE IF EXISTS `persons_adresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persons_adresses` (
  `id_address` bigint NOT NULL,
  `current` bit(1) NOT NULL DEFAULT b'0',
  `id_owner` bigint NOT NULL,
  PRIMARY KEY (`id_owner`,`id_address`),
  KEY `FKgw1ec487jy8mm0c2e5ol9vt27` (`id_address`),
  CONSTRAINT `FKgw1ec487jy8mm0c2e5ol9vt27` FOREIGN KEY (`id_address`) REFERENCES `adresses` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persons_adresses`
--

LOCK TABLES `persons_adresses` WRITE;
/*!40000 ALTER TABLE `persons_adresses` DISABLE KEYS */;
INSERT INTO `persons_adresses` VALUES (7,_binary '',3252),(8,_binary '',3253),(9,_binary '',3254),(10,_binary '',3255),(11,_binary '',3256),(12,_binary '\0',3258),(13,_binary '\0',3259),(14,_binary '',3260),(15,_binary '',3261),(16,_binary '',3263),(17,_binary '\0',3265),(18,_binary '',3266),(19,_binary '',3267),(20,_binary '',3268),(21,_binary '',3269),(22,_binary '',3270),(23,_binary '',3272),(24,_binary '',3275),(25,_binary '',3276),(26,_binary '',3278),(27,_binary '',3279),(28,_binary '',3280),(29,_binary '',3281);
/*!40000 ALTER TABLE `persons_adresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phones`
--

DROP TABLE IF EXISTS `phones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phones` (
  `id` bigint NOT NULL,
  `active` bit(1) NOT NULL DEFAULT b'1',
  `prior` bit(1) NOT NULL DEFAULT b'0',
  `owner_id` bigint DEFAULT NULL,
  `phone_number` varchar(12) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_3anxg73qq5wyh7mjihr2lfq54` (`phone_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phones`
--

LOCK TABLES `phones` WRITE;
/*!40000 ALTER TABLE `phones` DISABLE KEYS */;
INSERT INTO `phones` VALUES (2963,_binary '',_binary '',3252,'380999517251'),(2964,_binary '',_binary '\0',3252,'380664879564'),(2965,_binary '',_binary '',3253,'380992281534'),(2966,_binary '',_binary '\0',3253,'380994311840'),(2967,_binary '',_binary '',3254,'380636015170'),(2968,_binary '',_binary '\0',3254,'380637133651'),(2969,_binary '',_binary '',3255,'380502126323'),(2970,_binary '',_binary '\0',3255,'380957615411'),(2971,_binary '',_binary '',3256,'380979332470'),(2972,_binary '',_binary '\0',3256,'380973537718'),(2973,_binary '',_binary '',3257,'380680293404'),(2974,_binary '',_binary '\0',3257,'380984500164'),(2975,_binary '',_binary '',3258,'380631906356'),(2976,_binary '',_binary '',3259,'380665639882'),(2977,_binary '',_binary '\0',3259,'380667438268'),(2978,_binary '',_binary '',3260,'380669401372'),(2979,_binary '',_binary '\0',3260,'380953596405'),(2980,_binary '',_binary '',3261,'380637213698'),(2981,_binary '',_binary '\0',3261,'380984808990'),(2982,_binary '',_binary '',3262,'380686142797'),(2983,_binary '',_binary '\0',3262,'380674976859'),(2984,_binary '',_binary '',3263,'380633531538'),(2985,_binary '',_binary '',3264,'380999583558'),(2986,_binary '',_binary '\0',3264,'380500387759'),(2987,_binary '',_binary '',3265,'380981766948'),(2988,_binary '',_binary '\0',3265,'380687825944'),(2989,_binary '',_binary '',3266,'380660434049'),(2990,_binary '',_binary '',3267,'380967855214'),(2991,_binary '',_binary '\0',3267,'380969905842'),(2992,_binary '',_binary '',3268,'380669667630'),(2993,_binary '',_binary '\0',3268,'380674584890'),(2994,_binary '',_binary '',3269,'380988562747'),(2995,_binary '',_binary '\0',3269,'380990362717'),(2996,_binary '',_binary '',3270,'380675949751'),(2997,_binary '',_binary '\0',3270,'380679893755'),(2998,_binary '',_binary '',3271,'380934760887'),(2999,_binary '',_binary '\0',3271,'380631573445'),(3000,_binary '',_binary '',3272,'380968191078'),(3001,_binary '',_binary '\0',3272,'380965498106'),(3002,_binary '',_binary '',3273,'380990383718'),(3003,_binary '',_binary '',3274,'380997440565'),(3004,_binary '',_binary '\0',3274,'380990101517'),(3005,_binary '',_binary '',3275,'380959176465'),(3006,_binary '',_binary '',3276,'380667308661'),(3007,_binary '',_binary '\0',3276,'380508293812'),(3453,_binary '',_binary '',3278,'380508155956'),(3454,_binary '',_binary '\0',3278,'380507547600'),(3455,_binary '',_binary '',3279,'380987546926'),(3456,_binary '',_binary '\0',3279,'380987554815'),(3457,_binary '',_binary '',3280,'380993736194'),(3458,_binary '',_binary '\0',3280,'380954918774'),(3459,_binary '',_binary '',3281,'380669032945');
/*!40000 ALTER TABLE `phones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `id` bigint NOT NULL,
  `birthday` date DEFAULT NULL,
  `fname` varchar(15) DEFAULT NULL,
  `sname` varchar(25) NOT NULL,
  `pname` varchar(25) DEFAULT NULL,
  `contract` bit(1) NOT NULL DEFAULT b'0',
  `scholarship` bit(1) NOT NULL DEFAULT b'0',
  `academic_group_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK893tj147lp5cx8bbjlfx21uv5` (`sname`,`fname`,`pname`,`birthday`),
  KEY `FKgx9bou1cdv4ig36rpj19a4y8o` (`academic_group_id`),
  CONSTRAINT `FKgx9bou1cdv4ig36rpj19a4y8o` FOREIGN KEY (`academic_group_id`) REFERENCES `academic_groups` (`id_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (3252,NULL,'Дмитро','БАРАНЕЦЬ','Сергійович',_binary '\0',_binary '\0',16),(3253,NULL,'Богдан','БЄЛЬЧЕНКО','Вікторович',_binary '\0',_binary '\0',16),(3254,NULL,'Ярослав','БОРОДЬКО','Анатолійович',_binary '\0',_binary '\0',16),(3255,NULL,'Ростислав','ВАСИЛЬЧЕНКО','Олександрович',_binary '\0',_binary '\0',16),(3256,NULL,'Віктор','ГАЛАБУРДА','Олександрович',_binary '\0',_binary '\0',16),(3257,NULL,'Ігор','ГОЦУЛЯК','Васильович',_binary '\0',_binary '\0',16),(3258,NULL,'Денис','ДАНИЛЕНКО','Юрійович',_binary '\0',_binary '\0',16),(3259,NULL,'Данііл','ЗАПАРАНЮК','Антонович',_binary '\0',_binary '\0',16),(3260,NULL,'Маргарита','ЗАЯЦЬ','Павлівна',_binary '\0',_binary '\0',16),(3261,NULL,'Артур','КАЛІНЕНКО','Дмитрович',_binary '\0',_binary '\0',16),(3262,NULL,'Юрій','КИРИЄНКО','Геннадійович',_binary '\0',_binary '\0',16),(3263,NULL,'Данило','КОНІЦЬКИЙ','Володимирович',_binary '\0',_binary '\0',16),(3264,NULL,'Антон','КОСІНОВ','Олександрович',_binary '\0',_binary '\0',16),(3265,NULL,'Дмитро','КОСТЮЧЕНКО','Ігорович',_binary '\0',_binary '\0',16),(3266,NULL,'Дарина','КРЯЖЕВА','Євгенівна',_binary '\0',_binary '\0',16),(3267,NULL,'Назар','КУЗЬМЕНЦОВ','Олексійович',_binary '\0',_binary '\0',16),(3268,NULL,'Павло','ЛИСОВСЬКИЙ','Павлович',_binary '\0',_binary '\0',16),(3269,NULL,'Валентин','ЛИТОВЧЕНКО','Віталійович',_binary '\0',_binary '\0',16),(3270,NULL,'Іван','МАЙОРОВ','Андрійович',_binary '\0',_binary '\0',16),(3271,NULL,'Андрій','НЄТКОВ','Романович',_binary '\0',_binary '\0',16),(3272,NULL,'Костянтин','НІЗОВ','Олександрович',_binary '\0',_binary '\0',16),(3273,NULL,'Максим','ОВЧАРЕНКО','Олександрович',_binary '\0',_binary '\0',16),(3274,NULL,'Микита','ПЛЄШКО','Михайлович',_binary '\0',_binary '\0',16),(3275,NULL,'Дар`я','САБЕЛЬНІКОВА','Сергіївна',_binary '\0',_binary '\0',16),(3276,NULL,'Максим','СКОРІН','Андрійович',_binary '\0',_binary '\0',16),(3277,NULL,'Єгор','СУЛАЄВ','Дмитрович',_binary '\0',_binary '\0',16),(3278,NULL,'Олександр','ТРУФАНОВ','Олегович',_binary '\0',_binary '\0',16),(3279,NULL,'Артур','ЧЕЧУН','Геннадійович',_binary '\0',_binary '\0',16),(3280,NULL,'Валерій','ШЕВЧЕНКО','Олександрович',_binary '\0',_binary '\0',16),(3281,NULL,'Єгор','ШУЛЮПОВ','Русланович',_binary '\0',_binary '\0',16);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students_parents`
--

DROP TABLE IF EXISTS `students_parents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students_parents` (
  `id_parent` bigint NOT NULL,
  `kinship_degree` smallint NOT NULL,
  `id_student` bigint NOT NULL,
  PRIMARY KEY (`id_parent`,`id_student`),
  KEY `FKc2ulru0oj0qrxfxcnppw23kxv` (`id_student`),
  CONSTRAINT `FKc2ulru0oj0qrxfxcnppw23kxv` FOREIGN KEY (`id_student`) REFERENCES `parents` (`id`),
  CONSTRAINT `FKdg17a5ps2c7p7u978sqkomhum` FOREIGN KEY (`id_parent`) REFERENCES `students` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students_parents`
--

LOCK TABLES `students_parents` WRITE;
/*!40000 ALTER TABLE `students_parents` DISABLE KEYS */;
/*!40000 ALTER TABLE `students_parents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teachers` (
  `id` bigint NOT NULL,
  `birthday` date DEFAULT NULL,
  `fname` varchar(15) DEFAULT NULL,
  `sname` varchar(25) NOT NULL,
  `pname` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKc1v620sw8msi0ucikjq2hyjo6` (`sname`,`fname`,`pname`,`birthday`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers`
--

LOCK TABLES `teachers` WRITE;
/*!40000 ALTER TABLE `teachers` DISABLE KEYS */;
INSERT INTO `teachers` VALUES (8,'1972-08-14','Dmytro','Dvukhglavov','Eduardovych');
/*!40000 ALTER TABLE `teachers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-05  9:58:15
