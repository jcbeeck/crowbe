-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: crowdbank
-- ------------------------------------------------------
-- Server version	5.5.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cb_information`
--

DROP TABLE IF EXISTS `cb_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cb_information` (
  `cb_id` int(11) NOT NULL AUTO_INCREMENT,
  `cb_units_for_borrow` double DEFAULT NULL,
  `cb_safety_units` double DEFAULT NULL,
  `cb_prorates` int(11) DEFAULT NULL,
  PRIMARY KEY (`cb_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cb_information`
--

LOCK TABLES `cb_information` WRITE;
/*!40000 ALTER TABLE `cb_information` DISABLE KEYS */;
INSERT INTO `cb_information` VALUES (4,NULL,NULL,0),(5,8.5,3.76,NULL);
/*!40000 ALTER TABLE `cb_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cb_profit`
--

DROP TABLE IF EXISTS `cb_profit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cb_profit` (
  `cb_profit_id` int(11) NOT NULL,
  `cb_profit_username` varchar(45) DEFAULT NULL,
  `cb_profit_invested` double DEFAULT NULL,
  `cb_profit_lowerprofit` double DEFAULT NULL,
  `cb_profit_total` double DEFAULT NULL,
  PRIMARY KEY (`cb_profit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cb_profit`
--

LOCK TABLES `cb_profit` WRITE;
/*!40000 ALTER TABLE `cb_profit` DISABLE KEYS */;
INSERT INTO `cb_profit` VALUES (236,'lender1',50,51.75,2.5),(237,'lender2',30,31.17,2.6666666666666643),(238,'lender3',10,10.59,1);
/*!40000 ALTER TABLE `cb_profit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cb_user_contact`
--

DROP TABLE IF EXISTS `cb_user_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cb_user_contact` (
  `cb_user_contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `cb_user_contact_name` varchar(45) DEFAULT NULL,
  `cb_user_contact_email` varchar(45) DEFAULT NULL,
  `cb_user_contact_subject` varchar(45) DEFAULT NULL,
  `cb_user_contact_body` varchar(3000) DEFAULT NULL,
  `cb_user_contact_create_time` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`cb_user_contact_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cb_user_contact`
--

LOCK TABLES `cb_user_contact` WRITE;
/*!40000 ALTER TABLE `cb_user_contact` DISABLE KEYS */;
INSERT INTO `cb_user_contact` VALUES (1,'Jan Beeck','jcbeeck@gmail.com','I would like to make business with you','This paradigm is amaizing, I would like to invest a lot of money in the app, my email is bill.gates@hotmail.com','2014-09-03 01:30:55'),(2,'Michelle Beeck','michi@gmail.com','Me gusta','Me gusta mucho esta app, cómo puedo invertir?','2014-09-03 01:34:34'),(3,'Alana Breen','breen@gmail.com','Whats up?','what\'s up? testing this amaizing app','2014-09-03 06:05:02');
/*!40000 ALTER TABLE `cb_user_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cb_user_feedback`
--

DROP TABLE IF EXISTS `cb_user_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cb_user_feedback` (
  `cb_user_feedback_id` int(11) NOT NULL AUTO_INCREMENT,
  `cb_user_feedback_name` varchar(45) DEFAULT NULL,
  `cb_user_feedback_email` varchar(45) DEFAULT NULL,
  `cb_user_feedback_text` varchar(3000) DEFAULT NULL,
  `cb_user_feedback_create_time` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`cb_user_feedback_id`),
  UNIQUE KEY `cb_user_feedback_id_UNIQUE` (`cb_user_feedback_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cb_user_feedback`
--

LOCK TABLES `cb_user_feedback` WRITE;
/*!40000 ALTER TABLE `cb_user_feedback` DISABLE KEYS */;
INSERT INTO `cb_user_feedback` VALUES (27,'Emely','emy@hotmail.com','this is great stuff','2014-09-02 23:04:54'),(28,'Jose Benavides','dark@hotmail.com','muy de la puta mare ','2014-09-02 23:06:16'),(29,'Alonso','alonso@hotmail.com','muy app bro!','2014-09-03 00:19:26'),(30,'Angela','angela@bla.com','Hola, cómo estas?','2014-09-03 00:21:02'),(31,'Alejandra Talavera','alejandrita@hotmail.com','Hola, cómo estas? pienso que esta app es lo máximo, indeed!','2014-09-03 00:59:04'),(32,'Juan','pepper@michell.com.pe','Muy buena app, te felicito!','2014-09-03 01:36:22'),(33,'Andre','andreagc@peru.com','Muy buen app, cómo hago para invertir?','2014-09-03 01:38:01'),(34,'Alana Breen','breen@hotmail.com','wonderful app indeed!','2014-09-03 06:04:07'),(35,'Ariana Pepper','ariana@tenis.com','Hola me gusta mucho la app!','2014-09-04 01:37:20'),(36,'Ariana Pepper','ariana@tenis.com','Hola me gusta mucho la app!','2014-09-04 01:38:10'),(37,'Ariana Pepper','ariana@tenis.com','Hola me gusta mucho la app!','2014-09-04 01:39:25'),(38,'Parisa Beeck','','Hi this app is so cool! :)','2014-09-04 01:44:17'),(39,'Robert','','BLALALALA','2014-10-15 05:06:56'),(40,'Paquita Talavera','paquita@gmail.com','hola, me gusto mucho tu app','2014-11-18 19:10:18');
/*!40000 ALTER TABLE `cb_user_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logtable`
--

DROP TABLE IF EXISTS `logtable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logtable` (
  `id` int(11) NOT NULL DEFAULT '0',
  `log` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logtable`
--

LOCK TABLES `logtable` WRITE;
/*!40000 ALTER TABLE `logtable` DISABLE KEYS */;
INSERT INTO `logtable` VALUES (0,'prorate is: 6 and id is: 1 and i is: 0');
/*!40000 ALTER TABLE `logtable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prorate_test`
--

DROP TABLE IF EXISTS `prorate_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prorate_test` (
  `prorate_test_id` int(11) NOT NULL AUTO_INCREMENT,
  `prorate_test_element` double DEFAULT NULL,
  PRIMARY KEY (`prorate_test_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prorate_test`
--

LOCK TABLES `prorate_test` WRITE;
/*!40000 ALTER TABLE `prorate_test` DISABLE KEYS */;
INSERT INTO `prorate_test` VALUES (1,10),(2,8.333333333333334),(3,6.8),(4,5),(5,3.3333333333333335),(6,2),(7,0);
/*!40000 ALTER TABLE `prorate_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_information`
--

DROP TABLE IF EXISTS `user_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_information` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) DEFAULT NULL,
  `user_is_borrower` int(11) DEFAULT NULL,
  `user_units_borrowed` double DEFAULT NULL,
  `user_units_invested` double DEFAULT NULL,
  `user_lower_limit_profit` double DEFAULT NULL,
  `user_num_prorated` int(11) DEFAULT NULL,
  `user_total_profit` double DEFAULT NULL,
  `user_active` int(11) DEFAULT NULL,
  `user_units_ready_to_borrow` double DEFAULT NULL,
  `user_weight` int(11) DEFAULT NULL,
  `user_prorate_pivot` double DEFAULT NULL,
  `user_statement_of_account` double DEFAULT NULL,
  `user_available_units` double DEFAULT NULL,
  `user_units_returned` double DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=244 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_information`
--

LOCK TABLES `user_information` WRITE;
/*!40000 ALTER TABLE `user_information` DISABLE KEYS */;
INSERT INTO `user_information` VALUES (236,'lender1',0,NULL,50,51.75,4,2.5,0,47.5,1,2.5,52.5,5,NULL),(237,'lender2',0,NULL,30,31.17,4,2.6666666666666643,0,28.666666666666664,2,2,32.666666666666664,2.833333333333333,NULL),(238,'lender3',0,NULL,10,10.59,4,1,0,10,3,1,11,0.5,NULL),(239,'lender4',0,NULL,5,5.445,4,NULL,1,5,4,0,5,1,NULL),(240,'borrower1',1,15,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,-15,NULL,NULL),(241,'insert1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10),(242,'insert2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5),(243,'insert3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5);
/*!40000 ALTER TABLE `user_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'crowdbank'
--
/*!50003 DROP FUNCTION IF EXISTS `AvailableUnits` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `AvailableUnits`() RETURNS double
BEGIN
	DECLARE total_available DOUBLE;

	SET total_available = (SELECT SUM(user_divided) FROM user_information 
								WHERE user_is_borrower = 0 AND user_active = 1);

RETURN total_available;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CalculateLowerLimit` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CalculateLowerLimit`(IN id INT)
BEGIN

	DECLARE invested DOUBLE;
	DECLARE cal_lower_limit DOUBLE;
	DECLARE lower_limit DOUBLE;

	SET	invested = (SELECT user_units_invested FROM user_information WHERE user_id=id);
	SET cal_lower_limit = ((invested * 2.9)/100)+0.30;
	SET lower_limit = invested + cal_lower_limit;
	UPDATE user_information SET user_lower_limit_profit = lower_limit WHERE user_id=id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CalculateWeight` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CalculateWeight`()
BEGIN

	DECLARE id INT;
	DECLARE account_statement DOUBLE;
	DECLARE weight INT;
	DECLARE i INT;
	DECLARE num_lenders INT;

	DECLARE user_weight_cursor CURSOR FOR
		SELECT user_id, user_statement_of_account, user_weight 
			FROM user_information 
				WHERE user_is_borrower = 0 AND user_active = 1
					ORDER BY user_statement_of_account DESC;

	SET num_lenders = (SELECT COUNT(*) FROM user_information 
							WHERE user_is_borrower = 0 AND user_active = 1);

	SET i = 1;

	OPEN user_weight_cursor;

	fill_weights: LOOP
		
		FETCH user_weight_cursor INTO id, account_statement, weight;
		
			SET weight = i;
			UPDATE user_information SET user_weight = weight WHERE user_id = id;
			SET i = i + 1;
			IF i > num_lenders THEN
				LEAVE fill_weights;
			END IF;
     
		END LOOP fill_weights;
	CLOSE user_weight_cursor;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `FillAllUsersProfitTable` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `FillAllUsersProfitTable`()
BEGIN

	INSERT INTO cb_profit(cb_profit_id, cb_profit_username, cb_profit_invested, 
						  cb_profit_lowerprofit, cb_profit_total)
		SELECT user_id, user_name, user_units_invested, 
			   user_lower_limit_profit, user_total_profit
			FROM user_information
				WHERE user_is_borrower = 0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `FillLowerLimit` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `FillLowerLimit`()
BEGIN
	
	DECLARE num_users INT;
	DECLARE i INT;
	
	SET i = 1;
	WHILE i <= 15 DO
		CALL CalculateLowerLimit(i);
		SET i = i + 1;
	END WHILE;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `FillProfitTable` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `FillProfitTable`()
BEGIN

	INSERT INTO cb_profit(cb_profit_id, cb_profit_username, cb_profit_invested, 
						  cb_profit_lowerprofit, cb_profit_total)
		SELECT user_id, user_name, user_units_invested, 
			   user_lower_limit_profit, user_total_profit
			FROM user_information
				WHERE user_is_borrower = 0
					AND user_active = 0;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `FindUserProfit` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `FindUserProfit`()
proc:BEGIN
	DECLARE num_lenders INT;
	DECLARE total_profit DOUBLE;
	DECLARE statement DOUBLE;
	DECLARE invested DOUBLE;
	DECLARE id INT;
	DECLARE i INT;

	DECLARE user_profit_cursor CURSOR FOR
		SELECT user_id, user_statement_of_account, user_units_invested  
			FROM user_information 
				WHERE user_is_borrower = 0 AND user_active = 1
					AND user_statement_of_account > user_lower_limit_profit;

	SET num_lenders = (SELECT COUNT(*) FROM user_information 
							WHERE user_is_borrower = 0 AND user_active = 1
								AND user_statement_of_account > user_lower_limit_profit);

	IF num_lenders = 0 THEN
        LEAVE proc;
    END IF;

	SET i = 1;

	OPEN user_profit_cursor;
	
	profit: LOOP
	
		FETCH user_profit_cursor INTO id,statement,invested;

			SET total_profit = statement - invested;
			UPDATE user_information SET user_total_profit = total_profit WHERE user_id=id;
			UPDATE user_information SET user_active = 0 WHERE user_id=id;
			SET i = i + 1;
			IF i > num_lenders THEN
				LEAVE profit;
			END IF;

		END LOOP profit;
	
    CLOSE user_profit_cursor;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertProcess` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertProcess`()
BEGIN
	DECLARE num_lenders INT;
	DECLARE units_to_insert DOUBLE;
	DECLARE statement DOUBLE;
	DECLARE pivot DOUBLE;
	DECLARE id INT;
	DECLARE i INT;

	DECLARE units_insert_borrow_cursor CURSOR FOR
		SELECT user_id, user_statement_of_account, user_prorate_pivot  
			FROM user_information 
				WHERE user_is_borrower = 0 AND user_active = 1
					AND user_statement_of_account < user_lower_limit_profit;

	SET num_lenders = (SELECT COUNT(*) FROM user_information 
							WHERE user_is_borrower = 0 AND user_active = 1
								AND user_statement_of_account < user_lower_limit_profit);

	SET i = 1;
	
	OPEN units_insert_borrow_cursor;
	
	get_units_insert_borrow: LOOP
	
		FETCH units_insert_borrow_cursor INTO id,statement,pivot;

			SET units_to_insert = statement + pivot;
			UPDATE user_information SET user_statement_of_account = units_to_insert WHERE user_id=id;
			SET i = i + 1;
			IF i = num_lenders THEN
				LEAVE get_units_insert_borrow;
			END IF;

		END LOOP get_units_insert_borrow;
	
    CLOSE units_insert_borrow_cursor;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `log_msg` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `log_msg`(msg VARCHAR(255))
BEGIN
	INSERT INTO logtable SELECT 0, msg;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Prorate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Prorate`(IN input DOUBLE)
BEGIN

	DECLARE id INT;
	DECLARE ready_to_borrow DOUBLE;
	DECLARE weight INT;
	DECLARE num_lenders INT;
	DECLARE i INT;
	DECLARE j INT;
	DECLARE acum INT;
	DECLARE w DOUBLE;
	DECLARE x DOUBLE;
	DECLARE y DOUBLE;
	DECLARE z DOUBLE;
	DECLARE prorate DOUBLE;
	DECLARE units_input DOUBLE;
	DECLARE pivot DOUBLE;
	DECLARE num INT;
	DECLARE new_units_to_borrow DOUBLE;

	DECLARE prorate_cursor CURSOR FOR
		SELECT user_id, user_units_ready_to_borrow, user_weight, user_prorate_pivot
			FROM user_information 
				WHERE user_is_borrower = 0 AND user_active = 1
					ORDER BY user_weight ASC;

	SET num_lenders = (SELECT COUNT(*)
						FROM user_information 
							WHERE user_is_borrower = 0 AND user_active = 1
								ORDER BY user_weight ASC);

	CREATE TEMPORARY TABLE pivots_array(
		pos INT NOT NULL DEFAULT 0,
		pivot_element DOUBLE NOT NULL DEFAULT 0);

	SET units_input = input;
	# in the position 1 goes the units input
	INSERT INTO pivots_array (pos, pivot_element) VALUES (0,units_input);
	 
	SET i = 0;
    SET j = 0;
	SET acum = 0;
	
	OPEN prorate_cursor;
	
	WHILE i < num_lenders DO
		FETCH prorate_cursor INTO id, ready_to_borrow, weight, pivot;
	
			SET w = ((SELECT pivot_element FROM pivots_array WHERE pos = i) / (num_lenders - i));
			SET x = w * (num_lenders - j);
			SET y = x / (num_lenders - i);
			SET prorate = w + y;
			UPDATE user_information SET user_prorate_pivot = prorate WHERE user_id = id;
			SET new_units_to_borrow = (SELECT user_statement_of_account
											FROM user_information
												WHERE user_is_borrower = 0 AND user_active = 1 AND user_id = id) - prorate; 
			UPDATE user_information SET user_units_ready_to_borrow = new_units_to_borrow WHERE user_id = id;
			SET acum = prorate + acum;
			SET z = units_input - acum;
			SET i = i + 1;
			SET j = j + 1;
			INSERT INTO pivots_array (pos, pivot_element) VALUES (i,z);

		END WHILE;
	
	CLOSE prorate_cursor;

	DROP TABLE pivots_array;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Prorate_test` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Prorate_test`(IN input DOUBLE)
BEGIN

	DECLARE id INT;
	DECLARE ready_to_borrow DOUBLE;
	DECLARE weight INT;
	DECLARE num_prorated INT;
	DECLARE num_lenders INT;
	DECLARE i INT;
	DECLARE j INT;
	DECLARE acum INT;
	DECLARE w DOUBLE;
	DECLARE x DOUBLE;
	DECLARE y DOUBLE;
	DECLARE z DOUBLE;
	DECLARE prorate DOUBLE;
	DECLARE units_input DOUBLE;
	DECLARE pivot DOUBLE;
	DECLARE num INT;


	DECLARE prorate_cursor_test CURSOR FOR
		SELECT prorate_test_id, prorate_test_element
			FROM prorate_test;


	SET num_lenders = (SELECT COUNT(*)
						FROM prorate_test);

	CREATE TEMPORARY TABLE pivots_array(
		pos INT NOT NULL DEFAULT 0,
		pivot_element DOUBLE NOT NULL DEFAULT 0);

	SET units_input = input;
	# in the position 0 goes the units input
	INSERT INTO pivots_array (pos, pivot_element) VALUES (0,units_input);

	SET i = 0;
    SET j = 0;
	SET acum = 0;
	
	OPEN prorate_cursor_test;
	
		WHILE i < num_lenders DO
			FETCH prorate_cursor_test INTO id, ready_to_borrow;
		
				SET w = ((SELECT pivot_element FROM pivots_array WHERE pos = i) / (num_lenders - i));
				SET x = w * (num_lenders - j);
				SET y = x / (num_lenders - i);
				SET prorate = w + y;
				UPDATE prorate_test SET prorate_test_element = prorate WHERE prorate_test_id = id;
				SET acum = prorate + acum;
				SET z = units_input - acum;
				SET i = i + 1;
				SET j = j + 1;
				#UPDATE pivots_array SET pivot_element = z WHERE pos = i;
				INSERT INTO pivots_array (pos, pivot_element) VALUES (i,z);

		END WHILE;
	
	CLOSE prorate_cursor_test;

	DROP TABLE pivots_array;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SetCBProrates` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SetCBProrates`(IN input INT)
BEGIN
	DECLARE num_prorates INT;

	SET num_prorates = (SELECT cb_prorates 
							FROM cb_information
								WHERE cb_id = input - 1);

	IF num_prorates IS NOT NULL THEN
		UPDATE cb_information SET cb_prorates = num_prorates + 1 WHERE cb_id = input;
	END IF;

	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SetFirstLendersStatementAccount` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SetFirstLendersStatementAccount`()
BEGIN
	DECLARE invested DOUBLE;
	DECLARE account_statement DOUBLE;
	DECLARE id INT;

	DECLARE user_statement_cursor CURSOR FOR
		SELECT user_id, user_units_invested, user_statement_of_account
					FROM user_information 
						WHERE user_is_borrower = 0 AND user_active = 1;

	OPEN user_statement_cursor;
	
	first_statement: LOOP
		FETCH user_statement_cursor INTO id, invested, account_statement;
		
			UPDATE user_information SET user_statement_of_account = invested WHERE user_id = id;
	
		END LOOP first_statement;

	CLOSE user_statement_cursor;
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SetNumProrates` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SetNumProrates`()
BEGIN
	DECLARE id INT;
	DECLARE num_prorates INT;
	DECLARE i INT;
	DECLARE num_lenders INT;

	DECLARE prorate_cursor CURSOR FOR
		SELECT user_id, user_num_prorated 
			FROM user_information 
				WHERE user_is_borrower = 0 AND user_active = 1;

	SET i = 1;

	SET num_lenders = (SELECT COUNT(*) FROM user_information 
							WHERE user_is_borrower = 0 AND user_active = 1);
	
	OPEN prorate_cursor;
	
	get_prorate: LOOP
	
		FETCH prorate_cursor INTO id, num_prorates;
			IF num_prorates IS NULL THEN
				UPDATE user_information SET user_num_prorated = 1 WHERE user_id=id;
				SET i = i + 1;
			END IF;
			
			IF num_prorates IS NOT NULL THEN
				UPDATE user_information SET user_num_prorated = num_prorates + 1 WHERE user_id=id;
				SET i = i + 1;
			END IF;

			IF i > num_lenders THEN
				LEAVE get_prorate;
			END IF;

		END LOOP get_prorate;
	
    CLOSE prorate_cursor;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SetProratePivot` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SetProratePivot`()
BEGIN

	DECLARE id INT;
	DECLARE i INT;
	DECLARE num_lenders INT;

	DECLARE pivot_cursor CURSOR FOR
		SELECT user_id
			FROM user_information 
				WHERE user_is_borrower = 0 AND user_active = 1;

	SET num_lenders = (SELECT COUNT(*) FROM user_information 
							WHERE user_is_borrower = 0 AND user_active = 1);

	SET i = 1;

	OPEN pivot_cursor;
	
	get_units_for_pivot: LOOP
	
		FETCH pivot_cursor INTO id;

			UPDATE user_information SET user_prorate_pivot = 0 WHERE user_id=id;
			SET i = i + 1;
			IF i = num_lenders THEN
				LEAVE get_units_for_pivot;
			END IF;
			
		END LOOP get_units_for_pivot;
	
    CLOSE pivot_cursor;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SetProrateZero` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SetProrateZero`()
BEGIN
	DECLARE id INT;
	DECLARE prorate INT;

	DECLARE prorate_cursor CURSOR FOR
		SELECT user_id, prorate
			FROM user_information 
				WHERE user_is_borrower = 0 AND user_active = 1;

	OPEN prorate_cursor;
	
	_prorate: LOOP
			
		FETCH prorate_cursor INTO id, prorate;
		
			UPDATE user_information SET user_num_prorated = 0
				WHERE user_id = id;

		END LOOP _prorate;
	
	CLOSE prorate_cursor;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SetToZero` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SetToZero`()
BEGIN
	DECLARE id INT;
	DECLARE units DOUBLE;

	DECLARE prorate_cursor CURSOR FOR
		SELECT user_id, user_available_units
			FROM user_information 
				WHERE user_is_borrower = 0 AND user_active = 1;

	OPEN prorate_cursor;
	
	_prorate: LOOP
			
		FETCH prorate_cursor INTO id, units;
		
			UPDATE user_information SET user_available_units = NULL
				WHERE user_id = id;

		END LOOP _prorate;
	
	CLOSE prorate_cursor;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UnitsAvailableToBorrow` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UnitsAvailableToBorrow`(IN id INT)
BEGIN
	DECLARE available_units DOUBLE;
	DECLARE num_lenders INT;
	DECLARE units_to_borrow DOUBLE;
				
	SET available_units = (SELECT user_statement_of_account FROM user_information
								WHERE user_is_borrower = 0 AND user_active = 1 AND user_id=id);

	SET num_lenders = (SELECT COUNT(*) FROM user_information 
							WHERE user_is_borrower = 0 AND user_active = 1
								AND user_available_units > 0
								OR user_available_units IS NULL);
							
	SET units_to_borrow = available_units / num_lenders;
	
	UPDATE user_information SET user_available_units = units_to_borrow WHERE user_id=id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UnitsAvailableToBorrow2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UnitsAvailableToBorrow2`()
BEGIN
	DECLARE available_units DOUBLE;
	DECLARE num_lenders INT;
	DECLARE units_to_borrow DOUBLE;
	DECLARE id INT;
	DECLARE i INT;

	DECLARE units_for_borrow_cursor CURSOR FOR
		SELECT user_id, user_statement_of_account  
			FROM user_information 
				WHERE user_is_borrower = 0 AND user_active = 1;

	SET num_lenders = (SELECT COUNT(*) FROM user_information 
							WHERE user_is_borrower = 0 AND user_active = 1);

	SET i = 1;
	
	OPEN units_for_borrow_cursor;
	
	get_units_for_borrow: LOOP
	
		FETCH units_for_borrow_cursor INTO id,available_units;

			SET units_to_borrow = available_units / num_lenders;
			UPDATE user_information SET user_available_units = units_to_borrow WHERE user_id=id;
			UPDATE user_information SET user_units_ready_to_borrow = units_to_borrow WHERE user_id=id;
			SET i = i + 1;
			IF i = num_lenders THEN
				LEAVE get_units_for_borrow;
			END IF;
			
		END LOOP get_units_for_borrow;
	
    CLOSE units_for_borrow_cursor;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UnitsCanBorrow` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UnitsCanBorrow`()
BEGIN
	DECLARE available_units DOUBLE;
	DECLARE num_lenders INT;
	DECLARE units_to_borrow DOUBLE;
	DECLARE id INT;
	DECLARE i INT;

	DECLARE units_for_borrow_cursor CURSOR FOR
		SELECT user_id, user_statement_of_account  
			FROM user_information 
				WHERE user_is_borrower = 0 AND user_active = 1;

	SET num_lenders = (SELECT COUNT(*) FROM user_information 
							WHERE user_is_borrower = 0 AND user_active = 1
								AND user_available_units > 0);

	SET i = 1;
	
	OPEN units_for_borrow_cursor;
	
	get_units_can_borrow: LOOP
	
		FETCH units_for_borrow_cursor INTO id,available_units;

			SET units_to_borrow = available_units / num_lenders;
			UPDATE user_information SET user_available_units = units_to_borrow WHERE user_id=id;
			SET i = i + 1;
			IF i = num_lenders THEN
				LEAVE get_units_can_borrow;
			END IF;

		END LOOP get_units_can_borrow;
	
    CLOSE units_for_borrow_cursor;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdateLenderStatementAccount` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateLenderStatementAccount`()
BEGIN
	DECLARE id INT;
	DECLARE account_statement DOUBLE;
	DECLARE to_borrow DOUBLE;
	DECLARE i INT;
	DECLARE num_lenders INT;

	DECLARE user_update_statement_cursor CURSOR FOR
		SELECT user_id, user_statement_of_account, user_prorate_pivot
			FROM user_information 
				WHERE user_is_borrower = 0 AND user_active = 1;

	SET num_lenders = (SELECT COUNT(*) FROM user_information 
							WHERE user_is_borrower = 0 AND user_active = 1);

	SET i = 1;

	OPEN user_update_statement_cursor;
	
	statement: LOOP
			
		FETCH user_update_statement_cursor INTO id, account_statement, to_borrow;
		
			UPDATE user_information SET user_statement_of_account = user_statement_of_account - to_borrow
				WHERE user_id = id;

			IF ((SELECT user_available_units 
					FROM user_information
						WHERE user_id = id) - to_borrow) < 0 THEN
				UPDATE user_information SET user_available_units = 0 WHERE user_id = id;
			ELSE
				UPDATE user_information SET user_available_units = user_available_units - to_borrow
					WHERE user_id = id;

			END IF;

			SET i = i + 1;
			IF i = num_lenders THEN
				LEAVE statement;
			END IF;

		END LOOP statement;
	
	CLOSE user_update_statement_cursor;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdateLenderStatementAccount3` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateLenderStatementAccount3`(IN id INT)
BEGIN
	DECLARE id INT;
	DECLARE account_statement DOUBLE;
	DECLARE units_available DOUBLE;

	SET account_statement = (SELECT user_statement_of_account FROM user_information
								WHERE user_is_borrower = 0 AND user_active = 1 AND user_id=id);

	SET units_available = (SELECT user_available_units FROM user_information
								WHERE user_is_borrower = 0 AND user_active = 1 AND user_id=id);

	UPDATE user_information SET user_statement_of_account = account_statement - units_available WHERE user_id=id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdateNumProratedLenders` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateNumProratedLenders`()
BEGIN
	
	DECLARE num_prorated INT;
	DECLARE new_prorated INT;
	DECLARE id INT;

	DECLARE user_update_prorated_cursor CURSOR FOR
		SELECT user_id, user_num_prorated
			FROM user_information 
				WHERE user_is_borrower = 0 AND user_active = 1;

	OPEN user_update_prorated_cursor;

	prorated: LOOP
	
		FETCH user_update_prorated_cursor INTO id, num_prorated;
			
			SET new_prorated = num_prorated + 1;
			UPDATE user_information SET user_num_prorated = new_prorated WHERE user_id = id;

		END LOOP prorated;
	
	CLOSE user_update_prorated_cursor;

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

-- Dump completed on 2015-01-02 16:54:45
