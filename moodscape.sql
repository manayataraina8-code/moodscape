-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: moodscape
-- ------------------------------------------------------
-- Server version	8.0.42

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `book_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `genre` varchar(100) DEFAULT NULL,
  `mood` varchar(100) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'The Alchemist','Paulo Coelho','Fiction','joyful','https://ia801006.us.archive.org/13/items/OceanofPDF.comTheAlchemist/_OceanofPDF.com_The_Alchemist.pdf'),(2,'Eleanor Oliphant Is Completely Fine','Gail Honeyman','Contemporary','low','https://ia804503.us.archive.org/27/items/persepolis_202107/Eleanor_Oliphant_is_Completely_Fine_-_Gail_Honeyman.pdf'),(3,'The Perks of Being a Wallflower','Stephen Chbosky','Young Adult','low','https://archive.org/details/perksofbeingwall0000chbo_q6f6'),(4,'Pride and Prejudice','Jane Austen','Classic Romance','joyful','https://archive.org/details/austen-pride-and-prejudice'),(5,'The Little Prince','Antoine de Saint-Exupéry','Philosophical Fiction','calm','https://archive.org/details/the-little-prince-antoine-de-saint-exupery'),(6,'Man’s Search for Meaning','Viktor E. Frankl','Psychology / Memoir','reflective','https://archive.org/details/viktor-emil-frankl-mans-search-for-meaning'),(7,'Tuesdays with Morrie','Mitch Albom','Memoir / Inspiration','reflective','https://ia902803.us.archive.org/7/items/tuesdayswithmorriefulltext/Tuesdays_with_Morrie_full_text.pdf'),(8,'The Art of Happiness','Dalai Lama & Howard Cutler','Philosophy / Self-help','reflective','https://archive.org/download/the-art-of-happiness/The%20Art%20of%20Happiness.pdf'),(9,'Letters to a Young Poet','Rainer Maria Rilke','Philosophy / Letters','reflective','https://archive.org/download/letterstoayoungpoetpdfdrive.com/Letters%20to%20a%20Young%20Poet%20(%20PDFDrive.com%20).pdf'),(10,'The Prophet','Kahlil Gibran','Spiritual / Philosophy','reflective','https://archive.org/download/TheProphetByKhalilGibran/The_Prophet_by_Khalil_Gibran.pdf'),(11,'The Rosie Project','Graeme Simsion','Romantic Comedy','reflective','https://archive.org/details/rosieproject0000sims_a8c2'),(12,'A Man Called Ove','Fredrik Backman','Fiction','joyful','https://archive.org/details/mancalledove0000back'),(13,'The Hundred-Year-Old Man Who Climbed Out the Window and Disappeared','Jonas Jonasson','Fiction','joyful','https://archive.org/details/100yearoldmanwho0000jona'),(14,'Reasons to Stay Alive','Matt Haig','Memoir','low','https://archive.org/details/reasons-to-stay-alive-pdfdrive'),(15,'It\'s Kind of a Funny Story','Ned Vizzini','Young Adult','low','https://archive.org/details/its-kind-of-a-funny-story-by-ned-vizzini'),(16,'The Secret Garden','Frances Hodgson Burnett','Classic','calm','https://archive.org/details/secretgarden00burn'),(17,'The Wind in the Willows','Kenneth Grahame','Children\'s Literature','calm','https://archive.org/details/kenneth-grahame_the-wind-in-the-willows'),(18,'The Power of Now','Eckhart Tolle','Self-Help','stressed','https://archive.org/download/ThePowerOfNowEckhartTolle_201806/The%20Power%20Of%20Now%20-%20Eckhart%20Tolle.pdf'),(19,'The Four Agreements','Don Miguel Ruiz','Self-Help','stressed','https://archive.org/details/fouragreementspr0000ruiz'),(20,'Wherever You Go, There You Are','Jon Kabat-Zinn','Mindfulness','stressed','https://archive.org/details/whereveryougothe0000kaba'),(21,'The Anxiety and Phobia Workbook','Edmund J. Bourne','Self-Help','stressed','https://archive.org/details/anxietyphobiawor0000bour_6thed'),(22,'Breathe, Mama, Breathe','Shonda Moralis','Parenting','stressed','https://archive.org/details/breathemamabreat0000mora');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `comments` text NOT NULL,
  `rating` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  CONSTRAINT `feedback_chk_1` CHECK ((`rating` between 1 and 5))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,'vedika','good',5,'2025-05-11 17:10:21');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `games`
--

DROP TABLE IF EXISTS `games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `games` (
  `id` int NOT NULL AUTO_INCREMENT,
  `mood` varchar(50) DEFAULT NULL,
  `game_name` varchar(100) DEFAULT NULL,
  `game_link` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games`
--

LOCK TABLES `games` WRITE;
/*!40000 ALTER TABLE `games` DISABLE KEYS */;
INSERT INTO `games` VALUES (3,'calm','Journey','https://store.playstation.com/en-us/product/UP9000-NPUB31658_00-JOURNEY000000001'),(4,'low','Gris','https://store.steampowered.com/app/683320/GRIS/'),(6,'joyful','Slither.io','https://slither.io'),(7,'joyful','Little Alchemy 2','https://littlealchemy2.com'),(8,'joyful','Tetris','https://tetris.com/play-tetris'),(9,'joyful','Agar.io','https://agar.io'),(10,'joyful','GeoGuessr','https://geoguessr.com'),(11,'calm','Flow Free','https://flowfree.org'),(12,'calm','Monument Valley','https://www.monumentvalleygame.com'),(13,'calm','Calm Waters: A Point and Click Adventure','https://www.bigfishgames.com/games/10592/calm-waters-a-point-and-click-adventure/'),(14,'calm','Zen Koi','https://www.zenkoi.com'),(15,'calm','Little Alchemy 2','https://littlealchemy2.com'),(16,'low','Hextris','https://hextris.io'),(17,'low','Sushi Cat','https://www.addictinggames.com/sushi-cat'),(18,'low','Bloxorz','https://www.coolmathgames.com/0-bloxorz'),(19,'low','Slime Volleyball','https://www.silvergames.com/en/slime-volleyball'),(20,'low','Poptropica','https://www.poptropica.com'),(21,'stressed','2048','https://play2048.co'),(22,'stressed','Cookie Clicker','https://orteil.dashnet.org/cookieclicker'),(23,'stressed','Bejeweled','https://www.pogo.com/games/bejeweled'),(24,'stressed','Angry Birds','https://www.angrybirdsonline.com'),(25,'stressed','Solitaire','https://www.solitaire.fr');
/*!40000 ALTER TABLE `games` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `mood` varchar(50) DEFAULT NULL,
  `movie_name` varchar(100) DEFAULT NULL,
  `movie_link` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,'joyful','The Secret Life of Walter Mitty','https://www.imdb.com/title/tt0359950/'),(2,'joyful','The Pursuit of Happyness','https://netplayz.ru/watch?type=movie&id=1402'),(3,'joyful','Crazy Rich Asians','https://netplayz.ru/watch?type=movie&id=455207'),(4,'joyful','The Grand Budapest Hotel','https://netplayz.ru/watch?type=movie&id=120467'),(5,'joyful','La La Land','https://netplayz.ru/watch?type=movie&id=313369'),(6,'calm','The Secret Garden','https://netplayz.ru/watch?type=movie&id=11236'),(7,'calm','Into the Wild','https://www.imdb.com/title/tt0758758/'),(8,'calm','A Beautiful Mind','https://www.imdb.com/title/tt0268978/'),(9,'calm','The Theory of Everything','https://www.imdb.com/title/tt2980516/'),(10,'calm','Little Miss Sunshine','https://www.imdb.com/title/tt0449059/'),(11,'stressed','Requiem for a Dream','https://www.imdb.com/title/tt0180093/'),(12,'stressed','Fight Club','https://www.imdb.com/title/tt0137523/'),(13,'stressed','Black Swan','https://www.imdb.com/title/tt0947798/'),(14,'stressed','The Machinist','https://www.imdb.com/title/tt0361862/'),(15,'stressed','American Psycho','https://www.imdb.com/title/tt0144084/'),(16,'low','The Perks of Being a Wallflower','https://www.imdb.com/title/tt1659337/'),(17,'low','Eternal Sunshine of the Spotless Mind','https://www.imdb.com/title/tt0338013/'),(18,'low','Her','https://www.imdb.com/title/tt1798709/'),(19,'low','A Ghost Story','https://www.imdb.com/title/tt6265828/'),(20,'low','Lost in Translation','https://www.imdb.com/title/tt0335266/'),(21,'reflective','The Shawshank Redemption','https://www.imdb.com/title/tt0111161/'),(22,'reflective','Forrest Gump','https://www.imdb.com/title/tt0109830/'),(23,'reflective','The Pursuit of Happyness','https://www.imdb.com/title/tt0454921/'),(24,'reflective','Dead Poets Society','https://www.imdb.com/title/tt0097165/'),(25,'reflective','The Green Mile','https://www.imdb.com/title/tt0120689/');
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `music`
--

DROP TABLE IF EXISTS `music`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `music` (
  `id` int NOT NULL AUTO_INCREMENT,
  `mood` varchar(50) DEFAULT NULL,
  `track_name` varchar(255) DEFAULT NULL,
  `track_link` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `music`
--

LOCK TABLES `music` WRITE;
/*!40000 ALTER TABLE `music` DISABLE KEYS */;
INSERT INTO `music` VALUES (1,'joyful','Happy - Pharrell Williams','https://www.youtube.com/watch?v=ZbZSe6N_BXs'),(2,'joyful','Can’t Stop the Feeling! - Justin Timberlake','https://www.youtube.com/watch?v=ru0K8uYEZWw'),(3,'joyful','Uptown Funk - Mark Ronson ft. Bruno Mars','https://www.youtube.com/watch?v=OPf0YbXqDm0'),(4,'joyful','Don’t Stop Me Now - Queen','https://www.youtube.com/watch?v=HgzGwKwLmgM'),(5,'joyful','Wake Me Up - Avicii','https://www.youtube.com/watch?v=IcrbM1l_BoI'),(6,'calm','Weightless - Marconi Union','https://www.youtube.com/watch?v=UfcAVejslrU'),(7,'calm','Sunset Lover - Petit Biscuit','https://www.youtube.com/watch?v=J7JzjbRNVlk'),(8,'calm','River Flows in You - Yiruma','https://www.youtube.com/watch?v=7maJOI3QMu0'),(9,'calm','Breathe Me - Sia','https://www.youtube.com/watch?v=ghPcYGPnL0M'),(10,'calm','Clair de Lune - Claude Debussy','https://www.youtube.com/watch?v=CvFH_6DNRCY'),(11,'stressed','Don’t Worry Be Happy - Bobby McFerrin','https://www.youtube.com/watch?v=d-diB65scQU'),(12,'stressed','Fix You - Coldplay','https://www.youtube.com/watch?v=k4V3Mo61fJM'),(13,'stressed','Lose Yourself - Eminem','https://www.youtube.com/watch?v=_Yhyp-_hX2s'),(14,'stressed','Under Pressure - Queen & David Bowie','https://www.youtube.com/watch?v=a01QQZyl-_I'),(15,'stressed','Let It Be - The Beatles','https://www.youtube.com/watch?v=QDYfJf7nU6Q'),(16,'low','Fix You - Coldplay','https://www.youtube.com/watch?v=k4V3Mo61fJM'),(17,'low','The Night We Met - Lord Huron','https://www.youtube.com/watch?v=ytEoVZG11O4'),(18,'low','The Sound of Silence - Simon & Garfunkel','https://www.youtube.com/watch?v=4zLfCnGVeL4'),(19,'low','Someone Like You - Adele','https://www.youtube.com/watch?v=hLQl3WQQoQ0'),(20,'low','All I Want - Kodaline','https://www.youtube.com/watch?v=WxT-J3lAGJk'),(21,'reflective','Sound of Silence - Simon & Garfunkel','https://www.youtube.com/watch?v=4zLfCnGVeL4'),(22,'reflective','Fix You - Coldplay','https://www.youtube.com/watch?v=k4V3Mo61fJM'),(23,'reflective','The Blower’s Daughter - Damien Rice','https://www.youtube.com/watch?v=7gVxN5R0CzQ'),(24,'reflective','Hallelujah - Jeff Buckley','https://www.youtube.com/watch?v=y8AWFf7EAc4'),(25,'reflective','Let Her Go - Passenger','https://www.youtube.com/watch?v=RB-RcX5DS5I');
/*!40000 ALTER TABLE `music` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `survey_responses`
--

DROP TABLE IF EXISTS `survey_responses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `survey_responses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `weather` varchar(50) DEFAULT NULL,
  `door` varchar(50) DEFAULT NULL,
  `snack` varchar(50) DEFAULT NULL,
  `soundtrack` varchar(50) DEFAULT NULL,
  `animal` varchar(50) DEFAULT NULL,
  `top_mood` varchar(20) DEFAULT NULL,
  `response_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `survey_responses_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey_responses`
--

LOCK TABLES `survey_responses` WRITE;
/*!40000 ALTER TABLE `survey_responses` DISABLE KEYS */;
/*!40000 ALTER TABLE `survey_responses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `isActive` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'vedika','vedika123',1),(2,'manayata','manayata123',1),(3,'vijaya','vijaya123',1),(4,'mannat','mannat123',1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-06 13:52:06
