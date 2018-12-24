-- MySQL dump 10.13  Distrib 5.1.73, for redhat-linux-gnu (x86_64)
--
-- Host: localhost    Database: web_db
-- ------------------------------------------------------
-- Server version	5.1.73



--
-- Table structure for table `section`
--

DROP TABLE IF EXISTS `section`;
CREATE TABLE IF NOT EXISTS `section` (
  `section_id` int(11) NOT NULL AUTO_INCREMENT,
  `section_name` varchar(100) NOT NULL,
   `membership` varchar(20) NOT NULL,
  `place_employment` varchar(50) NOT NULL,
  `reception_features` varchar(50) NOT NULL,
  `trainer` varchar(50) NOT NULL,
  `payment` varchar(20) NOT NULL,
    PRIMARY KEY (`id`),
  ) ENGINE=InnoDB  DEFAULT CHARSET=utf8;
  



--
-- Dumping data for table `section`
--

LOCK TABLES `section` WRITE;
/*!40000 ALTER TABLE `section` DISABLE KEYS */;
INSERT INTO `section` VALUES (1, 'Спортивная гимнастика', '6', 'Спортивный зал', 'Ловковсть, хорошое здоровье',  '500'), (2,'Футбол', '11', 'Футбольный зал', 'Бег', '500'), (3,'Баскетбол', '5', 'Баскетбольная площадка', 'Рост, Ловкость',  '550'),
(4,'Тенис', '6', 'Тенисная площадка', 'Бег и ловкость',  '600'), (5,'Тяжелая атлетика', '5', 'Тренажерный зал', 'хорошое здоровье',  '600'), (6,'Легкая атлетика', '6', 'Беговая площадка', 'Бег',  '550');
/*!40000 ALTER TABLE `section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sportsman`
--

DROP TABLE IF EXISTS `sportsman`;
CREATE TABLE IF NOT EXISTS `sportsman` (
  `sportsman_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_section_id` int(10) unsigned NOT NULL,
  `surname` varchar(100) DEFAULT '',
  `age` int(11) DEFAULT '',
  `address` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `growth` varchar(20) NOT NULL,
  `weight` varchar(20) NOT NULL,
  `achievement` varchar(20) NOT NULL,
    PRIMARY KEY (`sportsman_id`),
  UNIQUE KEY `s_section_id` (`s_section_id`),
 ) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sportsman`
--

LOCK TABLES `sportsman` WRITE;
/*!40000 ALTER TABLE `sportsman` DISABLE KEYS */;
INSERT INTO `sportsman` VALUES ('1',  '1', 'Александров А.К.', '18', 'Крупская 59, кв.10', '25-36-15', '175', '75', '1 категория'), ('2', '1', 'Бочанов А.А.', '19', 'Есиналиева 145, кв. 100', '12-52-65', '180', '80', '1 категория'),
('3', '1', 'Гергерт А.В.', '20', 'Есенина 25 кв.155', '32-69-85', '180', '80', '1 категория'), ('4', '1', 'Жариков К.К.', '18', 'Катаева 85 кв.12', '12-54-14', '185', '85', '1 категория'), ('5', '1', 'Жуков Д.В.', '19', 'Омская 25 кв.12', '21-64-98', '175', '75', '1 категория'),
('6', '1', 'Камзин Е.В.', '20', 'Мира 14 кв. 23', '78-95-48', '170', '70', '1 категория'),  ('7', '2', 'Зыков К.П.', '17', 'Космическая 12 кв. 12', '12-56-95', '190', '85', '1 категория'), ('8', '2', 'Есенин К.В.', '20', 'Естая 142 кв. 12', '32-62-58', '185', '85', '1 категория'),
 ('9', '2', 'Смагулов П.В', '19', 'Сатпаева 80 кв 251', '14-25-74', '170', '75', '1 категория'),  ('10', '2', 'Соргазин К.А.', '18', 'Кутузова 154 кв.12', '32-95-41', '185', '80', '1 категория'),
 ('11', '2', 'Маринин Н.Н.', '20', 'Камзина 14 кв. 15', '12-35-45', '85', '80', '1 категория'),  ('12', '2', 'Фадин В.К.', '25', 'Советов 125 кв. 155 ', '36-95-79', '194', '85', '1 категория'),  ('13', '2', 'Морозов К.А', '19', 'Крупская 59, кв.120', '12-46-75', '185', '85', '1 категория'),
 ('14', '2', 'Можерин А.А.', '20', 'Есиналиева 45, кв. 150', '98-75-02', '175', '75', '1 категория'),  ('15', '2', 'Ботурдинов К.К.', '18', 'Мира 18 кв. 3', '02-12-02', '176', '80', '1 категория'),  ('16', '2', 'Полищук Р.К.', '19', 'Камзина 144 кв. 15', '03-15-01', '181', '80', '1 категория'),
 ('17', '2', 'Бекк А.Э. ', '25', 'Сатпаева 80 кв 25', '92-34-05', '176', '75', '1 категория'),  ('18', '3', 'Яремчук А.А.', '23', 'Естая 152 кв. 110', '30-01-58', '195', '90', '1 категория'),  ('19', '3', 'Долгов К.М.', '21', 'Кутузова 14 кв.122', '10-25-34', '200', '90', '1 категория'), ('20', '3', 'Сатпаев З.К.', '18', 'Есиналиева 15, кв. 10', '30-36-65', '190', '90', '1 категория');
/*!40000 ALTER TABLE `sportsman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `competition`
--

DROP TABLE IF EXISTS `competition`;
CREATE TABLE IF NOT EXISTS `competition` (
  `competition_id` int(11) NOT NULL AUTO_INCREMENT,
  `date_competition` datetime NOT NULL,
   `number_participants` varchar(20) DEFAULT '',
  `rank` varchar(20) DEFAULT '',
      PRIMARY KEY (`competition_id`),
   ) ENGINE=InnoDB  DEFAULT CHARSET=utf8;


--
-- Dumping data for table `competition`
--

LOCK TABLES `competition` WRITE;
/*!40000 ALTER TABLE `competition` DISABLE KEYS */;
INSERT INTO `competition` VALUES  ('1', '01/10/2018', '6', 'Городские'), ('2', '07/10/2018', '11', 'Межклубовский'), ('3', '12/10/2018', '5', 'Областные'), ('4', '15/10/2018', '6', 'Районные'),
('5', '18/10/2006', '2', 'Городские'), ('6', '18/09/2018', '3', 'Районные'), ('7', '18/11/2018', '3', 'Межклубовский'), ('8', '25/10/2018', '3', 'Межклубовский');
/*!40000 ALTER TABLE `competition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participation`
--
   
   DROP TABLE IF EXISTS `participation`;
CREATE TABLE IF NOT EXISTS `participation` (
  `participation_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_sportsman_id` int(10) unsigned NOT NULL,
   `p_сompetition_id` int(10) unsigned NOT NULL,
  `result` varchar(20) DEFAULT '',
  `place` varchar(20) NOT NULL,
     PRIMARY KEY (`participation_id`),
  UNIQUE KEY `p_sportsman_id` (`p_sportsman_id`),
  UNIQUE KEY `p_сompetition_id` (`p_сompetition_id`),
 ) ENGINE=InnoDB  DEFAULT CHARSET=utf8;
--
-- Dumping data for table `participation`
--

LOCK TABLES `participation` WRITE;
/*!40000 ALTER TABLE `participation` DISABLE KEYS */;
INSERT INTO `participation` VALUES ('1', '1', '1', '25:10', '1'),  ('2', '10', '2', '3:0', '2'), ('3', '12', '3', '30:24', '3'), ('4', '20', '4', '25:10', '2'), ('5', '9', '5', '150', '1'), ('6', '19', '5', '140', '2'),
('7', '2', '5', '110', '3'), ('8', '3', '3', '100', '1'), ('9', '15', '3', '90', '2'), ('10', '18', '3', '80', '3'),('11', '4', '5', '25:10', '1'), ('12', '9', '5', '3:0', '2'), ('13', '6', '5', '30:24', '3');

/*!40000 ALTER TABLE `participation` ENABLE KEYS */;
UNLOCK TABLES;


