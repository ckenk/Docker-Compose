CREATE DATABASE IF NOT EXISTS messages;
USE messages;

CREATE TABLE IF NOT EXISTS guestbook_message (
	id BIGINT NOT NULL AUTO_INCREMENT,
	name CHAR(128) NOT NULL,
	message CHAR(255),
	image_uri CHAR(255),
	PRIMARY KEY (id) );
	
LOCK TABLES `guestbook_message` WRITE;
/*!40000 ALTER TABLE `guestbook_message` DISABLE KEYS */;
INSERT INTO `guestbook_message` VALUES (1,'k1','hi1',NULL),(2,'k2','h2',NULL),(3,'k3','m3',NULL),(4,'k4','m4',NULL),(5,'k5','m5',NULL),(6,'N1','M1',NULL);
/*!40000 ALTER TABLE `guestbook_message` ENABLE KEYS */;
UNLOCK TABLES;
