-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: books_new_life
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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add books',7,'add_books'),(26,'Can change books',7,'change_books'),(27,'Can delete books',7,'delete_books'),(28,'Can view books',7,'view_books'),(29,'Can add libro',8,'add_libro'),(30,'Can change libro',8,'change_libro'),(31,'Can delete libro',8,'delete_libro'),(32,'Can view libro',8,'view_libro'),(33,'Can add categorias',9,'add_categorias'),(34,'Can change categorias',9,'change_categorias'),(35,'Can delete categorias',9,'delete_categorias'),(36,'Can view categorias',9,'view_categorias');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$390000$K1NI9xkBSI6GBAbuSFmIqX$uaO101MCFQSg3WWwwQPOqkzebCV/zNdht7Ymq/x/6gk=','2022-09-26 15:26:04.938303',1,'admin','','','admin@correo.com',1,1,'2022-09-22 23:10:38.328378'),(2,'pbkdf2_sha256$390000$aRElZKKf9qsLbkxzSeyVp6$Pfkdj2nN3Fn12QjzeWYXdMVPxtenetFFbZMCWnOBNXU=','2022-09-23 18:20:13.347182',0,'osman2','','','',0,1,'2022-09-23 02:50:02.712755'),(3,'pbkdf2_sha256$390000$qpcoiOaKfpD8tGcXVnFmWY$CAi3OMIVusJmMqDl+B2ne6JhDyNzXWSGyG8F3sCelOs=',NULL,0,'osman3','','','',0,1,'2022-09-23 03:23:02.213738'),(4,'pbkdf2_sha256$390000$vwEoUMQmPcvrQ7jiF03Gno$8Sz2KylZKMIyhiw2cTL/9hoXNxcCmunIKhfRCx+zEOY=',NULL,0,'admin2','','','benito@yimeil.com',0,1,'2022-09-24 23:57:05.774045');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books_books`
--

DROP TABLE IF EXISTS `books_books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books_books` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `titulo` varchar(200) NOT NULL,
  `autor` varchar(200) NOT NULL,
  `reseña` longtext NOT NULL,
  `usuario_id` int NOT NULL,
  `libro_img` varchar(100) DEFAULT NULL,
  `categoria` varchar(200) NOT NULL,
  `estado` varchar(15) NOT NULL,
  `fecha` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `books_books_usuario_id_9977f027_fk_auth_user_id` (`usuario_id`),
  CONSTRAINT `books_books_usuario_id_9977f027_fk_auth_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books_books`
--

LOCK TABLES `books_books` WRITE;
/*!40000 ALTER TABLE `books_books` DISABLE KEYS */;
INSERT INTO `books_books` VALUES (7,'la divina comedia','dante','Aunque Dante tituló su obra solo con la palabra Comedia, Boccaccio la catalogó de Divina tras su lectura por tratar asuntos no terrenales y así la conocemos hoy.\r\n\r\nLa obra relata el viaje del propio autor por el Infierno, el Purgatorio y el Paraíso, siempre guiado por Virgilio, poeta de la Roma clásica, con el que se encontró cuando andaba perdido entre bestias salvajes.\r\n\r\nLa obra está estructurada en tres partes: Infierno, Purgatorio y Paraíso, cada una consta de treinta y tres cantos, que junto con el canto introductorio suman un ciento.\r\n\r\nEl poeta pasa por cada parte, que a su vez están divididas en nueve círculos. Los que moran en el Infierno se subdividen en tres categorías: los incontinentes, los violentos y los fraudulentos; en el Purgatorio permanecen los que el amor los llevó al pecado, los poco amantes del bien y los que amaron demasiado los bienes terrenales;  en el Paraíso están los seglares, los activos y los contemplativos.\r\n\r\nEste poema sacro, originalmente escrito en tercetos endecasílabos, dividido en cien cantos, se presenta en esta edición en una cuidada prosa, para que sea mejor entendida por el lector medio.\r\n\r\nSin duda una obra de gran trascendencia en nuestra cultura y de gran influencia posterior; fue escrita pensando en hacernos fuertes en nuestra vida, luchando por tener una existencia plena en derechos y deberes.\r\n\r\nEs una sublime summa poética del saber medieval y un maravilloso crisol de elementos teológicos, científicos y líricos. La obra está considerada como la mejor de toda la Edad Media.',2,'images/01e04c600c7b7bfaf5a14c17a640e5af.webp','x','Excelente','2022-09-25 20:41:00.116551'),(9,'El Principito','Antoine de Saint-Exupery','La historia de la génesis de El principito quizás sea una de mis favoritas de todos los tiempos, a la altura de la propia obra, si se me permite. Tras ser llamado a filas en 1939 y participar en varias arriesgadas misiones aéreas, Antoine de Saint-Exupéry  abandona Francia una vez producida la ocupación alemana, instalándose en Estados Unidos con el firme objetivo de convencer a los norteamericanos para que entren en el conflicto mundial. El autor francés será requerido por el ejército cuatro años después, pero en ese lapso, aparte de incesantes intentos por volver al frente, Antoine escribió El principito.\r\n\r\nNo se me ocurre un momento mejor (o quizás sea más preciso decir idóneo) para escribir una obra de la sensibilidad y el calado filosófico de El principito que durante una guerra. Imagino que pocos contextos deben trastocarnos tanto por dentro como una contienda de la magnitud de la Segunda Guerra Mundial. El estado emocional de aquellos que lo vivieron desde dentro se me antoja inaccesible, y quizás por ello no deja de fascinarme que de una situación tan horripilante puedan nacer historias tan hermosas como la que Saint-Exupéry cuenta en El principito.\r\n\r\nEsta es la historia de los niños y las personas grandes, del extenso mundo que nos rodea, de los pequeños mundos en los que a veces aterrizamos. Una oda a la vida, una crítica a esas cosas que tanto nos preocupan y que tanto nos limitan cuando llegamos a la edad adulta. Es el mundo visto desde los ojos de un niño, el que somos o el que fuimos, también el que siempre seremos por dentro.\r\n\r\nUn catálogo de inspiradoras frases, hermosas metáforas y surrealistas escenas en las que se suceden variados y capitales temas universales tales como la amistad, el amor, la inocencia, la responsabilidad o la relación del ser humano con la naturaleza. Una historia tan entrañable como rica en sabiduría, apta para todas las edades y que no caduca ni pasa de moda. Un clásico con todas las letras que es capaz de acariciarnos el alma.',3,'images/el-principito-edicion-oficial.jpg','Historieta','Excelente','2022-09-25 20:41:00.116551'),(10,'1984','George Orwell','Londres, 1984: Winston Smith decide rebelarse ante un gobierno totalitario que controla cada uno de los movimientos de sus ciudadanos y castiga incluso a aquellos que delinquen con el pensamiento. Consciente de las terribles consecuencias que puede acarrear la disidencia, Winston se une a la ambigua Hermandad por mediación del líder O’\'Brien. Paulatinamente, sin embargo, nuestro protagonista va comprendiendo que ni la Hermandad ni O\'’Brien son lo que aparentan, y que la rebelión, al cabo, quizá sea un objetivo inalcanzable. Por su magnífico análisis del poder y de las relaciones y dependencias que crea en los individuos, 1984 es una de las novelas más inquietantes y atractivas de este siglo.',4,'images/images.jpg','Ciencia ficción','Bueno','2022-09-25 20:41:00.116551'),(16,'La Naranja Mecánica','Anthony Burgess','La naranja mecánica cuenta la historia del nadsat-adolescente Alex y sus tres drugos-amigos en un mundo de crueldad y destrucción. Alex tiene los principales atributos humanos: amor a la agresión, amor al lenguaje, amor a la belleza. Pero es joven y no ha entendido aún la verdadera importancia de la libertad, la que disfruta de un modo violento. En cierto sentido vive en el edén, y sólo cuando cae (como en verdad le ocurre, desde una ventana) parece capaz de llegar a transformarse en un verdadero ser humano.',1,'images/la-naranja-mecanica-libro_oVL7dGt.jpg','Ficcion','Bueno','2022-09-26 03:48:48.833868'),(17,'Juego de tronos-Choque de reyes','George R. R. Martin','Un cometa del color de la sangre hiende el cielo, cargado de malos augurios. Y hay razones sobradas para pensar así: los Siete Reinos se ven sacudidos por las luchas intestinas entre los nobles por la sucesión al Trono de Hierro. En la otra orilla del mar Angosto, la princesa Daenerys Targaryen conduce a su pueblo de jinetes salvajes a través del desierto. Y en los páramos helados del norte, más allá del Muro, un ejército implacable avanza hacia un territorio asolado por el caos y las guerras fratricidas.',4,'images/gsc_112787302_406463_1.jpg','Literatura','Excelente','2022-09-26 03:54:23.426141');
/*!40000 ALTER TABLE `books_books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books_categorias`
--

DROP TABLE IF EXISTS `books_categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books_categorias` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `categoria` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books_categorias`
--

LOCK TABLES `books_categorias` WRITE;
/*!40000 ALTER TABLE `books_categorias` DISABLE KEYS */;
/*!40000 ALTER TABLE `books_categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2022-09-22 23:15:00.281645','2','primerpost|admin',1,'[{\"added\": {}}]',7,1),(2,'2022-09-22 23:41:47.222191','3','segundo|admin',1,'[{\"added\": {}}]',7,1),(3,'2022-09-23 00:02:42.329662','4','cien años de soledad|admin',1,'[{\"added\": {}}]',7,1),(4,'2022-09-23 01:18:58.611000','3','segundo|admin',3,'',7,1),(5,'2022-09-23 01:18:58.616996','2','primerpost|admin',3,'',7,1),(6,'2022-09-23 02:01:14.674012','5','libro|admin',1,'[{\"added\": {}}]',7,1),(7,'2022-09-23 18:22:04.931214','6','cien años de soledad|osman2',1,'[{\"added\": {}}]',7,1),(8,'2022-09-24 21:58:58.830395','7','la divina comedia|osman2',1,'[{\"added\": {}}]',7,1),(9,'2022-09-24 22:00:17.995173','6','cien años de soledad|osman2',3,'',7,1),(10,'2022-09-24 22:06:00.810434','8','la divina comedia|osman2',1,'[{\"added\": {}}]',7,1),(11,'2022-09-24 22:24:55.489426','8','la divina comedia|osman2',3,'',7,1),(12,'2022-09-24 23:21:46.902472','7','la divina comedia|osman2',2,'[{\"changed\": {\"fields\": [\"Estado\", \"Rese\\u00f1a\"]}}]',7,1),(13,'2022-09-24 23:30:29.072193','9','El Principito|osman3',1,'[{\"added\": {}}]',7,1),(14,'2022-09-25 01:07:16.964816','10','1984|admin2',2,'[{\"changed\": {\"fields\": [\"Rese\\u00f1a\"]}}]',7,1),(15,'2022-09-25 03:38:04.668051','10','1984|admin2',2,'[{\"changed\": {\"fields\": [\"Libro img\"]}}]',7,1),(16,'2022-09-25 20:56:23.102533','11','La Naranja Mecánica|osman2',2,'[{\"changed\": {\"fields\": [\"Libro img\"]}}]',7,1),(17,'2022-09-26 15:27:09.475367','17','Juego de tronos-Choque de reyes|admin2',2,'[{\"changed\": {\"fields\": [\"Autor\"]}}]',7,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(7,'books','books'),(9,'books','categorias'),(8,'books','libro'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-09-22 23:00:45.287408'),(2,'auth','0001_initial','2022-09-22 23:00:46.644626'),(3,'admin','0001_initial','2022-09-22 23:00:46.912939'),(4,'admin','0002_logentry_remove_auto_add','2022-09-22 23:00:46.925978'),(5,'admin','0003_logentry_add_action_flag_choices','2022-09-22 23:00:46.940983'),(6,'contenttypes','0002_remove_content_type_name','2022-09-22 23:00:47.042988'),(7,'auth','0002_alter_permission_name_max_length','2022-09-22 23:00:47.117992'),(8,'auth','0003_alter_user_email_max_length','2022-09-22 23:00:47.165996'),(9,'auth','0004_alter_user_username_opts','2022-09-22 23:00:47.180996'),(10,'auth','0005_alter_user_last_login_null','2022-09-22 23:00:47.396012'),(11,'auth','0006_require_contenttypes_0002','2022-09-22 23:00:47.403014'),(12,'auth','0007_alter_validators_add_error_messages','2022-09-22 23:00:47.417015'),(13,'auth','0008_alter_user_username_max_length','2022-09-22 23:00:47.492019'),(14,'auth','0009_alter_user_last_name_max_length','2022-09-22 23:00:47.561027'),(15,'auth','0010_alter_group_name_max_length','2022-09-22 23:00:47.593028'),(16,'auth','0011_update_proxy_permissions','2022-09-22 23:00:47.606031'),(17,'auth','0012_alter_user_first_name_max_length','2022-09-22 23:00:47.680037'),(18,'sessions','0001_initial','2022-09-22 23:00:47.822045'),(19,'books','0001_initial','2022-09-22 23:12:21.220904'),(20,'books','0002_books_libro_img','2022-09-22 23:59:51.493686'),(21,'books','0003_libro','2022-09-23 19:01:32.261377'),(22,'books','0004_books_categoria_books_estado','2022-09-24 21:50:36.744753'),(23,'books','0005_alter_books_estado','2022-09-24 21:53:16.682870'),(24,'books','0006_alter_books_estado','2022-09-24 21:58:32.210310'),(25,'books','0007_alter_books_estado','2022-09-24 22:04:22.031283'),(26,'books','0008_books_pais','2022-09-24 23:54:01.358489'),(27,'books','0009_remove_books_pais','2022-09-24 23:54:51.074133'),(28,'books','0010_delete_libro','2022-09-25 16:39:19.449948'),(29,'books','0011_books_fecha','2022-09-25 20:41:00.222558'),(30,'books','0012_alter_books_categoria','2022-09-25 21:47:42.850879'),(31,'books','0013_categorias','2022-09-25 21:47:42.890882');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('uulu9gfgdfznvh79y94sfpe82kei2d2n','.eJxVjDsOwyAQBe9CHSE-xgsp0_sMaIElOIlAMnYV5e6xJRdJOzPvvZnHbS1-67T4ObErk-zyywLGJ9VDpAfWe-Ox1XWZAz8SftrOp5bodTvbv4OCvexrCCBFgGisMgBOJco0YhzAOGOkVUJqAlBok9KQASkPSu8wihCsGzX7fAHC8zbs:1ocpzg:J83fiIWfBCQWjkf6yZ-dbve6TU7rUjhy8geAe8VRths','2022-10-10 15:26:04.943305');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-26 13:13:00
