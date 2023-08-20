CREATE DATABASE  IF NOT EXISTS `travel_lines_BK` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `travel_lines_BK`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: travel_lines_BK
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `log_client_table`
--

DROP TABLE IF EXISTS `log_client_table`; ##tabla auxiliar para los triggers de creacion o eliminacion de cliente
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_client_table` (
  `id_client` int NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `surname` varchar(30) NOT NULL,
  `id_person` int NOT NULL,
  `user_id` varchar(30) DEFAULT NULL,
  `date_action` date NOT NULL,
  `hour_action` time NOT NULL,
  `action_log` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_client_table`
--

LOCK TABLES `log_client_table` WRITE;
/*!40000 ALTER TABLE `log_client_table` DISABLE KEYS */;##ejecutado dentro de el lapso de savepoints por ello esta tiene informacion
INSERT INTO `log_client_table` VALUES (102,'Testing','johndoe',1234567810,'root@localhost','2023-08-19','16:23:05','NEWUSER'),(102,'Testing','johndoe',1234567810,'root@localhost','2023-08-19','16:23:05','DELETED'),(103,'Samanta','Collin',799994217,'root@localhost','2023-08-19','16:23:12','NEWUSER'),(104,'John','DOE',730650231,'root@localhost','2023-08-19','16:23:12','NEWUSER'),(105,'Ramona','Flowers',666955620,'root@localhost','2023-08-19','16:23:12','NEWUSER'),(106,'Scott','Pilgrim',10747849,'root@localhost','2023-08-19','16:23:12','NEWUSER'),(107,'Carla','Col',100962317,'root@localhost','2023-08-19','16:23:12','NEWUSER'),(108,'Johna','DOEA',123650231,'root@localhost','2023-08-19','16:23:12','NEWUSER'),(109,'Ramon','Fruit',777955620,'root@localhost','2023-08-19','16:23:12','NEWUSER'),(110,'Scotish','Plague',101747849,'root@localhost','2023-08-19','16:23:12','NEWUSER');
/*!40000 ALTER TABLE `log_client_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `plans_sold_by`##vista que muestra cuales planes de viaje a sido vendidos por cual vendedor
--

DROP TABLE IF EXISTS `plans_sold_by`;
/*!50001 DROP VIEW IF EXISTS `plans_sold_by`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `plans_sold_by` AS SELECT 
 1 AS `ID`,
 1 AS `Seller`,
 1 AS `surname`,
 1 AS `destination`,
 1 AS `price`,
 1 AS `currency`,
 1 AS `clients`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `plans_under_a_week` #vista de planes que generalmente son los que mas se vende de 1 semana 
--

DROP TABLE IF EXISTS `plans_under_a_week`;
/*!50001 DROP VIEW IF EXISTS `plans_under_a_week`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `plans_under_a_week` AS SELECT 
 1 AS `origin`,
 1 AS `destination`,
 1 AS `price`,
 1 AS `currency`,
 1 AS `capacity`,
 1 AS `from`,
 1 AS `till`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `plans_with_hotel_rating_over_35`## vista de planes cuyo hotel tenga 3.5 estrellas
--

DROP TABLE IF EXISTS `plans_with_hotel_rating_over_35`;
/*!50001 DROP VIEW IF EXISTS `plans_with_hotel_rating_over_35`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `plans_with_hotel_rating_over_35` AS SELECT 
 1 AS `destination`,
 1 AS `price`,
 1 AS `currency`,
 1 AS `hotel`,
 1 AS `Rating`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `plans_with_included_meals`##vista la cual muestra los planes que tiene comida incluida
--

DROP TABLE IF EXISTS `plans_with_included_meals`;
/*!50001 DROP VIEW IF EXISTS `plans_with_included_meals`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `plans_with_included_meals` AS SELECT 
 1 AS `destination`,
 1 AS `price`,
 1 AS `currency`,
 1 AS `food`,
 1 AS `restaurant`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `table_client`##tabla que lista los clientes de la base de datos de nombre cedula y forma de contacto
--
--

DROP TABLE IF EXISTS `table_client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `table_client` (
  `id_client` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) NOT NULL,
  `surname` varchar(30) NOT NULL,
  `id_person` int NOT NULL,
  `mai` varchar(320) DEFAULT NULL,
  `phone` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id_client`),
  UNIQUE KEY `id_client` (`id_client`),
  UNIQUE KEY `id_person` (`id_person`),
  UNIQUE KEY `mai` (`mai`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_client`
--

LOCK TABLES `table_client` WRITE;
/*!40000 ALTER TABLE `table_client` DISABLE KEYS */;
INSERT INTO `table_client` VALUES (1,'Brion','Siward',650954217,'bsiward0@wsj.com','+30 216 299 5636'),(2,'Stillmann','Beales',770650153,'sbeales1@mit.edu','+57 258 520 1072'),(3,'Winna','Segar',846955620,'wsegar2@aboutads.info','+51 607 993 0023'),(4,'Rubia','Bowyer',297747849,'rbowyer3@rediff.com','+51 379 109 0222'),(5,'Trescha','Gilardone',69314896,'tgilardone4@jugem.jp','+7 659 648 9497'),(6,'Rozalie','Tallquist',272593173,'rtallquist5@businesswire.com','+7 423 305 0460'),(7,'Cynthia','Giercke',768450608,'cgiercke6@simplemachines.org','+62 886 708 8576'),(8,'Terrye','Monnelly',4853773,'tmonnelly7@ca.gov','+84 841 215 8176'),(9,'Sergeant','Plumridege',60371061,'splumridege8@ihg.com','+33 580 143 3722'),(10,'Lefty','Whyman',166401857,'lwhyman9@unesco.org','+62 810 726 8940'),(11,'Salmon','Spalton',495104380,'sspaltona@epa.gov','+62 233 425 1295'),(12,'Ivory','Kittoe',618852761,'ikittoeb@bizjournals.com','+977 392 657 9002'),(13,'Burke','Tewkesberrie',110189575,'btewkesberriec@hao123.com',NULL),(14,'Suzie','Keeting',396136110,'skeetingd@last.fm','+27 221 166 4755'),(15,'Mair','Gummory',137906493,'mgummorye@unicef.org','+55 943 114 0676'),(16,'Alard','Blakeden',912386089,'ablakedenf@free.fr','+64 406 815 7389'),(17,'Clay','Simione',8105073,NULL,'+351 257 383 2226'),(18,'Elroy','Ewens',609177124,'eewensh@reverbnation.com','+62 419 486 9254'),(19,'Amery','Londer',849127464,'alonderi@topsy.com','+977 439 622 5989'),(20,'Dory','Craighead',417632358,'dcraigheadj@wordpress.org','+86 323 180 7185'),(21,'Maudie','Langmaid',314370821,'mlangmaidk@github.com','+84 500 192 3849'),(22,'Alana','Chidlow',21203588,'achidlowl@wisc.edu','+236 810 459 1352'),(23,'Stoddard','Gilyott',727244010,'sgilyottm@purevolume.com','+7 863 385 4605'),(24,'Tamara','Baroch',857229791,'tbarochn@desdev.cn',NULL),(25,'Rodie','Justham',648893242,'rjusthamo@mayoclinic.com','+1 901 428 7104'),(26,'Annmarie','Outibridge',453169231,'aoutibridgep@plala.or.jp','+48 106 137 9905'),(27,'Nellie','Wilderspoon',32561768,'nwilderspoonq@naver.com','+351 624 489 7600'),(28,'Carita','Epperson',707448364,'ceppersonr@ucoz.ru','+86 519 289 6125'),(29,'Randi','Carruth',38292785,'rcarruths@newyorker.com','+57 656 507 0566'),(30,'Don','Hallowes',554941632,'dhallowest@yellowpages.com','+351 820 388 1949'),(31,'Sigvard','Redgrave',609682364,'sredgraveu@forbes.com','+351 548 199 9182'),(32,'Abdul','Tomsa',428713814,'atomsav@nhs.uk','+44 939 330 7882'),(33,'Ninnetta','Foukx',685182562,NULL,'86 914 788 0427'),(34,'Clifford','Cotton',649769215,NULL,'+359 238 524 6314'),(35,'Murdoch','Hantusch',445975356,'mhantuschy@berkeley.edu','+86 474 372 1469'),(36,'Marni','Hold',526914457,'mholdz@lulu.com','+62 768 825 1321'),(37,'Andrea','Fetherston',407618534,'afetherston10@webeden.co.uk','+94 984 495 6395'),(38,'Corri','Bellefant',690228996,'cbellefant11@ehow.com',NULL),(39,'Jaimie','Zylberdik',625673068,'jzylberdik12@google.it','+86 175 544 5730'),(40,'Cordula','Tinghill',324194380,'ctinghill13@foxnews.com','+62 593 535 2708'),(41,'Laurianne','Roden',92946377,'lroden14@europa.eu','+353 875 769 9500'),(42,'Harmon','Dyde',733441559,'hdyde15@imgur.com','+505 793 188 0283'),(43,'Randie','Dayes',451739661,'rdayes16@artisteer.com','+351 145 220 8008'),(44,'Shay','Whalley',798975315,'swhalley17@ning.com','+63 219 408 6585'),(45,'Ferdie','Kybird',563942780,'fkybird18@exblog.jp','+7 976 776 6785'),(46,'Leigha','Rue',112507791,'lrue19@virginia.edu','+86 951 383 3476'),(47,'Pincas','Kermit',734012969,'pkermit1a@netvibes.com','+86 660 914 2241'),(48,'Pascal','Iggalden',922168307,'piggalden1b@flavors.me','+57 646 670 4821'),(49,'Janey','Breakwell',460541239,'jbreakwell1c@vistaprint.com','+33 886 978 4954'),(50,'Essy','Normavell',68369166,'enormavell1d@wix.com','+54 993 389 6327'),(101,'Testing','MCtest',1036687074,'',''),(103,'Samanta','Collin',799994217,'birdwatcher@lovedogs.com','+57 234 299 5636'),(104,'John','DOE',730650231,'Saltwater@gmail.com','+1 348 520 1072'),(105,'Ramona','Flowers',666955620,'rainbow@aboutads.info','+53 127 993 0023'),(106,'Scott','Pilgrim',10747849,NULL,'+53 127 993 0024'),(107,'Carla','Col',100962317,NULL,'+3 234 334 5636'),(108,'Johna','DOEA',123650231,'pancakes@gmail.com','+5 345 520 1072'),(109,'Ramon','Fruit',777955620,'clouds@aboutcake.info','+67 124 993 0023'),(110,'Scotish','Plague',101747849,NULL,'+23 127 669 0024');
/*!40000 ALTER TABLE `table_client` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `client_added` AFTER INSERT ON `table_client` FOR EACH ROW INSERT INTO LOG_CLIENT_TABLE (id_client,first_name,surname,id_person,user_id,date_action,hour_action,action_log)
VALUES (NEW.id_client,NEW.first_name,NEW.surname,NEW.id_person,USER(),NOW(),current_time(),'NEWUSER') */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `client_deleted` BEFORE DELETE ON `table_client` FOR EACH ROW INSERT INTO LOG_CLIENT_TABLE (id_client,first_name,surname,id_person,user_id,date_action,hour_action,action_log)
VALUES (old.id_client,old.first_name,old.surname,old.id_person,USER(),NOW(),current_time(),'DELETED') */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `table_food` #Tabla que lista los diferentes planes de comida con su restaurante con nombre, direccion 
--

DROP TABLE IF EXISTS `table_food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `table_food` (
  `id_food` int NOT NULL AUTO_INCREMENT,
  `type_food` varchar(10) NOT NULL,
  `name_restaurant` varchar(30) DEFAULT NULL,
  `adress` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`id_food`),
  UNIQUE KEY `id_food` (`id_food`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_food`
--

LOCK TABLES `table_food` WRITE;
/*!40000 ALTER TABLE `table_food` DISABLE KEYS */;
INSERT INTO `table_food` VALUES (1,'lunch','Schroeder and Sons','94 Prentice Junction'),(2,'dinner',NULL,NULL),(3,'All Meals','Pastalavista','58939 Havey Park'),(4,'All Meals','Lesch, Hansen and Hilll','341431 South Street'),(5,'lunch','Stark, Bergstrom and Brekke','46715 Orin Circle'),(6,'All Meals',NULL,NULL),(7,'dinner','Kessler, Rosenbaum and Lemke','32 Basil Pass'),(8,'lunch','Luettgen, Walter and Moore','839 Crownhardt Plaza'),(9,'All Meals','Hintz, Auer and Wilderman','0794 Bowman Circle'),(10,'dinner','Konopelski, Crist and Towne','9 Tennessee Court'),(11,'All Meals','Krajcik-Rohan','10889 Veith Street'),(12,'breakfast','Hayes, Sporer and Stokes','7 Vahlen Hill'),(13,'All Meals','Bernier and Sons','6 Coleman Drive'),(14,'dinner','Romaguera, Jacobson and Stehr','1 Forest Dale Point'),(15,'All Meals','Douglas, Wehner and Johnson','39 Marcy Street'),(16,'breakfast','Pfannerstill LLC','780 Carioca Parkway'),(17,'All Meals','Flatley Group','186 Granby Hill'),(18,'dinner',NULL,NULL),(19,'lunch','McGlynn-Lakin','3696 Nobel Point'),(20,'All Meals','Gulgowski, Haag and Waters','85160 Kedzie Pass'),(21,'lunch','Heaney Group','595 Eastlawn Pass'),(22,'All Meals','Spencer and Sons','420 Dwight Plaza'),(23,'All Meals','Blick, Bernhard and Zboncak','8334 Fuller Point'),(24,'lunch','Bode, Hegmann and DuBuque','3 Hovde Hill'),(25,'lunch','Russel and Sons','784 Sherman Center'),(26,'All Meals','Effertz-Douglas','29 Heath Drive'),(27,'lunch','Hessel-Waelchi','29890 Knutson Way'),(28,'All Meals','Schoen, Swaniawski and Upton','685 Stone Corner Alley'),(29,'All Meals','Wolf-Little','0 Arrowood Point'),(30,'dinner','Denesik Group','24 Lotheville Street');
/*!40000 ALTER TABLE `table_food` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table_hotel`# tabla que contiene informacion de los hoteles disponibles con su rating, nombre, direccion y capacidad de personas
--
--

DROP TABLE IF EXISTS `table_hotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `table_hotel` (
  `id_hotel` int NOT NULL AUTO_INCREMENT,
  `num_people` int NOT NULL,
  `name_hotel` varchar(30) NOT NULL,
  `stars` double NOT NULL,
  `adress` varchar(120) NOT NULL,
  PRIMARY KEY (`id_hotel`),
  UNIQUE KEY `id_hotel` (`id_hotel`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_hotel`
--

LOCK TABLES `table_hotel` WRITE;
/*!40000 ALTER TABLE `table_hotel` DISABLE KEYS */;
INSERT INTO `table_hotel` VALUES (1,4,'Durgan and Sons',3.7,'0 Rockefeller Drive'),(2,3,'Conroy bed',3.8,'60 Schmedeman Lane'),(3,1,'Simonis, West IN',3.5,'9 Maple Court'),(4,2,'Rippin-Collins',3,'00 Graedel Place'),(5,3,'Larson In',2.8,'665 Sunbrook Hill'),(6,2,'FeeneySleep',4.4,'8 Walton Alley'),(7,3,'Lang-Sauer',3.7,'53 Glendale Parkway'),(8,2,'Nienow, Lehner and Bode',3.9,'2 Acker Plaza'),(9,2,'Bruen Hotel',4.5,'837 Laurel Hill'),(10,4,'Yundt-Hoeger',3.3,'979 Corscot Hill'),(11,4,'Bednar Vandervort',3,'503 Porter Street'),(12,2,'Hilpert, Rosenbaum and Kuhlman',4.2,'736 Stuart Avenue'),(13,3,'Romaguera-Prosacco',4.7,'48935 Kedzie Road'),(14,2,'Smithzzz',3.7,'90103 Hudson Junction'),(15,1,'Romaguera Hotel',3.3,'99 Johnson Court'),(16,1,'Collins inn',4.6,'727 Laurel Center'),(17,1,'Heaney',4.8,'6 Shoshone Trail'),(18,3,'Beahan-Schulist',3.2,'70871 Farragut Road'),(19,2,'Harvey bunkbed',3.2,'0 American Lane'),(20,4,'Crist bed',3.4,'326 Center Place'),(21,3,'Stamm in',3,'87616 Talmadge Point'),(22,1,'Huel and snore',4.5,'9577 Toban Circle'),(23,3,'Dooley in',3.3,'0902 Coolidge Road'),(24,4,'McClure ',3.8,'01 Brentwood Circle'),(25,3,'Gusikowski',2.9,'4 Carey Lane');
/*!40000 ALTER TABLE `table_hotel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table_seller`#tabla que contiene la informacion de nombre y cedula de los vendedores de la agencia
--

DROP TABLE IF EXISTS `table_seller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `table_seller` (
  `id_seller` int NOT NULL AUTO_INCREMENT,
  `id_person` int NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `surname` varchar(30) NOT NULL,
  PRIMARY KEY (`id_seller`),
  UNIQUE KEY `id_seller` (`id_seller`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_seller`
--

LOCK TABLES `table_seller` WRITE;
/*!40000 ALTER TABLE `table_seller` DISABLE KEYS */;
INSERT INTO `table_seller` VALUES (1,952389113,'Tabby','Feldbrin'),(2,901511340,'Bevan','Tuckey'),(3,180730265,'Maynord','Flanne'),(4,309301231,'Diane','Drewery'),(5,611867466,'Yorgo','Manners'),(6,899304402,'Rachel','Manger'),(7,219922279,'Lotte','Alen'),(8,571507614,'Xylina','Klimkiewich'),(9,300869939,'Tressa','Karolovsky'),(10,202311768,'Beverly','StandishBrooks'),(11,766275018,'Hieronymus','Sturgess'),(12,219547606,'Maurene','Enterlein'),(13,74426400,'Gayle','Dreelan'),(14,681004793,'Christine','Shoulder'),(15,710606368,'Kane','Berndt'),(16,1234567810,'dummy','jonhdoe');
/*!40000 ALTER TABLE `table_seller` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table_transport`##tabla que contiene la informacion de las diferentes opciones de viaje entre bus y avion, con capacidad de personas y equipaje
--

DROP TABLE IF EXISTS `table_transport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `table_transport` (
  `id_transport` int NOT NULL AUTO_INCREMENT,
  `vehicle` varchar(10) NOT NULL,
  `bag_space` varchar(30) NOT NULL,
  `capacity` int NOT NULL,
  `name_transport` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_transport`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_transport` #listado de planes de viaje que estan disponibles y los que ya se vendieron, contiene su fecha inicio origen desitino y fecha de regreso.
--

LOCK TABLES `table_transport` WRITE;
/*!40000 ALTER TABLE `table_transport` DISABLE KEYS */;
INSERT INTO `table_transport` VALUES (1,'bus','handbag',5,'easy travel'),(2,'bus','2 bags',26,'rainbow-bridge'),(3,'plane','1 bag',13,'CoconutAirlines'),(4,'plane','1 bag',16,'Jirachi Airline'),(5,'bus','2 bags',26,'TravelDoe'),(6,'plane','1 bag',29,'KoopaAirline'),(7,'plane','suitcase',11,'CoconutAirlines'),(8,'bus','1 bag',19,'TravelDoe'),(9,'plane','2 bags',20,'KoopaAirline'),(10,'bus','handbag',12,'Rapidash'),(11,'plane','1 bag',6,'CoconutAirline'),(12,'bus','handbag',23,'Rapidash'),(13,'bus','suitcase',27,'easy travel'),(14,'plane','1 bag',29,'jirachi Airline'),(15,'plane','2 bags',48,'KoopaAirline');
/*!40000 ALTER TABLE `table_transport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `travel_plan`
--

DROP TABLE IF EXISTS `travel_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `travel_plan` (
  `id_reservation` int NOT NULL AUTO_INCREMENT,
  `origin` varchar(120) NOT NULL,
  `date_travel` date NOT NULL,
  `destination` varchar(120) NOT NULL,
  `date_travelback` date NOT NULL,
  `cost` double NOT NULL,
  `currency` varchar(4) NOT NULL,
  `Num_people` int DEFAULT NULL,
  `id_transport` int DEFAULT NULL,
  `id_hotel` int DEFAULT NULL,
  `id_food` int DEFAULT NULL,
  `id_seller` int DEFAULT NULL,
  `id_client` int DEFAULT NULL,
  PRIMARY KEY (`id_reservation`),
  UNIQUE KEY `id_reservation` (`id_reservation`),
  KEY `id_transport` (`id_transport`),
  KEY `id_hotel` (`id_hotel`),
  KEY `id_food` (`id_food`),
  KEY `id_seller` (`id_seller`),
  KEY `id_client` (`id_client`),
  CONSTRAINT `travel_plan_ibfk_1` FOREIGN KEY (`id_transport`) REFERENCES `table_transport` (`id_transport`) ON DELETE CASCADE,
  CONSTRAINT `travel_plan_ibfk_2` FOREIGN KEY (`id_hotel`) REFERENCES `table_hotel` (`id_hotel`) ON DELETE CASCADE,
  CONSTRAINT `travel_plan_ibfk_3` FOREIGN KEY (`id_food`) REFERENCES `table_food` (`id_food`) ON DELETE CASCADE,
  CONSTRAINT `travel_plan_ibfk_4` FOREIGN KEY (`id_seller`) REFERENCES `table_seller` (`id_seller`) ON DELETE CASCADE,
  CONSTRAINT `travel_plan_ibfk_5` FOREIGN KEY (`id_client`) REFERENCES `table_client` (`id_client`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `travel_plan`
--

LOCK TABLES `travel_plan` WRITE;
/*!40000 ALTER TABLE `travel_plan` DISABLE KEYS */;
INSERT INTO `travel_plan` VALUES (1,'Ra’s Bayrūt','2023-10-07','Sutton','2023-12-07',500.63,'LBP',2,1,11,5,11,28),(2,'Agriá','2023-08-28','Al Bilād','2023-11-26',4199.45,'EUR',1,3,18,8,4,40),(3,'Borūjerd','2023-08-11','Byerazino','2023-11-10',3822.4,'IRR',2,10,24,5,1,45),(4,'Kadujangkung','2023-10-11','Washington','2023-10-22',4913.64,'IDR',3,8,6,4,13,2),(5,'Vaasa','2023-08-01','Raoyang','2023-09-15',2944.09,'EUR',3,7,16,16,15,49),(6,'Weru','2023-11-18','Cassilândia','2023-12-12',3049.78,'IDR',3,12,2,15,1,16),(8,'Roissy Charles-de-Gaulle','2023-09-03','Donji Dobrić','2023-09-20',4890.38,'EUR',4,4,17,21,2,1),(9,'San Pedro Carchá','2023-10-04','Cirangga Kidul','2023-10-08',2526.69,'GTQ',2,4,10,4,4,45),(10,'Sankui','2023-09-11','Miaoxi','2023-09-19',112.62,'CNY',3,13,22,1,4,35),(11,'Oakland','2023-08-07','Kota Bharu','2023-08-21',4299.93,'USD',3,1,5,12,15,28),(12,'Severomorsk','2023-10-16','Tehrān','2023-11-19',2953.64,'RUB',3,10,11,10,15,11),(13,'Karangcombong','2023-11-01','Eusebio Ayala','2023-11-14',733.22,'IDR',5,5,19,19,14,30),(14,'Hongor','2023-08-06','Villasis','2023-08-21',3159.48,'MNT',1,8,2,14,10,19),(15,'Bahāwalpur','2023-12-01','Baikouquan','2023-12-05',4045.92,'PKR',3,2,3,26,15,21),(16,'Jiuhu','2023-08-01','Viesīte','2023-08-26',513.45,'CNY',2,10,15,20,7,21),(18,'Macayug','2023-09-05','Härnösand','2023-09-26',2704.6,'PHP',3,8,19,29,9,40),(19,'Guadalupe','2023-08-05','Pak Kret','2023-10-12',1786.87,'MXN',3,15,16,1,14,12),(21,'TESTING','2023-11-07','TESTING','2023-12-25',600.63,'LBP',2,1,11,5,NULL,NULL);
/*!40000 ALTER TABLE `travel_plan` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `new_travel_plan_added` AFTER INSERT ON `travel_plan` FOR EACH ROW INSERT INTO TRAVEL_PLAN_LOG (id_reservation,user_id,date_log,hour_log,origin, date_travel ,destination, date_travelback,
 cost_NEW, currency, Num_people, id_transport , id_hotel , id_food) VALUES
 (new.id_reservation,USER(), NOW(),current_time(),NEW.origin, NEW.date_travel ,NEW.destination, NEW.date_travelback,
 NEW.cost, NEW.currency, NEW.Num_people, NEW.id_transport , NEW.id_hotel , NEW.id_food) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `cost_change_travel_plan` BEFORE UPDATE ON `travel_plan` FOR EACH ROW INSERT INTO TRAVEL_PLAN_LOG (id_reservation,user_id,date_log,hour_log,origin, date_travel ,destination, date_travelback,
 cost_OLD,cost_NEW, currency, Num_people, id_transport , id_hotel , id_food) VALUES
 (new.id_reservation,USER(), NOW(),current_time(),NEW.origin, NEW.date_travel ,NEW.destination, NEW.date_travelback,
 OLD.cost,NEW.cost, NEW.currency, NEW.Num_people, NEW.id_transport , NEW.id_hotel , NEW.id_food) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `travel_plan_log` ## tabla auxiliar cuando se genera cambios dentro de un plan de viaje cuando este se crea o cambia de precio (aun no vendido)
--

DROP TABLE IF EXISTS `travel_plan_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `travel_plan_log` (
  `id_reservation` int DEFAULT NULL,
  `user_id` varchar(30) DEFAULT NULL,
  `date_log` date DEFAULT NULL,
  `hour_log` time DEFAULT NULL,
  `origin` varchar(120) NOT NULL,
  `date_travel` date NOT NULL,
  `destination` varchar(120) NOT NULL,
  `date_travelback` date NOT NULL,
  `cost_OLD` double(16,2) DEFAULT NULL,
  `cost_NEW` double(16,2) DEFAULT NULL,
  `currency` varchar(4) NOT NULL,
  `Num_people` int DEFAULT NULL,
  `id_transport` int DEFAULT NULL,
  `id_hotel` int DEFAULT NULL,
  `id_food` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `travel_plan_log` 
--

LOCK TABLES `travel_plan_log` WRITE;
/*!40000 ALTER TABLE `travel_plan_log` DISABLE KEYS */;
INSERT INTO `travel_plan_log` VALUES (21,'root@localhost','2023-08-19','16:23:05','TESTING','2023-11-07','TESTING','2023-12-25',NULL,500.63,'LBP',2,1,11,5),(21,'root@localhost','2023-08-19','16:23:05','TESTING','2023-11-07','TESTING','2023-12-25',500.63,600.63,'LBP',2,1,11,5);
/*!40000 ALTER TABLE `travel_plan_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `usd_eur_plans`
--

DROP TABLE IF EXISTS `usd_eur_plans`;
/*!50001 DROP VIEW IF EXISTS `usd_eur_plans`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `usd_eur_plans` AS SELECT 
 1 AS `destination`,
 1 AS `Price`,
 1 AS `currency`,
 1 AS `persons_in_this_plan`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'travel_lines_BK'
--

--
-- Dumping routines for database 'travel_lines_BK'
--
/*!50003 DROP FUNCTION IF EXISTS `calculate_price_travel` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `calculate_price_travel`(desde DATE,
hasta DATE,currency VARCHAR(4),people int,transport int,
hotel int,raiting int, food int) RETURNS int
    NO SQL
BEGIN
declare travel_plan INT;
declare days_of_stay INT;
declare which_currency VARCHAR(4);
declare cost_transport INT;
declare food_cost int;
declare currency_change int;
###############################
IF currency ='' THEN
set which_currency = 'USD';
else set which_currency=currency;
END IF;
################################days of stay
SET days_of_stay = hasta-desde;
#######################################transport
IF transport = 0 THEN 
	SET cost_transport = 0;
ELSEIF transport = 1 THEN
	SET cost_transport = 50;
ELSEIF transport=2 THEN
	SET cost_transport = 80;
ELSE SET cost_transport = 0;
END IF;
#######################################foood
IF food =2 THEN
	SET food_cost =20;
ELSEIF food = 3 THEN
	SET food_cost =30;
ELSEIF food = 1 THEN
	SET food_cost = 40;
ELSE SET food_cost =0;
end if;
######################################## change currency
IF currency ='EUR' THEN
	SET currency_change = 1.2;
ELSEIF currency = 'GBP' THEN
	SET currency_change= 0.78;
ELSEIF currency = 'MXN' THEN
	SET currency_change =16.69;
ELSEIF currency = 'COP' THEN
	SET currency_change =3940;
ELSEIF currency = 'ARS' THEN
	SET currency_change =273;
ELSE set currency_change=1;
END IF;
#######################################
SET travel_plan = currency_change*(days_of_stay*(food_cost + hotel*10*raiting+2*people) + cost_transport);

RETURN travel_plan;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `sales_per_seller` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `sales_per_seller`(idseller int) RETURNS int
    READS SQL DATA
BEGIN
DECLARE sales int;
SET sales = (
select count(id_seller) as seller_sales
from travel_plan
where id_seller =idseller );
RETURN sales;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `delete_or_add_client` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_or_add_client`(IN DELETEID_OR_INSERT_0 INT,IN client_name VARCHAR(30),IN client_surname VARCHAR(30),IN client_id int
									 ,IN client_mail VARCHAR(320),IN client_phone VARCHAR(25))
BEGIN
	DECLARE D_OR_I INT;
	SET D_OR_I =DELETEID_OR_INSERT_0;
    IF D_OR_I >0 THEN
		DELETE from table_client WHERE id_client =D_OR_I;
	ELSE
		INSERT INTO table_client (first_name,surname,id_person,mai,phone) VALUES
        (client_name,client_surname,client_id,client_mail,client_phone);
        
    END IF;
	SELECT * FROM table_client;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `delete_or_add_seller` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_or_add_seller`(IN DELETEID_OR_INSERT_0 INT,IN seller_id int,IN seller_name VARCHAR(30),IN seller_surname VARCHAR(30))
BEGIN
	DECLARE D_OR_I INT;
	SET D_OR_I =DELETEID_OR_INSERT_0;

    IF D_OR_I >0 THEN
		DELETE from table_seller WHERE id_seller =D_OR_I;
	ELSE
		INSERT INTO table_seller (id_person,first_name,surname) VALUES
        (seller_id,seller_name,seller_surname);
        
    END IF;
	SELECT * FROM table_seller;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `order_a_table` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `order_a_table`(IN SELECT_TABLE VARCHAR(20),IN SELECT_COLUM VARCHAR(30),IN AS_DES VARCHAR(4))
BEGIN
	IF SELECT_TABLE = '' then ## programa el nombre de la tabla que se quiera osernar 
		set @table_select = 'travel_plan';
	else
		set @table_select = SELECT_TABLE;
	end if;
    IF SELECT_COLUM ='' THEN ## se seleciona la columna si no se deja vacia.
		set @order_by ='';
	else 
		set @order_by = CONCAT(SELECT_COLUM,' ');
	end if;
     
    SET @consult = CONCAT('SELECT * FROM travel_lines_BK.', @table_select, ' ORDER BY ',@order_by,AS_DES);

	PREPARE SEARCH FROM @consult;
    EXECUTE SEARCH;
    DEALLOCATE PREPARE SEARCH;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `plans_sold_by`
--

/*!50001 DROP VIEW IF EXISTS `plans_sold_by`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `plans_sold_by` AS select `b`.`id_seller` AS `ID`,`b`.`first_name` AS `Seller`,`b`.`surname` AS `surname`,`a`.`destination` AS `destination`,`a`.`cost` AS `price`,`a`.`currency` AS `currency`,`a`.`Num_people` AS `clients` from (`travel_plan` `a` left join `table_seller` `b` on((`a`.`id_seller` = `b`.`id_seller`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `plans_under_a_week`
--

/*!50001 DROP VIEW IF EXISTS `plans_under_a_week`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `plans_under_a_week` AS select `travel_plan`.`origin` AS `origin`,`travel_plan`.`destination` AS `destination`,`travel_plan`.`cost` AS `price`,`travel_plan`.`currency` AS `currency`,`travel_plan`.`Num_people` AS `capacity`,`travel_plan`.`date_travel` AS `from`,`travel_plan`.`date_travelback` AS `till` from `travel_plan` where ((`travel_plan`.`date_travelback` - `travel_plan`.`date_travel`) < 8) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `plans_with_hotel_rating_over_35`
--

/*!50001 DROP VIEW IF EXISTS `plans_with_hotel_rating_over_35`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `plans_with_hotel_rating_over_35` AS select `a`.`destination` AS `destination`,`a`.`cost` AS `price`,`a`.`currency` AS `currency`,`b`.`name_hotel` AS `hotel`,`b`.`stars` AS `Rating` from (`travel_plan` `a` left join `table_hotel` `b` on((`a`.`id_hotel` = `b`.`id_hotel`))) where (`b`.`stars` >= 3.5) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `plans_with_included_meals`
--

/*!50001 DROP VIEW IF EXISTS `plans_with_included_meals`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `plans_with_included_meals` AS select `a`.`destination` AS `destination`,`a`.`cost` AS `price`,`a`.`currency` AS `currency`,`b`.`type_food` AS `food`,`b`.`name_restaurant` AS `restaurant` from (`travel_plan` `a` left join `table_food` `b` on((`a`.`id_food` = `b`.`id_food`))) where (`b`.`type_food` like 'All Meals') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `usd_eur_plans`
--

/*!50001 DROP VIEW IF EXISTS `usd_eur_plans`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `usd_eur_plans` AS select `travel_plan`.`destination` AS `destination`,`travel_plan`.`cost` AS `Price`,`travel_plan`.`currency` AS `currency`,`travel_plan`.`Num_people` AS `persons_in_this_plan` from `travel_plan` where ((`travel_plan`.`currency` = 'EUR') or (`travel_plan`.`currency` = 'USD')) */;
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

-- Dump completed on 2023-08-19 18:55:29
