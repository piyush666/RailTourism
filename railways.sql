-- MySQL dump 10.13  Distrib 5.7.11, for Win64 (x86_64)
--
-- Host: localhost    Database: railways
-- ------------------------------------------------------
-- Server version	5.7.11-log

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
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book` (
  `bookid` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `t_no` int(11) DEFAULT NULL,
  `t_name` varchar(200) DEFAULT NULL,
  `t_class` varchar(10) DEFAULT NULL,
  `bookDate` date DEFAULT NULL,
  `t_jdate` date DEFAULT NULL,
  `t_from` varchar(100) DEFAULT NULL,
  `t_to` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`bookid`),
  KEY `userId` (`userId`),
  CONSTRAINT `book_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookdetail`
--

DROP TABLE IF EXISTS `bookdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bookdetail` (
  `detailid` int(11) NOT NULL AUTO_INCREMENT,
  `bookid` int(11) DEFAULT NULL,
  `p_name` varchar(200) DEFAULT NULL,
  `p_age` varchar(10) DEFAULT NULL,
  `p_gender` varchar(10) DEFAULT NULL,
  `p_idcard` varchar(100) DEFAULT NULL,
  `p_idno` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`detailid`),
  KEY `bookid` (`bookid`),
  CONSTRAINT `bookdetail_ibfk_1` FOREIGN KEY (`bookid`) REFERENCES `book` (`bookid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookdetail`
--

LOCK TABLES `bookdetail` WRITE;
/*!40000 ALTER TABLE `bookdetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `bookdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stcode`
--

DROP TABLE IF EXISTS `stcode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stcode` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `st` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`no`),
  UNIQUE KEY `st` (`st`)
) ENGINE=InnoDB AUTO_INCREMENT=1437 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stcode`
--

LOCK TABLES `stcode` WRITE;
/*!40000 ALTER TABLE `stcode` DISABLE KEYS */;
INSERT INTO `stcode` VALUES (723,'ABU ROAD-ABR\r'),(724,'adilabad-adb\r'),(725,'ADON-AD\r'),(726,'ADRA-ADRA\r'),(727,'AGARTALA-AGTL\r'),(729,'AGRA CANTT.-AGC\r'),(728,'AGRA FORT-AF\r'),(730,'AHMADNAGAR-ANG\r'),(731,'AHMEDABAD-ADI\r'),(732,'AJMER-AII\r'),(733,'Ajni-AJNI\r'),(734,'AKOLA-AK\r'),(738,'ALAPPUZHA-ALLP\r'),(735,'ALIGARH-ALJN\r'),(736,'ALIPURDUAR Jn.-APDJ\r'),(737,'ALLAHABAD-ALD\r'),(739,'ALNAWAR Jn.-LWR\r'),(740,'ALUVA-AWY\r'),(741,'ALWAR-AWR\r'),(742,'AMALNER-AN\r'),(743,'AMB ANDAVRA-AADR\r'),(744,'AMBALA CANTT.-UMB\r'),(745,'AMBIKAPUR-abkp\r'),(746,'AMLa-Amla\r'),(747,'AMRITSAR-ASR\r'),(748,'ANAKAPALLE-AKP\r'),(751,'ANAND VIHar Terminus-ANVT\r'),(749,'ANAND-ANND\r'),(750,'ANAND-NAGAR ANDN\r'),(752,'ANANTAPUR-ATP\r'),(753,'ANGUL-ANGL\r'),(754,'ANNAVARAM-ANV\r'),(755,'ANUPPUR-apr\r'),(756,'ARA-ARA\r'),(757,'ARAKKONAM-AJJ\r'),(758,'ARSIKERE-ASK\r'),(759,'ASANSOL-ASN\r'),(760,'AUNRIHAR-ARJ\r'),(761,'AURANGABAD-AWB\r'),(762,'AYODHYA-AY\r'),(763,'AZAMGARH-AMH\r'),(764,'AZIMGANJ Jn.-AZ\r'),(765,'BADARPUR-BPB\r'),(766,'BADNERA Jn.-BD\r'),(767,'BAGALKOT-Bgk\r'),(848,'baghbahar-bgbr\r'),(768,'BAGHPAT ROAD-BPM\r'),(769,'BAIDYANATHDHAM-BDME\r'),(770,'BAKTHIYARPUR-bKP\r'),(772,'BALAGHAT-BTC\r'),(773,'BALANGIR-blgr\r'),(771,'BALASORE-BLS\r'),(776,'BALHARSHAH-BPQ\r'),(777,'BALLIA-BUI\r'),(774,'baluGAON-BAlU\r'),(775,'BALURGHAT-BLGT\r'),(778,'BANARHAT-BNQ\r'),(779,'BANDA Jn.-BNDA\r'),(780,'BANDEL Jn.-BDC\r'),(781,'BANDIKUI Jn.-BKI\r'),(782,'BANdra (T)-Bdts\r'),(784,'BANGALORE CANTT.-BNC\r'),(783,'BANGALORE CITY-SBC\r'),(785,'BANGARAPET-BWt\r'),(786,'bangriposi-bgy\r'),(787,'BANKURA-BQA\r'),(788,'BANMANKHI-BNKI\r'),(789,'BAPATLA-BPP\r'),(790,'BARABANKI Jn.-BBK\r'),(791,'BARaBIL-BBN\r'),(792,'BARAN-BAZ\r'),(847,'Barapa lli-brpl\r'),(795,'BARAPALLI-brPL\r'),(793,'BARAUNI Jn.-BJU\r'),(794,'BARAUT-BTU\r'),(796,'BARDDHAMAN Jn.-BWN\r'),(797,'BAREILLY-BE\r'),(798,'BARGARH ROAD-BRGA\r'),(799,'BARHNI-BNY\r'),(800,'BARKAKANA-BRKA\r'),(801,'BARMER-BME\r'),(802,'BAROG-BOF\r'),(803,'BARSOI-BOE\r'),(804,'BARWADIH-BRWD\r'),(805,'BASAR-BSX\r'),(806,'BASTI-BST\r'),(807,'BAThINDA Jn.-BTI\r'),(808,'BAYANA-BXN\r'),(809,'BEAS-BEAS\r'),(810,'BEAWAR-BER\r'),(811,'BELAPUR-BAP\r'),(812,'BELGAUM-BGM\r'),(813,'BELLARY Jn.-BAY\r'),(814,'BETTIAH-BTH\r'),(815,'BETUL-BZU\r'),(816,'BHADOHI-BOY\r'),(817,'BHADRAK-BHC\r'),(818,'BHAGALPUR-BGP\r'),(819,'Bhagat Ki Kothi-BGKI\r'),(820,'BHARATPUR-BTE\r'),(821,'BHARUCH-BH\r'),(822,'BHATAPARA-BYT\r'),(823,'BHATKAL-BTJL\r'),(824,'BHATNI-BTT\r'),(825,'BHAVNAGAR (t)-BVC\r'),(826,'BHAWANIPATNA-BWPI\r'),(827,'BHILWARA-BHL\r'),(828,'BHIMAVARAM Jn.-BVRM\r'),(829,'BHIMAVARAM TOWN-BVRT\r'),(830,'BHIND-BIX\r'),(831,'BHIWANI-BNW\r'),(832,'BHOPAL-BPL\r'),(833,'BHUBANESWAR-BBS\r'),(834,'BHUJ-BHUJ\r'),(835,'BHUSAVAL-BSL\r'),(836,'BIJAPUR-BJP\r'),(837,'BIJNOR-BJO\r'),(838,'BIKANER-BKN\r'),(839,'BILASPUR jn.-BSP\r'),(840,'BINA-BINA\r'),(841,'BINNAGURI-BNV\r'),(842,'BIRUR-RRB\r'),(843,'BITRAGUNTA-BTTR\r'),(844,'biyavara rajgarh-brrg\r'),(845,'BOBBILI-VBL\r'),(846,'BOINDA b-ONA\r'),(849,'BOKARO STEEL CITY-BKSC\r'),(850,'bOLPUR SHANTINIKETAn-bhp\r'),(851,'BORIVALI-BVI\r'),(852,'BOTAD-BTD\r'),(853,'BUDAUN-BEM\r'),(854,'bundi-budi\r'),(855,'BURHANPUR-BAU\r'),(856,'BURHWAL-BUW\r'),(857,'BUXAR-BXR\r'),(858,'CANACONA-CNO\r'),(859,'CHAKIA-CAA\r'),(860,'CHAKKI BANK-CHKB\r'),(861,'CHAKRADHARPUR-CKP\r'),(862,'CHALISGAON-CSN\r'),(863,'CHAMPA-CPH\r'),(864,'CHANDAUSI-CH\r'),(865,'chanderiya-cna\r'),(866,'CHANDIGARH-CDG\r'),(867,'CHANDIL-CNI\r'),(868,'CHANDRAPUR-CD\r'),(869,'CHANDRAPURA-CRP\r'),(870,'CHAPARMUKH-CPK\r'),(871,'cHATRAPUR-CAP\r'),(872,'CHENGALPATTU Jn.-CGL\r'),(873,'CHENGANNUR-CNGR\r'),(874,'CHENNAI CENTRAL-MAS\r'),(875,'CHENNAI EGMORE-MS\r'),(876,'CHHAPRA-CPR\r'),(877,'CHHINDWARA-cwa\r'),(878,'CHIDAMBARAM-CDM\r'),(879,'CHIKJAJUR-JRU\r'),(880,'CHIPLUN-CHI\r'),(881,'CHIRALA-CLX\r'),(882,'CHITRAKOOTDHAM KARVI-CKTD\r'),(883,'CHITTARANJAN-CRJ\r'),(884,'CHITTAURGARH-COR\r'),(885,'CHITTOOR-CTO\r'),(886,'CHOPAN-CPU\r'),(887,'CHUNAR-CAR\r'),(888,'CHURU-CUR\r'),(889,'COIMBATORE Jn.-CBE\r'),(890,'coonoor-ONR\r'),(891,'CUDDALORE PORT-CUPJ\r'),(892,'CUDDAPAH-HX\r'),(893,'CUTTACK-CTC\r'),(894,'DADAR-DR\r'),(895,'DAHANU ROAD-DRD\r'),(896,'DAHOD-DHD\r'),(897,'DALGAON-DLO\r'),(899,'DALLIRAJHARA-DRZ\r'),(898,'DALTONGANJ-DTO\r'),(900,'DAMOH-DMO\r'),(901,'DANAPUR-DNR\r'),(902,'DARBHANGA-DBG\r'),(903,'DAUND-DD\r'),(904,'DAVANGERE-DVG\r'),(905,'DEHRADUN-DDN\r'),(906,'DEHRI-ON-SONE-DOS\r'),(909,'DELHI CANTT.-DEC\r'),(910,'DELHI SARAI ROHILLA-DEE\r'),(911,'DELHI SHAHDARA-DSA\r'),(907,'DELHI-DLI\r'),(912,'DEORIASADAR-DEOS\r'),(913,'DEVLALI-DVL\r'),(914,'DHAMANGAON-DMN\r'),(915,'DHANBAD-DHN\r'),(916,'DHARMABAD-DAB\r'),(917,'dharmanagar-dmr\r'),(918,'DHARMAPURI-DPJ\r'),(919,'DHARMAVARAM-DMM\r'),(920,'DHARWAD-DWR\r'),(921,'DHASA-DAS\r'),(922,'DHAULPUR-DHO\r'),(923,'Dhenuanal-dnul\r'),(924,'DHOLA-DLJ\r'),(925,'DHONE-DHNE\r'),(926,'DHRANGADHRA-DHG\r'),(927,'dhubri-dbb\r'),(928,'DHURI-DUI\r'),(930,'DIBRUGARH TOWN-DBRT\r'),(929,'DIBRUGARH-DBRG\r'),(931,'digha-dgha\r'),(932,'DILDARNAGAR-DLN\r'),(933,'DIMAPUR-DMV\r'),(934,'DINDIGUL Jn.-DG\r'),(935,'DONGARGARH-DGG\r'),(936,'DORNAKAL-DKJ\r'),(937,'DUNGARPUR-DNRP\r'),(938,'DURG-DURG\r'),(939,'DURGAPUR-DGR\r'),(940,'duvvada-dvd\r'),(941,'DWARKA-DWK\r'),(942,'ELURU-EE\r'),(943,'ERNAKULAM Jn.-ERS\r'),(944,'ERNAKULAM TOWN-ERN\r'),(945,'ERODE-ED\r'),(946,'ETAWAH-ETW\r'),(947,'FAIZABAD-FD\r'),(948,'FARIDABAD-FDB\r'),(949,'FARRUKHABAD-FBD\r'),(950,'FATEhABAD CHAND-FTD\r'),(951,'FATEHPUR-FTP\r'),(952,'FATUHA-FUT\r'),(953,'FAZILKA -FKA\r'),(954,'FIROZABAD -FZD\r'),(956,'FIROZPUR CANTT. -FZR\r'),(955,'FIROZPUR CITY -FZP\r'),(957,'FORBESGANJ	-FBG\r'),(958,'FURKATING -FKG\r'),(959,'GADAG -GDG\r'),(960,'GAJRAULA -GJL\r'),(961,'GANDHIDHAM -GIM\r'),(962,'GANDHINAGAR -GADJ\r'),(963,'GANGAPUR CITY -GGC\r'),(964,'GARWA ROAD -GHD\r'),(965,'GAYA -GAYA\r'),(966,'GEVRA ROAD -GAD\r'),(967,'GHATSILA -GTS\r'),(968,'GHAZIABAD -GZB\r'),(969,'GOALPARA TOWN -GLPT\r'),(970,'GODHRA -GDA\r'),(971,'GOLA GOKARANNATH -GK\r'),(972,'GONDA -GD\r'),(973,'GONDIA -G\r'),(974,'GOOTY-GY\r'),(975,'GORAKHPUR-GKP\r'),(976,'GOSsAINGAon HAT -GOGH\r'),(977,'GUDIVADA -GDV\r'),(978,'GUDUR -GDR\r'),(979,'GULBARGA -GR\r'),(980,'GUNA -GUNA\r'),(981,'GUNTAKAL-GTL\r'),(982,'GUNTUR -GNT\r'),(983,'gurgaon-ggn\r'),(984,'GUruvay UR -Guv\r'),(985,'GUWAHATI-GHY\r'),(986,'GWALIOR -GWL\r'),(987,'GYANPUR ROAD -GYN\r'),(988,'HABIBGANJ -HBJ\r'),(989,'HAJIPUR -HJP\r'),(990,'HALDIA -HLZ\r'),(991,'HALDIBARI-HDB\r'),(992,'HAMILTONGANJ-HOJ\r'),(993,'HANUMANGARH-HMH\r'),(994,'HAPA-HAPA\r'),(995,'HAPUR-HPU\r'),(996,'HARDA-HD\r'),(997,'HARIDWAR-HW\r'),(998,'HARIHAR -HRR\r'),(999,'HARPALPUR-HPP\r'),(1000,'HASIMARA-HSA\r'),(1001,'HATIA-HTE\r'),(1002,'HAZUR SAHIB NANDED-NED\r'),(1003,'HILSA-HIL\r'),(1004,'HIMMAT NAGAR-HMT\r'),(1005,'HINDUPUR-HUP\r'),(1006,'HINGOLI-HNL\r'),(1007,'HISAR-HSR\r'),(1008,'HOSHANGABAD-HBD\r'),(1009,'HOSPET-HPT\r'),(1010,'HOSUR-HSRA\r'),(1011,'HOWBAdH-HBG\r'),(1012,'HOWRAH-HWH\r'),(1013,'HUBLI -UBL\r'),(1014,'HYDERABAD-HYB\r'),(1015,'IGATPURI	-IGP\r'),(1016,'INDARA -IAA\r'),(1017,'INDORE -INDB\r'),(1018,'ISLAMPUR -IPR\r'),(1019,'ITARSI -ET\r'),(1020,'JABALPUR -JBP\r'),(1021,'Jagdalpur	-jdb\r'),(1022,'JAIPUR -JP\r'),(1024,'JAISALMER-JSM\r'),(1025,'JAJPUR KEONJHAR ROAD-JJKR\r'),(1026,'JAKHAL-JHL\r'),(1027,'JALAMB-JM\r'),(1028,'JALANDHAR CANTT. -JRC\r'),(1029,'JALANDHAR CITY-JUC\r'),(1030,'JALGAON-JL\r'),(1031,'JALNA-J\r'),(1032,'JALPAIGURI-JPG\r'),(1033,'JAMALPUR-JMP\r'),(1034,'JAMMU TAWI-JAT\r'),(1035,'JAMNAGAR-JAM\r'),(1036,'JANGHAI-JNH\r'),(1037,'JASIDIH-JSME\r'),(1038,'JAUNPUR Jn.-JNU\r'),(1039,'JAYNAGAR-JYG\r'),(1023,'Jaypur-jyp\r'),(1040,'JETALSAR-JLR\r'),(1041,'JHAJHA-JAJ\r'),(1042,'JHANSI-JHS\r'),(1043,'JHARGRAM-JGM\r'),(1044,'JHARSUGUDA -JSG\r'),(1045,'JIND-JIND\r'),(1046,'JODHPUR-JU\r'),(1047,'jogbani-JBN\r'),(1048,'JOLARPETTAI-JTJ\r'),(1049,'JORHAT-JT\r'),(1050,'JUNAGARH Jn.-JND\r'),(1051,'KACHEGUDA-KCG\r'),(1052,'KAKINADA PORT-COA\r'),(1053,'KALCHINI-KCF\r'),(1054,'KALKA-KLK\r'),(1055,'KALOL-KLL\r'),(1056,'KALYAN -KYN\r'),(1057,'KAMAKHYA-KYQ\r'),(1058,'KANCHIPURAM-CJ\r'),(1059,'KANDHLA-KQL\r'),(1060,'KANNIYAKUMARI-CAPE\r'),(1061,'KANNUR-CAN\r'),(1063,'KANPUR ANWARGANJ-CPA\r'),(1062,'KANPUR CENTRAL-CNB\r'),(1064,'KAPTANGANJ-CPJ\r'),(1065,'Karaikal-kik\r'),(1066,'KARAIKKUDI Jn.-KKDI\r'),(1067,'KARimganj-kxj\r'),(1068,'KARNAL-KUN\r'),(1069,'KARUR-KRR\r'),(1070,'KARWAR-KAWR\r'),(1071,'KASARaGOD-KGQ\r'),(1072,'KASGANJ-KSJ\r'),(1073,'KATHGODAM-KGM\r'),(1074,'KATIHAR-KIR\r'),(1076,'KATNI MURWARA-KMZ\r'),(1075,'KATNI-KTE\r'),(1077,'KATPADI	-KPD\r'),(1078,'KATWA-KWAE\r'),(1079,'KAZIPET-KZJ\r'),(1081,'KENDUJHARGARH-KDJR\r'),(1080,'kESINGA-ksng\r'),(1082,'KHAGARIA-KGG\r'),(1083,'KHALILABAD-KLD\r'),(1084,'KHAMMAM-KMT\r'),(1085,'KHANDWA-KNW\r'),(1086,'KHARAGPUR-KGP\r'),(1087,'KHEKRA-KEX\r'),(1088,'KHURDA ROAD-KUR\r'),(1089,'KHURJA-KRJ\r'),(1090,'KISHANGANJ-KNE\r'),(1091,'KISHANGARH-KSG\r'),(1092,'KIUL-KIUL\r'),(1093,'KOCHUVELI-KCVL\r'),(1094,'KODAIKANAL ROAD-KQN\r'),(1095,'kolkata-koaa\r'),(1096,'kollam-QLN\r'),(1097,'KOPERGAON-KPG\r'),(1098,'KORAPUT-KRPU\r'),(1099,'KORBA-KRBA\r'),(1102,'KOT KAPURA-KKP\r'),(1100,'KOTA-KOTA\r'),(1101,'KOTDWARA-KTW\r'),(1103,'KOTTAYAM-KTYM\r'),(1104,'KOZHIKODE-CLT\r'),(1105,'KRISHNANAGAR CITY-KNJ\r'),(1106,'KRISHNARAJAPURAM-KJM\r'),(1107,'kumarghat-kugt\r'),(1108,'KUMBAKONAM-KMU\r'),(1109,'KUNDAPURA-KUDA\r'),(1110,'KURDUWADI-KWV\r'),(1111,'KURNOOL TOWN-KRNT\r'),(1112,'KURUKSHETRA-KKDE\r'),(1113,'LAKHIMPUR-LMP\r'),(1114,'LAKSAR-LRJ\r'),(1115,'LALGARH-LGH\r'),(1116,'LALGOLA-LGL\r'),(1117,'LALITPUR-LAR\r'),(1118,'LALKUAN JN.-LKU\r'),(1119,'LATUR-LUR\r'),(1120,'LEDO -LEDO\r'),(1121,'LOHARU-LHU\r'),(1122,'LOKMANYA TILAK (T) -LTT\r'),(1123,'LONAVLA -LNL\r'),(1124,'LONDA-LD\r'),(1125,'LOWER HALFLONG -LFG\r'),(1126,'LUCKNOW-LJN\r'),(1127,'LUCKNOW-LKO\r'),(1128,'LUDHIANA-LDH\r'),(1129,'LUMDING-LMG\r'),(1130,'LUNI-LUNI\r'),(1131,'MACHILIPATNAM-MTM\r'),(1132,'MADARIHAT-MDT\r'),(1133,'MADDUR-MAD\r'),(1134,'MADGAON (GOA)-MAO\r'),(1135,'MADHUBANI-MBI\r'),(1136,'MADHUPUR-MDP\r'),(1137,'MADURAI Jn.-MDU\r'),(1138,'MAHASAMUND-msmD\r'),(1139,'MAHBUBNAGAR-MBNR\r'),(1142,'MAHESANA-MSH\r'),(1143,'MAHOBA-MBA\r'),(1140,'MAHuva-mhv\r'),(1144,'MAILANI-MLN\r'),(1145,'MAKSI-MKC\r'),(1146,'MALDA TOWN-MLDT\r'),(1147,'MANAMADURAI-MNM\r'),(1148,'MANDUADIH-MUV\r'),(1149,'MANGALORE CENTRAL-MAQ\r'),(1150,'MANGALORE JN.-MAJN\r'),(1151,'MANIKPUR-MKP\r'),(1152,'MANKAPUR-MUR\r'),(1153,'MANMAD-MMR\r'),(1154,'Mannargudi-MQ\r'),(1155,'MANSI-MNE\r'),(1156,'manu-manu\r'),(1157,'MARIANI-MXN\r'),(1158,'MARWAR Jn.-MJ\r'),(1159,'MATHURA-MTJ\r'),(1160,'MAU-MAU\r'),(1161,'MAYILADUTURAI Jn.-MV\r'),(1162,'MEERUT CITY-MTC\r'),(1163,'MERTA ROAD-MTD\r'),(1164,'METTUPALAYAM-MTP\r'),(1165,'MIDNAPore-MDN\r'),(1166,'MIRAJ-MRJ\r'),(1167,'MIRYALAGUDA-MRGA\r'),(1168,'MIRZAPUR-MZP\r'),(1169,'MOGA-MOF\r'),(1170,'MOKAMA-mka\r'),(1261,'MORADABAD-MB\r'),(1262,'MOTIHARI-MKI\r'),(1263,'MUDKHED-MUE\r'),(1264,'MUGHALSARAI-MGS\r'),(1265,'MUMBAI CENTRAL-BCT\r'),(1266,'MUMBAI CST-CSTM\r'),(1267,'Muniguda	-mngd\r'),(1141,'MUNIGUDA-mngd\r'),(1268,'MURI-MURI\r'),(1269,'MURKeONGSELEK-MZS\r'),(1270,'MURTAJAPUR-MZR\r'),(1271,'MUZAFFAR NAGAR-MOZ\r'),(1272,'MUZAFFARPUR-MFP\r'),(1273,'MYSORE-MYS\r'),(1274,'nabadwipdham-ndae\r'),(1275,'NADIAD-ND\r'),(1276,'NADIKUDi-NDKD\r'),(1277,'Nagappatt inam-Ngt\r'),(1278,'nagarkata-nkb\r'),(1279,'NAGARSOL-NSL\r'),(1280,'NAGBHIR-NAB\r'),(1281,'NAGDA-NAD\r'),(1282,'NAGERCOIL Jn.-NCJ\r'),(1283,'NAGORE-NCR\r'),(1284,'NAGPUR-NGP\r'),(1285,'nagrakata-nkb\r'),(1286,'NAINPUR-NIR\r'),(1287,'NAJIBABAD-NBD\r'),(1288,'NALANDA-NLD\r'),(1289,'NALGONDA-NLDA\r'),(1290,'Namakkal-nmkl\r'),(1291,'NANDALUR-NRE\r'),(1292,'NANDGAON-NGN\r'),(1293,'NANDURBAR-NDB\r'),(1294,'NANDYAL-NDL\r'),(1295,'NANGAL DAM-NLDM\r'),(1297,'NARASAPUR-NS\r'),(1296,'NARKATIAGANJ-NKE\r'),(1298,'NARSINGPUR-NU\r'),(1299,'NARWANA-NRW\r'),(1300,'NASIK ROAD-NK\r'),(1301,'NAUGARH-NUH\r'),(1302,'NELLORE-NLR\r'),(1303,'neta jI subhash chandra bose gomoh-GMO\r'),(1304,'NEW ALIPURDUAR-NOQ\r'),(1305,'NEW BONGAIGAON-NBQ\r'),(1306,'NEW COOCHBEHAR-NCB\r'),(908,'NEW DELHI-NDLS\r'),(1308,'NEW FARAKKA-NFK\r'),(1309,'NEW JALPAIGURI-NJP\r'),(1311,'NEW TINSUKIA-NTSK\r'),(1310,'NEWMAL Jn.-NMZ\r'),(1312,'NIDADAVOLU-NDD\r'),(1313,'Nidamangalam-NMJ\r'),(1314,'NIDUBROLU-NDO\r'),(1315,'NIMACH-NMH\r'),(1316,'NIZAMABAD-NZB\r'),(1317,'NIZAMUDDIN-NZM\r'),(1318,'NOLI-NOLI\r'),(1319,'NORTH LAKHIMPUR-NLP\r'),(1320,'odlabari-odb\r'),(1321,'OKHA-OKHA\r'),(1322,'ONGOLE-OGL\r'),(1323,'ORAI-ORAI\r'),(1324,'PACHORA-PC\r'),(1329,'PALakkad TOWN-PGTN\r'),(1328,'PALakkad-PGT\r'),(1325,'Palani-PLNI\r'),(1326,'PALANPUR-PNU\r'),(1327,'PALASA-PSA\r'),(1330,'PALIAKALAN-PLK\r'),(1331,'PANDHARAPUR-PVR\r'),(1332,'PANIPAT-PNP\r'),(1335,'PANVEL-PNVL\r'),(1333,'pARADEEP-PRDP\r'),(1334,'PARASNATH-PNME\r'),(1336,'PARBHANI-PBN\r'),(1337,'pARVATIPURAM TOWN-PVPT\r'),(1338,'PATHANKOT-PTK\r'),(1339,'PATIALA-PTA\r'),(1341,'PATNA SAHIB-PNC\r'),(1340,'PATNA-PNBE\r'),(1342,'PHALODI-PLC\r'),(1343,'PHAPHAMAU-PFM\r'),(1344,'PHULERA-FL\r'),(1345,'PILIBHIT-PBE\r'),(1346,'PIPARIYA-PPI\r'),(1347,'PODANUR-PTJ\r'),(1348,'PORBANDAR-PBR\r'),(1349,'PRATAPGARH-PBH\r'),(1350,'Puducherry-pdy\r'),(1171,'PUDUKOTTAI-PDKT\r'),(1172,'PULGAON-PLO\r'),(1173,'PUNE Jn.-PUNE\r'),(1174,'PURANPUR-PP\r'),(1175,'PURI-PURI\r'),(1176,'PURNA-PAU\r'),(1177,'PURNIA-PRNA\r'),(1178,'PURULIA-PRR\r'),(1179,'RADHIKAPUR-RDP\r'),(1180,'RAE BARELI-RBL\r'),(1181,'RAICHUR-RC\r'),(1182,'RAIGARH-RIG\r'),(1183,'RAIPUR-R\r'),(1185,'RAJA-KA-SAHASPUR-RJK\r'),(1186,'RAJA-KI-MANDI-RKM\r'),(1184,'RAJAHMUNDRY-RJY\r'),(1187,'RAJENDRANAGAR-RJQ\r'),(1188,'RAJGIR-RGD\r'),(1189,'RAJKOT-RJT\r'),(1190,'RAJNANDGAON-RJN\r'),(1191,'RAJPURA-RPJ\r'),(1192,'RAMAGUNDAM-RDM\r'),(1193,'RAMANATHAPURAM-RMD\r'),(1194,'RAMESWARAM-RMM\r'),(1195,'RAMNAGAR-RMR\r'),(1196,'RAMPUR JN.-RMU\r'),(1197,'RAMPURHAT-RPH\r'),(1198,'RANAGHAT-RHA\r'),(1199,'RANCHI-RNC\r'),(1200,'RANGAPARA NORTH-RPAN\r'),(1201,'RANGIYA-RNY\r'),(1202,'RANINAGAR-ROJ\r'),(1203,'RATANGARH-RTGH\r'),(1204,'RATLAM-RTM\r'),(1205,'RATNAGIRI-RN\r'),(1206,'RAWATGANJ-RJ\r'),(1207,'RAXAUL-RXL\r'),(1208,'RAYAGADA-RGDA\r'),(1209,'RENIGUNTA-RU\r'),(1210,'REWA-REWA\r'),(1211,'REWARI-RE\r'),(1212,'RINGUS-RGS\r'),(1213,'ROHTAK-ROK\r'),(1214,'ROORKEE-RK\r'),(1215,'ROURKELA-ROU\r'),(1216,'SADULPUR-SDLP\r'),(1217,'SAGAR jambagaru-SRF\r'),(1218,'SAGAULI	-SGL\r'),(1219,'SAGOUR -SGO\r'),(1220,'SAHARANPUR -SRE\r'),(1221,'SAHARSA-SHC\r'),(1222,'SAHIBGANJ-SBG\r'),(1223,'SAI NAGAR SHIRDI-SNSI\r'),(1224,'SALEM-SA\r'),(1225,'SALEMPUR-SRU\r'),(1226,'SAMALKOT-SLO\r'),(1227,'SAMASTIPUR-SPJ\r'),(1229,'SAMBALPUR CITY-SBPY\r'),(1228,'SAMBALPUR-SBP\r'),(1230,'SAMDARI-SMR\r'),(1231,'SAMUKTALA road-AMTA\r'),(1232,'SANGLI-SLI\r'),(1233,'santragachi-src\r'),(1234,'SARNATH-SRNT\r'),(1235,'SATARA-STR\r'),(1236,'SATNA-STA\r'),(1237,'SATTENAPALLE-SAP\r'),(1238,'SAWAIMADHOPUR-SWM\r'),(1239,'SAWANTWADI ROAD-SWV\r'),(1240,'SEALDAH-SDAH\r'),(1241,'SECUNDERABAD-SC\r'),(1242,'SENGOTTAI-SCT\r'),(1243,'SENSOA-scf\r'),(1244,'SEWAGRAM-SEGM\r'),(1245,'SHAHABAD-SDB\r'),(1246,'SHAHGANJ-SHG\r'),(1247,'SHAHJAHANPUR-SPN\r'),(1248,'SHAHPUR PATOREE-SPP\r'),(1249,'SHAKTINAGAR-SKTN\r'),(1250,'SHALIMAR-SHM\r'),(1251,'SHAMGARH-SGZ\r'),(1252,'SHAMLI-SMqL\r'),(1253,'SHIKOHABAD-SKB\r'),(1254,'SHIMLA-SML\r'),(1255,'SHIMOGA TOWN-SMET\r'),(1256,'SHIVPURI-SVPI\r'),(1257,'SHORANUR JN.-SRR\r'),(1258,'SHRI MAHABIRJI-SMBJ\r'),(1259,'SIHOR gujarat-SOJN\r'),(1260,'SIKAR-SIKR\r'),(1351,'SILCHAR-SCL\r'),(1352,'SILGHAT-SHTT\r'),(1354,'SILIGURI TOWN-SGuT\r'),(1353,'SILIGURI-SGUJ\r'),(1355,'SIMALuGURI-SLGR\r'),(1356,'SINGRAULI-SGRL\r'),(1357,'SIRPUR KAGAZNAGAR-SKZR\r'),(1358,'SIRSA-SSA\r'),(1359,'SISWA BAZAR -SBZ\r'),(1360,'SITAMARHI -SMI\r'),(1362,'SITAPUR CANTT.-SCC\r'),(1361,'SITAPUR city-SPC\r'),(1363,'SIURI-SURI\r'),(1364,'SIWAN-SV\r'),(1365,'SOJAT ROAD-SOD\r'),(1366,'SOLAN-SOL\r'),(1367,'SOLAPUR-SUR\r'),(1368,'SOMNATH-SMNH\r'),(1369,'SOMPETA-SPT\r'),(1370,'SONPUR-SEE\r'),(1372,'SRI DUNGARgARH-SDgH\r'),(1375,'SRI SAThYASAI PRASHANTI NILAYAM-SSPN\r'),(1371,'SRICHHATRAPATI SHAHU MAHARAJ (T)-CSMT\r'),(1373,'SRIGANGA NAGAR-SGNr\r'),(1374,'SRIKAKULAM ROAD-CHE\r'),(1376,'Sujangarh-sujh\r'),(1377,'SULTANPUR-SLN\r'),(1378,'SURAT-ST\r'),(1379,'SURATGARH-SOG\r'),(1380,'SURATHKAL-Sl\r'),(1381,'SURENDRA NAGAR-SUNR\r'),(1382,'TADEPALLIGUDEM-TDD\r'),(1383,'TAMBARAM-TBM\r'),(1384,'TATANAGAR-TATA\r'),(1386,'TENALI-TEL\r'),(1387,'TENKASI-TS\r'),(1388,'TEZPUR-TZTB\r'),(1385,'Thalassery-TLY\r'),(1389,'THANJAVUR-TJ\r'),(1399,'Thiruvananthapuram-TVC\r'),(1390,'THIRUVARUR.-TVR\r'),(1398,'Thrisur-TCR\r'),(1391,'TIRUchchirappalli Jn.-TPJ\r'),(1392,'TIRUCHENDUR-tcn\r'),(1393,'TIRUNELVELI-TEN\r'),(1394,'TIRUPATI-TPTY\r'),(1395,'tiruppur-TUP\r'),(1396,'TIRUR-TIR\r'),(1400,'Tiruvannamalai-tnm\r'),(1397,'TITLAGARH-TIG\r'),(1401,'TUMSAR ROAD-TMR\r'),(1402,'TUNDLA-TDL\r'),(1403,'TUNI-TUNI\r'),(1404,'TUTICORIN-TN\r'),(1405,'UDAIPUR CITY-UDZ\r'),(1406,'UDHAMPUR-UHP\r'),(1407,'UDHNA-UDN\r'),(1408,'UDUPI-UD\r'),(1409,'UJJAIN-UJN\r'),(1410,'UNA-UNA\r'),(1411,'UNCHAHAR-UCR\r'),(1412,'UNNAO-ON\r'),(1413,'VADAKARA-BDJ\r'),(1414,'VADODARA-BRC\r'),(1415,'VALSAD-BL\r'),(1416,'VANCHI MANIYACHCHI Jn.-MEJ\r'),(1417,'VARANASI-BSB\r'),(1418,'VARKALA-VAK\r'),(1419,'VASAI ROAD-BSR\r'),(1420,'VASCO-DA-GAMA-VSG\r'),(1421,'Velankanni-VLKN\r'),(1422,'VERAVAL-VRL\r'),(1423,'VIDISHA-BHS\r'),(1424,'VIJAYAWADA-BZA\r'),(1425,'VILLUPURAM Jn.-VM\r'),(1426,'VIRAMGAM-VG\r'),(1427,'VIRUDUNAGAR JN.-vpt\r'),(1428,'VISAKHAPATNAM-VSKP\r'),(1429,'VIZIANAGARAM-VZM\r'),(1430,'VRIDDHACHALAM Jn.-VRI\r'),(1431,'WADI-WADI\r'),(1432,'WANKANER-WKR\r'),(1433,'WARANGAL-WL\r'),(1434,'WARDHA Jn.-WR\r'),(1435,'YESVANTPUR-YPR\r'),(1436,'ZAFARABAD-ZBD');
/*!40000 ALTER TABLE `stcode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) NOT NULL,
  `createDate` date DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `isActive` char(1) DEFAULT 'N',
  `fullname` varchar(200) DEFAULT NULL,
  `mobile` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`userId`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
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

-- Dump completed on 2016-10-11 18:05:40
