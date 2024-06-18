-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: java_backend
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `canzoni`
--

DROP TABLE IF EXISTS `canzoni`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `canzoni` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titolo` varchar(100) DEFAULT NULL,
  `cantante` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=503 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `canzoni`
--

LOCK TABLES `canzoni` WRITE;
/*!40000 ALTER TABLE `canzoni` DISABLE KEYS */;
INSERT INTO `canzoni` VALUES (1,'sinceramente','annalisa'),(2,'bum bum','rose villain'),(3,'Like a Rolling Stone','Bob Dylan'),(4,'Satisfaction','The Rolling Stones'),(5,'Imagine','John Lennon'),(6,'What\'s Going On','Marvin Gaye'),(7,'Respect','Aretha Franklin'),(8,'Good Vibrations','The Beach Boys'),(9,'Johnny B. Goode','Chuck Berry'),(10,'Hey Jude','The Beatles'),(11,'Smells Like Teen Spirit','Nirvana'),(12,'What\'d I Say','Ray Charles'),(13,'My Generation','The Who'),(14,'A Change Is Gonna Come','Sam Cooke'),(15,'Yesterday','The Beatles'),(16,'Blowin\' in the Wind','Bob Dylan'),(17,'London Calling','The Clash'),(18,'I Want to Hold Your Hand','The Beatles'),(19,'Purple Haze','Jimi Hendrix'),(20,'Maybellene','Chuck Berry'),(21,'Hound Dog','Elvis Presley'),(22,'Let It Be','The Beatles'),(23,'Born to Run','Bruce Springsteen'),(24,'Be My Baby','The Ronettes'),(25,'In My Life','The Beatles'),(26,'People Get Ready','The Impressions'),(27,'God Only Knows','The Beach Boys'),(28,'A Day in the Life','The Beatles'),(29,'Layla','Derek and the Dominos'),(30,'(Sittin on) the Dock of the Bay','Otis Redding'),(31,'Help!','The Beatles'),(32,'I Walk the Line','Johnny Cash'),(33,'Stairway To Heaven','Led Zeppelin'),(34,'Sympathy for the Devil','The Rolling Stones'),(35,'River Deep','Mountain High'),(36,'You\'ve Lost That Lovin\' Feelin\'','The Righteous Brothers'),(37,'Light My Fire','The Doors'),(38,'One','U2'),(39,'No Woman, No Cry','Bob Marley and the Wailers'),(40,'Gimme Shelter','The Rolling Stones'),(41,'That\'ll Be the Day','Buddy Holly and the Crickets'),(42,'Dancing in the Street','Martha and the Vandellas'),(43,'The Weight','The Band'),(44,'Waterloo Sunset','The Kinks'),(45,'Tutti-Frutti','Little Richard'),(46,'Georgia on My Mind','Ray Charles'),(47,'Heartbreak Hotel','Elvis Presley'),(48,'Heroes','David Bowie'),(49,'Bridge Over Troubled Water','Simon and Garfunkel'),(50,'All Along the Watchtower','Jimi Hendrix'),(51,'Hotel California','The Eagles'),(52,'The Tracks of My Tears','Smokey Robinson and the Miracles'),(53,'The Message','Grandmaster Flash and the Furious Five'),(54,'When Doves Cry','Prince'),(55,'Anarchy in the U.K.','The Sex Pistols'),(56,'When a Man Loves a Woman','Percy Sledge'),(57,'Louie Louie','The Kingsmen'),(58,'Long Tall Sally','Little Richard'),(59,'Whiter Shade of Pale','Procol Harum'),(60,'Billie Jean','Michael Jackson'),(61,'The Times They Are A-Changin\'','Bob Dylan'),(62,'Let\'s Stay Together','Al Green'),(63,'Whole Lotta Shakin\' Goin On','Jerry Lee Lewis'),(64,'Bo Diddley','Bo Diddley'),(65,'For What It\'s Worth','Buffalo Springfield'),(66,'She Loves You','The Beatles'),(67,'Sunshine of Your Love','Cream'),(68,'Redemption Song','Bob Marley and the Wailers'),(69,'Jailhouse Rock','Elvis Presley'),(70,'Tangled Up in Blue','Bob Dylan'),(71,'Crying','Roy Orbison'),(72,'Walk On By','Dionne Warwick'),(73,'California Girls','The Beach Boys'),(74,'Papa\'s Got a Brand New Bag','James Brown'),(75,'Summertime Blues','Eddie Cochran'),(76,'Superstition','Stevie Wonder'),(77,'Whole Lotta Love','Led Zeppelin'),(78,'Strawberry Fields Forever','The Beatles'),(79,'Mystery Train','Elvis Presley'),(80,'I Got You (I Feel Good)','James Brown'),(81,'Mr. Tambourine Man','The Byrds'),(82,'I Heard It Through the Grapevine','Marvin Gaye'),(83,'Blueberry Hill','Fats Domino'),(84,'You Really Got Me','The Kinks'),(85,'Norwegian Wood (This Bird Has Flown)','The Beatles'),(86,'Every Breath You Take','The Police'),(87,'Crazy','Patsy Cline'),(88,'Thunder Road','Bruce Springsteen'),(89,'Ring of Fire','Johnny Cash'),(90,'My Girl','The Temptations'),(91,'California Dreamin\'','The Mamas and The Papas'),(92,'In the Still of the Nite','The Five Satins'),(93,'Suspicious Minds','Elvis Presley'),(94,'Blitzkrieg Bop','Ramones'),(95,'I Still Haven\'t Found What I\'m Looking For','U2'),(96,'Good Golly, Miss Molly','Little Richard'),(97,'Blue Suede Shoes','Carl Perkins'),(98,'Great Balls of Fire','Jerry Lee Lewis'),(99,'Roll Over Beethoven','Chuck Berry'),(100,'Love and Happiness','Al Green'),(101,'Fortunate Son','Creedence Clearwater Revival'),(102,'You Can\'t Always Get What You Want','The Rolling Stones'),(103,'Voodoo Child (Slight Return)','Jimi Hendrix'),(104,'Be-Bop-A-Lula','Gene Vincent and His Blue Caps'),(105,'Hot Stuff','Donna Summer'),(106,'Living for the City','Stevie Wonder'),(107,'The Boxer','Simon and Garfunkel'),(108,'Mr. Tambourine Man','Bob Dylan'),(109,'Not Fade Away','Buddy Holly and the Crickets'),(110,'Little Red Corvette','Prince'),(111,'Brown Eyed Girl','Van Morrison'),(112,'I\'ve Been Loving You Too Long (to Stop Now)','Otis Redding'),(113,'I\'m So Lonesome I Could Cry','Hank Williams'),(114,'That\'s All Right','Elvis Presley'),(115,'Up on the Roof','The Drifters'),(116,'Da Doo Ron Ron (When He Walked Me Home)','The Crystals'),(117,'You Send Me','Sam Cooke'),(118,'Honky Tonk Women','The Rolling Stones'),(119,'Take Me to the River ','Al Green'),(120,'Shout (Parts 1 and 2)]','The Isley Brothers'),(121,'Go Your Own Way','Fleetwood Mac'),(122,'I Want You Back','The Jackson 5'),(123,'Stand By Me','Ben E. King'),(124,'House of the Rising Sun','The Animals'),(125,'It\'s a Man\'s Man\'s Man\'s World','James Brown'),(126,'Jumpin\' Jack Flash','The Rolling Stones'),(127,'Will You Love Me Tomorrow','The Shirelles'),(128,'Shake, Rattle & Roll','Big Joe Turner'),(129,'Changes','David Bowie'),(130,'Rock & Roll Music','Chuck Berry'),(131,'Born to Be Wild','Steppenwolf'),(132,'Maggie May','Rod Stewart'),(133,'With or Without You','U2'),(134,'Who Do You Love','Bo Diddley'),(135,'Won\'t Get Fooled Again','The Who'),(136,'In the Midnight Hour','Wilson Pickett'),(137,'While My Guitar Gently Weeps','The Beatles'),(138,'Your Song','Elton John'),(139,'Eleanor Rigby','The Beatles'),(140,'Family Affair','Sly and the Family Stone'),(141,'I Saw Her Standing There','The Beatles'),(142,'Kashmir','Led Zeppelin'),(143,'All I Have to Do Is Dream','The Everly Brothers'),(144,'Please, Please, Please','James Brown'),(145,'Purple Rain','Prince'),(146,'I Wanna Be Sedated','The Ramones'),(147,'Everyday People','Sly and the Family Stone'),(148,'Rock Lobster','The B-52\'s'),(149,'Lust for Life','Iggy Pop'),(150,'Me and Bobby McGee','Janis Joplin'),(151,'Cathy\'s Clown','The Everly Brothers'),(152,'Eight Miles High','The Byrds'),(153,'Earth Angel','The Penguins'),(154,'Foxey Lady','Jimi Hendrix'),(155,'A Hard Day\'s Night','The Beatles'),(156,'Rave On','Buddy Holly and the Crickets'),(157,'Proud Mary','Creedence Clearwater Revival'),(158,'The Sounds of Silence','Simon and Garfunkel'),(159,'I Only Have Eyes for You','The Flamingos'),(160,'(We\'re Gonna) Rock Around the Clock','Bill Haley and His Comets'),(161,'I\'m Waiting for the Man','The Velvet Underground'),(162,'Bring the Noise','Public Enemy'),(163,'I Can\'t Stop Loving You','Ray Charles'),(164,'Nothing Compares 2 U','Sinead O\'Connor'),(165,'Bohemian Rhapsody','Queen'),(166,'Folsom Prison Blues','Johnny Cash'),(167,'Fast Car','Tracy Chapman'),(168,'Lose Yourself ','Eminem'),(169,'Let\'s Get It On','Marvin Gaye'),(170,'Papa Was a Rollin\' Stone','The Temptations'),(171,'Losing My Religion','R.E.M.'),(172,'Both Sides Now','Joni Mitchell'),(173,'Dancing Queen','Abba'),(174,'Dream On','Aerosmith'),(175,'God Save the Queen','The Sex Pistols'),(176,'Paint It, Black','The Rolling Stones'),(177,'I Fought the Law','The Bobby Fuller Four'),(178,'Don\'t Worry Baby','The Beach Boys'),(179,'Free Fallin\'','Tom Petty'),(180,'September Gurls','Big Star'),(181,'Love Will Tear Us Apart','Joy Division'),(182,'Hey Ya!','Outkast'),(183,'Green Onions','Booker T. and the MG\'s'),(184,'Save the Last Dance for Me','The Drifters'),(185,'The Thrill Is Gone','B.B. King'),(186,'Please Please Me','The Beatles'),(187,'Desolation Row','Bob Dylan'),(188,'I Never Loved a Man (The Way I Love You)','Aretha Franklin'),(189,'Back in Black','AC/DC'),(190,'Who\'ll Stop the Rain','Creedence Clearwater Revival'),(191,'Stayin\' Alive','The Bee Gees'),(192,'Knocking on Heaven\'s Door','Bob Dylan'),(193,'Free Bird','Lynyrd Skynyrd'),(194,'Wichita Lineman','Glen Campbell'),(195,'There Goes My Baby','The Drifters'),(196,'Peggy Sue','Buddy Holly'),(197,'Maybe','The Chantels'),(198,'Sweet Child O\' Mine','Guns N\' Roses'),(199,'Don\'t Be Cruel','Elvis Presley'),(200,'Hey Joe','Jimi Hendrix'),(201,'Flash Light','Parliament'),(202,'Loser','Beck'),(203,'Bizarre Love Triangle','New Order'),(204,'Come Together','The Beatles'),(205,'Positively 4th Street','Bob Dylan'),(206,'Try a Little Tenderness','Otis Redding'),(207,'Lean On Me','Bill Withers'),(208,'Reach Out, I\'ll Be There','The Four Tops'),(209,'Bye Bye Love','The Everly Brothers'),(210,'Gloria','Them'),(211,'In My Room','The Beach Boys'),(212,'96 Tears','? and the Mysterians'),(213,'Caroline, No','The Beach Boys'),(214,'1999','Prince'),(215,'Your Cheatin\' Heart','Hank Williams'),(216,'Rockin\' in the Free World','Neil Young'),(217,'Sh-Boom','The Chords'),(218,'Do You Believe in Magic','The Lovin\' Spoonful'),(219,'Jolene','Dolly Parton'),(220,'Boom Boom','John Lee Hooker'),(221,'Spoonful','Howlin\' Wolf'),(222,'Walk Away Renee','The Left Banke'),(223,'Walk on the Wild Side','Lou Reed'),(224,'Oh, Pretty Woman','Roy Orbison'),(225,'Dance to the Music','Sly and the Family Stone'),(226,'Good Times','Chic'),(227,'Hoochie Coochie Man','Muddy Waters'),(228,'Moondance','Van Morrison'),(229,'Fire and Rain','James Taylor'),(230,'Should I Stay or Should I Go','The Clash'),(231,'Mannish Boy','Muddy Waters'),(232,'Just Like a Woman','Bob Dylan'),(233,'Sexual Healing','Marvin Gaye'),(234,'Only the Lonely','Roy Orbison'),(235,'We Gotta Get Out of This Place','The Animals'),(236,'I\'ll Feel a Whole Lot Better','The Byrds'),(237,'I Got a Woman','Ray Charles'),(238,'Everyday','Buddy Holly and the Crickets'),(239,'Planet Rock','Afrika Bambaataa and the Soul Sonic Force'),(240,'I Fall to Pieces','Patsy Cline'),(241,'The Wanderer','Dion'),(242,'Son of a Preacher Man','Dusty Springfield'),(243,'Stand!','Sly and the Family Stone'),(244,'Rocket Man','Elton John'),(245,'Love Shack','The B-52\'s'),(246,'Gimme Some Lovin\'','The Spencer Davis Group'),(247,'The Night They Drove Old Dixie Down','The Band'),(248,'(Your Love Keeps Lifting Me) Higher and Higher','Jackie Wilson'),(249,'Hot Fun in the Summertime','Sly and the Family Stone'),(250,'Rappers Delight','The Sugarhill Gang'),(251,'Chain of Fools','Aretha Franklin'),(252,'Paranoid','Black Sabbath'),(253,'Mack the Knife','Bobby Darin'),(254,'Money Honey','The Drifters'),(255,'All the Young Dudes','Mott the Hoople'),(256,'Highway to Hell','AC/DC'),(257,'Heart of Glass','Blondie'),(258,'Paranoid Android','Radiohead'),(259,'Wild Thing','The Troggs'),(260,'I Can See for Miles','The Who'),(261,'Hallelujah','Jeff Buckley'),(262,'Oh, What a Night','The Dells'),(263,'Higher Ground','Stevie Wonder'),(264,'Ooo Baby Baby','Smokey Robinson'),(265,'He\'s a Rebel','The Crystals'),(266,'Sail Away','Randy Newman'),(267,'Tighten Up','Archie Bell and the Drells'),(268,'Walking in the Rain','The Ronettes'),(269,'Personality Crisis','New York Dolls'),(270,'Sunday Bloody Sunday','U2'),(271,'Roadrunner','The Modern Lovers'),(272,'He Stopped Loving Her Today','George Jones'),(273,'Sloop John B','The Beach Boys'),(274,'Sweet Little Sixteen','Chuck Berry'),(275,'Something','The Beatles'),(276,'Somebody to Love','Jefferson Airplane'),(277,'Born in the U.S.A.','Bruce Springsteen'),(278,'I\'ll Take You There','The Staple Singers'),(279,'Ziggy Stardust','David Bowie'),(280,'Pictures of You','The Cure'),(281,'Chapel of Love','The Dixie Cups'),(282,'Ain\'t No Sunshine','Bill Withers'),(283,'You Are the Sunshine of My Life','Stevie Wonder'),(284,'Help Me','Joni Mitchell'),(285,'Call Me','Blondie'),(286,'(What\'s So Funny \'Bout) Peace Love and Understanding?','Elvis Costello and the Attractions'),(287,'Smoke Stack Lightning','Howlin\' Wolf'),(288,'Summer Babe','Pavement'),(289,'Walk This Way','Run-DMC'),(290,'Money (That\'s What I Want)','Barrett Strong'),(291,'Can\'t Buy Me Love','The Beatles'),(292,'Stan','Eminem featuring Dido'),(293,'She\'s Not There','The Zombies'),(294,'Train in Vain','The Clash'),(295,'Tired of Being Alone','Al Green'),(296,'Black Dog','Led Zeppelin'),(297,'Street Fighting Man','The Rolling Stones'),(298,'Get Up, Stand Up','Bob Marley and the Wailers'),(299,'Heart of Gold','Neil Young'),(300,'One Way or Another','Blondie'),(301,'Sign \'O\' the Times','Prince'),(302,'Like a Prayer','Madonna'),(303,'Do Ya Think I\'m Sexy?','Rod Stewart'),(304,'Blue Eyes Crying In the Rain','Willie Nelson'),(305,'Ruby Tuesday','The Rolling Stones'),(306,'With a Little Help From My Friends','The Beatles'),(307,'Say It Loud, I\'m Black and Proud','James Brown'),(308,'That\'s Entertainment','The Jam'),(309,'Why Do Fools Fall In Love','Frankie Lymon and the Teenagers'),(310,'Lonely Teardrops','Jackie Wilson'),(311,'What\'s Love Got To Do With It','Tina Turner'),(312,'Iron Man','Black Sabbath'),(313,'Wake Up Little Susie','The Everly Brothers'),(314,'In Dreams','Roy Orbison'),(315,'I Put a Spell on You','Screamin\' Jay Hawkins'),(316,'Comfortably Numb','Pink Floyd'),(317,'Don\'t Let Me Be Misunderstood','The Animals'),(318,'Wish You Were Here','Pink Floyd'),(319,'Many Rivers to Cross','Jimmy Cliff'),(320,'Alison','Elvis Costello'),(321,'School\'s Out','Alice Cooper'),(322,'Heartbreaker','Led Zeppelin'),(323,'Cortez the Killer','Neil Young'),(324,'Fight the Power','Public Enemy'),(325,'Dancing Barefoot','Patti Smith Group'),(326,'Baby Love','The Supremes'),(327,'Good Lovin\'','The Young Rascals'),(328,'Get Up (I Feel Like Being a) Sex Machine','James Brown'),(329,'For Your Precious Love','Jerry Butler and the Impressions'),(330,'The End','The Doors'),(331,'That\'s the Way of the World','Earth, Wind and Fire'),(332,'We Will Rock You','Queen'),(333,'I Can\'t Make You Love Me','Bonnie Raitt'),(334,'Subterranean Homesick Blues','Bob Dylan'),(335,'Spirit in the Sky','Norman Greenbaum'),(336,'Wild Horses','The Rolling Stones'),(337,'Sweet Jane','The Velvet Underground'),(338,'Walk This Way','Aerosmith'),(339,'Beat It','Michael Jackson'),(340,'Maybe I\'m Amazed','Paul McCartney'),(341,'You Keep Me Hanging On','The Supremes'),(342,'Baba O\'Riley','The Who'),(343,'The Harder They Come','Jimmy Cliff'),(344,'Runaround Sue','Dion'),(345,'Jim Dandy','Lavern Baker'),(346,'Piece of My Heart','Big Brother and the Holding Company'),(347,'La Bamba','Ritchie Valens'),(348,'California Love','Dr. Dre and 2Pac'),(349,'Candle in the Wind','Elton John'),(350,'That Lady (Part 1 and 2)','The Isley Brothers'),(351,'Spanish Harlem','Ben E. King'),(352,'The Locomotion','Little Eva'),(353,'The Great Pretender','The Platters'),(354,'All Shook Up','Elvis Presley'),(355,'Tears in Heaven','Eric Clapton'),(356,'Watching the Detectives','Elvis Costello'),(357,'Bad Moon Rising','Creedence Clearwater Revival'),(358,'Sweet Dreams (Are Made of This)','Eurythmics'),(359,'Little Wing','Jimi Hendrix'),(360,'Nowhere to Run','Martha and the Vandellas'),(361,'Got My Mojo Working','Muddy Waters'),(362,'Killing Me Softly With His Song','Roberta Flack'),(363,'Complete Control','The Clash'),(364,'All You Need Is Love','The Beatles'),(365,'The Letter','The Box Tops'),(366,'Highway 61 Revisited','Bob Dylan'),(367,'Unchained Melody','The Righteous Brothers'),(368,'How Deep Is Your Love','The Bee Gees'),(369,'White Room','Cream'),(370,'Personal Jesus','Depeche Mode'),(371,'I\'m A Man','Bo Diddley'),(372,'The Wind Cries Mary','Jimi Hendrix'),(373,'I Can\'t Explain','The Who'),(374,'Marquee Moon','Television'),(375,'Wonderful World','Sam Cooke'),(376,'Brown Eyed Handsome Man','Chuck Berry'),(377,'Another Brick in the Wall Part 2','Pink Floyd'),(378,'Fake Plastic Trees','Radiohead'),(379,'Hit the Road Jack','Ray Charles'),(380,'Pride (In The Name of Love)','U2'),(381,'Radio Free Europe','R.E.M.'),(382,'Goodbye Yellow Brick Road','Elton John'),(383,'Tell It Like It Is','Aaron Neville'),(384,'Bitter Sweet Symphony','The Verve'),(385,'Whipping Post','The Allman Brothers Band'),(386,'Ticket to Ride','The Beatles'),(387,'Ohio','Crosby, Stills, Nash and Young'),(388,'I Know You Got Soul','Eric B and Rakim'),(389,'Tiny Dancer','Elton John'),(390,'Roxanne','The Police'),(391,'Just My Imagination','The Temptations'),(392,'Baby I Need Your Loving','The Four Tops'),(393,'Band of Gold','Freda Payne'),(394,'O-o-h Child','The Five Stairsteps'),(395,'Summer in the City','The Lovin\' Spoonful'),(396,'Can\'t Help Falling in Love','Elvis Presley'),(397,'Remember (Walkin\' in the Sand)','The Shangri-Las'),(398,'Thirteen','Big Star'),(399,'(Don\'t Fear) the Reaper','Blue Oyster Cult'),(400,'Sweet Home Alabama','Lynyrd Skynyrd'),(401,'Enter Sandman','Metallica'),(402,'Kicks','Paul Revere and the Raiders'),(403,'Tonight\'s the Night','The Shirelles'),(404,'Thank You (Falettinme Be Mice Elf Agin)','Sly & the Family Stone'),(405,'C\'mon Everybody','Eddie Cochran'),(406,'Visions of Johanna','Bob Dylan'),(407,'We\'ve Only Just Begun','The Carpenters'),(408,'I Believe I Can Fly','R. Kelly'),(409,'In Bloom','Nirvana'),(410,'Sweet Emotion','Aerosmith'),(411,'Crossroads','Cream'),(412,'Monkey Gone to Heaven','Pixies'),(413,'I Feel Love','Donna Summer'),(414,'Ode to Billie Joe','Bobbie Gentry'),(415,'The Girl Can\'t Help It','Little Richard'),(416,'Young Blood','The Coasters'),(417,'I Can\'t Help Myself','The Four Tops'),(418,'The Boys of Summer','Don Henley'),(419,'Fuck tha Police','N.W.A.'),(420,'Suite: Judy Blue Eyes','Crosby, Stills and Nash'),(421,'Nuthin\' But a \'G\' Thang','Dr. Dre'),(422,'It\'s Your Thing','The Isley Brothers'),(423,'Piano Man','Billy Joel'),(424,'Lola','The Kinks'),(425,'Blue Suede Shoes','Elvis Presley'),(426,'Tumbling Dice','The Rolling Stones'),(427,'William, It Was Really Nothing','The Smiths'),(428,'Smoke on the Water','Deep Purple'),(429,'New Year\'s Day','U2'),(430,'Devil With a Blue Dress On','Mitch Ryder and the Detroit Wheels'),(431,'Everybody Needs Somebody to Love','Solomon Burke'),(432,'White Man in Hammersmith Palais','The Clash'),(433,'Ain\'t It a Shame','Fats Domino'),(434,'Midnight Train to Georgia','Gladys Knight and the Pips'),(435,'Ramble On','Led Zeppelin'),(436,'Mustang Sally','Wilson Pickett'),(437,'Beast of Burden','The Rolling Stones'),(438,'Alone Again Or','Love'),(439,'Love Me Tender','Elvis Presley'),(440,'I Wanna Be Your Dog','The Stooges'),(441,'Pink Houses','John Cougar Mellencamp'),(442,'Push It','Salt-n-Pepa'),(443,'Come Go With Me','The Del-Vikings'),(444,'Keep a Knockin\'','Little Richard'),(445,'I Shot the Sheriff','Bob Marley and the Whailers'),(446,'I Got You Babe','Sonny and Cher'),(447,'Come As You Are','Nirvana'),(448,'Pressure Drop','Toot and the Maytals'),(449,'Leader of the Pack','The Shangri-Las'),(450,'Heroin','The Velvet Underground'),(451,'Penny Lane','The Beatles'),(452,'By the Time I Get to Phoenix','Glem Campbell'),(453,'The Twist','Chubby Checker'),(454,'Cupid','Sam Cooke'),(455,'Paradise City','Guns n\' Roses'),(456,'My Sweet Lord','George Harrison'),(457,'All Apologies','Nirvana'),(458,'Stagger Lee','Lloyd Price'),(459,'Sheena Is a Punk Rocker','Ramones'),(460,'Soul Man','Sam and Dave'),(461,'Rollin\' Stone','Muddy Waters'),(462,'One Fine Day','The Chiffons'),(463,'Kiss','Prince'),(464,'Respect Yourself','The Staple Singers'),(465,'Rain','The Beatles'),(466,'Standing in the Shadows of Love','The Four Tops'),(467,'Surrender','Cheap Trick'),(468,'Runaway','Del Shannon'),(469,'Welcome to the Jungle','Guns n\' Roses'),(470,'Search and Destroy','The Stooges'),(471,'It\'s Too Late','Carole King'),(472,'Free Man in Paris','Joni Mitchell'),(473,'On the Road Again','Willie Nelson'),(474,'Where Did Our Love Go','The Supremes'),(475,'Do Right Woman, Do Right Man','Aretha Franklin'),(476,'One Nation Under a Groove','Funkadelic'),(477,'Sabotage','Beastie Boys'),(478,'I Want to Know What Love Is','Foreigner'),(479,'Super Freak','Rick James'),(480,'White Rabbit','Jefferson Airplane'),(481,'Lady Marmalade','Labelle'),(482,'Into the Mystic','Van Morrison'),(483,'Young Americans','David Bowie'),(484,'I\'m Eighteen','Alice Cooper'),(485,'Just Like Heaven','The Cure'),(486,'I Love Rock \'N Roll','Joan Jett'),(487,'Graceland','Paul Simon'),(488,'How Soon Is Now?','The Smiths'),(489,'Under the Boardwalk','The Drifters'),(490,'Rhiannon (Will You Ever Win)','Fleetwood Mac'),(491,'I Will Survive','Gloria Gaynor'),(492,'Brown Sugar','The Rolling Stones'),(493,'You Don\'t Have to Say You Love Me','Dusty Springfield'),(494,'Running on Empty','Jackson Browne'),(495,'Then He Kissed Me','The Crystals'),(496,'Desperado','The Eagles'),(497,'Shop Around','Smokey Robinson and the Miracles'),(498,'Miss You','The Rolling Stones'),(499,'Buddy Holly','Weezer'),(500,'Rainy Night in Georgia','Brook Benton'),(501,'The Boys Are Back in Town','Thin Lizzy'),(502,'More Than a Feeling','Boston');
/*!40000 ALTER TABLE `canzoni` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-18 13:08:35
