CREATE DATABASE  IF NOT EXISTS `tokenmint_global` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `tokenmint_global`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: tokenmint_global
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `chain_provider_info`
--

DROP TABLE IF EXISTS `chain_provider_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chain_provider_info` (
  `provider_id` varchar(20) NOT NULL,
  `chain_id` varchar(20) NOT NULL,
  `chain_name` varchar(20) NOT NULL,
  `websocket_url` longtext,
  `http_url` longtext,
  `api_key` longtext,
  PRIMARY KEY (`provider_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chain_provider_info`
--

LOCK TABLES `chain_provider_info` WRITE;
/*!40000 ALTER TABLE `chain_provider_info` DISABLE KEYS */;
INSERT INTO `chain_provider_info` VALUES ('11155111_001','11155111','Sepolia','wss://eth-sepolia.g.alchemy.com/v2/','https://eth-sepolia.g.alchemy.com/v2/','zE7pNLOYNG_rupkDWOJmVls72NLIQ4Rc');
/*!40000 ALTER TABLE `chain_provider_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config_resource`
--

DROP TABLE IF EXISTS `config_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `config_resource` (
  `GROUP_NAME` varchar(25) NOT NULL,
  `CONFIG_NAME` varchar(50) NOT NULL,
  `PRODUCT_CODE` varchar(25) NOT NULL,
  `VALUE` longtext NOT NULL,
  `TYPE` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`GROUP_NAME`,`CONFIG_NAME`,`PRODUCT_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config_resource`
--

LOCK TABLES `config_resource` WRITE;
/*!40000 ALTER TABLE `config_resource` DISABLE KEYS */;
INSERT INTO `config_resource` VALUES ('TokenMint','REDIS_CONFIG','1001','{\"clusterNodes\":[\"localhost:6379\"],\"hostname\" : \"localhost\",\"port\":\"6379\",\"maxRedirects\":\"3\",\"password\":\"mysecretpassword\"}','CONFIG');
/*!40000 ALTER TABLE `config_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game_config`
--

DROP TABLE IF EXISTS `game_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `game_config` (
  `game_id` varchar(10) NOT NULL,
  `config_type` varchar(10) NOT NULL,
  `config_value` longtext NOT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game_config`
--

LOCK TABLES `game_config` WRITE;
/*!40000 ALTER TABLE `game_config` DISABLE KEYS */;
INSERT INTO `game_config` VALUES ('1001','DATASOURCE','{\"schema\":\"game_info_instance_1001\",\"minimumIdle\":\"1\",\"password\":\"root\",\"maximumPoolSize\":\"3\",\"dbURL\":\"jdbc:mysql://localhost:3306/game_info_instance_1001?allowPublicKeyRetrieval=true&useSSL=false\",\"username\":\"root\"}','vaishnav','2023-08-20 12:09:36'),('1001','ENDPOINT','{\"submitVerifiedAddress\":\"http://localhost:3001/pubg/submitVerifiedAddress\"}','vaishnav','2023-09-15 12:59:00');
/*!40000 ALTER TABLE `game_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game_info`
--

DROP TABLE IF EXISTS `game_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `game_info` (
  `game_id` varchar(10) NOT NULL,
  `game_name` varchar(100) NOT NULL,
  `game_parent_company` varchar(100) DEFAULT NULL,
  `game_logo` longtext,
  PRIMARY KEY (`game_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game_info`
--

LOCK TABLES `game_info` WRITE;
/*!40000 ALTER TABLE `game_info` DISABLE KEYS */;
INSERT INTO `game_info` VALUES ('1001','PUBG: BATTLEGROUNDS','Krafton.Inc','https://token-mint-trade.s3.ap-south-1.amazonaws.com/game-png/1001.png');
/*!40000 ALTER TABLE `game_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-10 10:38:01
CREATE DATABASE  IF NOT EXISTS `game_info_instance_1001` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `game_info_instance_1001`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: game_info_instance_1001
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `eth_contract_info`
--

DROP TABLE IF EXISTS `eth_contract_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eth_contract_info` (
  `eth_contract_id` varchar(25) NOT NULL,
  `chain` varchar(50) NOT NULL,
  `chain_id` varchar(10) DEFAULT NULL,
  `contract_name` varchar(100) DEFAULT NULL,
  `operator_id` varchar(25) DEFAULT NULL,
  `provider_id` varchar(20) NOT NULL,
  `contract_address` varchar(100) NOT NULL,
  `etherscan_contract_url` varchar(200) NOT NULL,
  `contract_abi` longtext,
  `updated_by` varchar(100) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  UNIQUE KEY `eth_contract_id` (`eth_contract_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eth_contract_info`
--

LOCK TABLES `eth_contract_info` WRITE;
/*!40000 ALTER TABLE `eth_contract_info` DISABLE KEYS */;
INSERT INTO `eth_contract_info` VALUES ('1001_50001','Sepolia','11155111','Pubg Inventory Zero One','1001_50001_001','11155111_001','0xA5a8a2d59A7605a430baee0E82aE18037030739d','https://sepolia.etherscan.io/address/0x184a20fad1487b68e951f3094ee44fda9bf929b3','https://token-mint-trade.s3.ap-south-1.amazonaws.com/eth-contract-abi/1001/1001_ABI_GOERLI.json','vaishnav','2023-08-20 12:09:36');
/*!40000 ALTER TABLE `eth_contract_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game_items`
--

DROP TABLE IF EXISTS `game_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `game_items` (
  `item_id` varchar(20) NOT NULL,
  `item_category` varchar(20) NOT NULL,
  `item_title` varchar(50) NOT NULL,
  `item_description` longtext,
  `item_img_url` longtext,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game_items`
--

LOCK TABLES `game_items` WRITE;
/*!40000 ALTER TABLE `game_items` DISABLE KEYS */;
INSERT INTO `game_items` VALUES ('1001_10001','OUTFIT','PGC 2019 Sneakers','\"PGC 2019 Sneakers\" are one of the limited-time cosmetic items that were introduced during the PUBG Global Championship event in 2019. This item is designed to commemorate the event and allow players to show their support or participation in the esports tournament.','https://token-mint-trade.s3.ap-south-1.amazonaws.com/game-item-png/1001/1001_10001.png'),('1001_10002','WEAPON','Silver Plate - Tommy Gun','The \"Silver Plate - Tommy Gun\" is a cosmetic skin for the Tommy Gun weapon in the game PlayerUnknown\'s Battlegrounds (PUBG). The Tommy Gun is a submachine gun that\'s available in the game, and players can find and use it as a weapon during matches.','https://token-mint-trade.s3.ap-south-1.amazonaws.com/game-item-png/1001/1001_10002.png'),('1001_10003','OUTFIT','BLUE SCHOOL UNIFORM SET (FEMALE)','The \"Blue School Uniform Set (Female)\" is a set of clothing items designed to give female characters in the game the appearance of wearing a school uniform with a blue color scheme. The cosmetic items don\'t have any impact on gameplay mechanics but allow players to personalize their characters and express their individual style.','https://token-mint-trade.s3.ap-south-1.amazonaws.com/game-item-png/1001/1001_10003.png'),('1001_10004','WEAPON','The Olive Branch - Pan','\"The Olive Branch - Pan\" is a cosmetic skin for the melee weapon \"Pan\" in the game PlayerUnknown\'s Battlegrounds (PUBG). The pan is a melee weapon that players can find and use in the game to defend themselves against opponents.','https://token-mint-trade.s3.ap-south-1.amazonaws.com/game-item-png/1001/1001_10004.png'),('1001_10005','COMMUTE','PCS3 Tagged Out Parachute','PCS3 Tagged Out Parachute','https://token-mint-trade.s3.ap-south-1.amazonaws.com/game-item-png/1001/1001_10005.png'),('1001_10006','WEAPON','PCS3 Blue Bullion - SLR','\"PCS3 Blue Bullion - SLR\" is a cosmetic skin for the SLR weapon in the game PlayerUnknown\'s Battlegrounds (PUBG). The SLR is a designated marksman rifle that players can use to engage enemies at medium to long distances.','https://token-mint-trade.s3.ap-south-1.amazonaws.com/game-item-png/1001/1001_10006.png'),('1001_10007','GEAR','PCS2 GEAR SET','The PCS2 Gear Set would include a collection of cosmetic items such as clothing, accessories, and possibly weapon skins, all designed with a specific theme related to the PCS2 event. These items are cosmetic in nature and do not affect the gameplay mechanics of the game.','https://token-mint-trade.s3.ap-south-1.amazonaws.com/game-item-png/1001/1001_10007.png');
/*!40000 ALTER TABLE `game_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game_items_on_chain_info`
--

DROP TABLE IF EXISTS `game_items_on_chain_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `game_items_on_chain_info` (
  `item_id` varchar(20) NOT NULL,
  `item_contract_id` varchar(20) NOT NULL,
  `token_issuer_address` varchar(100) NOT NULL,
  `item_creation_date` datetime DEFAULT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game_items_on_chain_info`
--

LOCK TABLES `game_items_on_chain_info` WRITE;
/*!40000 ALTER TABLE `game_items_on_chain_info` DISABLE KEYS */;
INSERT INTO `game_items_on_chain_info` VALUES ('1001_10001','1','0x1783913E8aE51f2883D1be5307b95C7805218815','2023-10-03 12:09:36');
/*!40000 ALTER TABLE `game_items_on_chain_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operator_info`
--

DROP TABLE IF EXISTS `operator_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `operator_info` (
  `operator_id` varchar(25) NOT NULL,
  `operator_name` varchar(100) DEFAULT NULL,
  `operator_address` varchar(100) NOT NULL,
  `eth_contract_id` varchar(25) NOT NULL,
  PRIMARY KEY (`operator_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operator_info`
--

LOCK TABLES `operator_info` WRITE;
/*!40000 ALTER TABLE `operator_info` DISABLE KEYS */;
INSERT INTO `operator_info` VALUES ('1001_50001_001','Operator One Pubg 01','0x1783913E8aE51f2883D1be5307b95C7805218815','1001_50001');
/*!40000 ALTER TABLE `operator_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `txn_2023_10`
--

DROP TABLE IF EXISTS `txn_2023_10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `txn_2023_10` (
  `tokenmint_transaction_id` varchar(40) NOT NULL,
  `transaction_summary_json` longtext NOT NULL,
  PRIMARY KEY (`tokenmint_transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `txn_2023_10`
--

LOCK TABLES `txn_2023_10` WRITE;
/*!40000 ALTER TABLE `txn_2023_10` DISABLE KEYS */;
INSERT INTO `txn_2023_10` VALUES ('20231005183329042','{\"tokenMintTransactionId\":\"20231005183329042\",\"gameId\":\"1001\",\"gameTransactionId\":\"2bd5f684-3bf7-49a0-b781-b2d3d933ad60\",\"otp\":\"446601\",\"tableName\":\"TXN_2023_10\",\"gameInfo\":{\"gameId\":\"1001\",\"gameName\":\"PUBG: BATTLEGROUNDS\",\"gameParentCompany\":\"Krafton.Inc\",\"gameLogo\":\"https://token-mint-trade.s3.ap-south-1.amazonaws.com/game-png/1001.png\"},\"ethContractInfo\":{\"ethContractId\":\"1001_50001\",\"chain\":\"Goerli\",\"chainId\":\"5\",\"contractName\":\"Pubg Inventory Zero One\",\"operatorId\":\"1001_50001_001\",\"contractAddress\":\"0xA5a8a2d59A7605a430baee0E82aE18037030739d\",\"contractAbi\":\"https://token-mint-trade.s3.ap-south-1.amazonaws.com/eth-contract-abi/1001/1001_ABI_GOERLI.json\",\"updatedBy\":\"vaishnav\",\"updatedOn\":\"2023-08-20 12:09:36\"},\"palyerInfo\":{\"playerId\":\"20230801115743465\",\"tokenMintUserId\":\"\",\"playerName\":\"BestHuman_012\",\"playerProfilePic\":null,\"playerEthAccounts\":null,\"gameLogo\":null},\"itemInfoBean\":{\"itemId\":\"1001_10001\",\"itemCategory\":\"OUTFIT\",\"itemTitle\":\"PGC 2019 Sneakers\",\"itemDescription\":\"\\\"PGC 2019 Sneakers\\\" are one of the limited-time cosmetic items that were introduced during the PUBG Global Championship event in 2019. This item is designed to commemorate the event and allow players to show their support or participation in the esports tournament.\",\"itemImgUrl\":\"https://token-mint-trade.s3.ap-south-1.amazonaws.com/game-item-png/1001/1001_10001.png\",\"itemQuantity\":\"2\",\"itemPrice\":null},\"recieptientAddress\":null,\"onChainTxnInfo\":null}'),('20231005184906014','{\"tokenMintTransactionId\":\"20231005184906014\",\"tokenMintTransactionIdHex\":\"0x47dffdf5746fc5\",\"gameId\":\"1001\",\"gameTransactionId\":\"2bd5f684-3bf7-49a0-b781-b2d3d933ad60\",\"otp\":\"446601\",\"tableName\":\"TXN_2023_10\",\"gameInfo\":{\"gameId\":\"1001\",\"gameName\":\"PUBG: BATTLEGROUNDS\",\"gameParentCompany\":\"Krafton.Inc\",\"gameLogo\":\"https://token-mint-trade.s3.ap-south-1.amazonaws.com/game-png/1001.png\"},\"ethContractInfo\":{\"ethContractId\":\"1001_50001\",\"chain\":\"Goerli\",\"chainId\":\"5\",\"contractName\":\"Pubg Inventory Zero One\",\"operatorId\":\"1001_50001_001\",\"contractAddress\":\"0xA5a8a2d59A7605a430baee0E82aE18037030739d\",\"contractAbi\":\"https://token-mint-trade.s3.ap-south-1.amazonaws.com/eth-contract-abi/1001/1001_ABI_GOERLI.json\",\"updatedBy\":\"vaishnav\",\"updatedOn\":\"2023-08-20 12:09:36\"},\"palyerInfo\":{\"playerId\":\"20230801115743465\",\"tokenMintUserId\":\"\",\"playerName\":\"BestHuman_012\",\"playerProfilePic\":null,\"playerEthAccounts\":null,\"gameLogo\":null},\"itemInfoBean\":{\"itemId\":\"1001_10001\",\"itemCategory\":\"OUTFIT\",\"itemTitle\":\"PGC 2019 Sneakers\",\"itemDescription\":\"\\\"PGC 2019 Sneakers\\\" are one of the limited-time cosmetic items that were introduced during the PUBG Global Championship event in 2019. This item is designed to commemorate the event and allow players to show their support or participation in the esports tournament.\",\"itemImgUrl\":\"https://token-mint-trade.s3.ap-south-1.amazonaws.com/game-item-png/1001/1001_10001.png\",\"itemQuantity\":\"2\",\"itemPrice\":null},\"recieptientAddress\":null,\"onChainTxnInfo\":null}'),('20231005185134127','{\"tokenMintTransactionId\":\"20231005185134127\",\"tokenMintTransactionIdHex\":\"0x47dffdf5746fc5\",\"gameId\":\"1001\",\"gameTransactionId\":\"2bd5f684-3bf7-49a0-b781-b2d3d933ad60\",\"otp\":\"446601\",\"tableName\":\"TXN_2023_10\",\"gameInfo\":{\"gameId\":\"1001\",\"gameName\":\"PUBG: BATTLEGROUNDS\",\"gameParentCompany\":\"Krafton.Inc\",\"gameLogo\":\"https://token-mint-trade.s3.ap-south-1.amazonaws.com/game-png/1001.png\"},\"ethContractInfo\":{\"ethContractId\":\"1001_50001\",\"chain\":\"Goerli\",\"chainId\":\"5\",\"contractName\":\"Pubg Inventory Zero One\",\"operatorId\":\"1001_50001_001\",\"contractAddress\":\"0xA5a8a2d59A7605a430baee0E82aE18037030739d\",\"contractAbi\":\"https://token-mint-trade.s3.ap-south-1.amazonaws.com/eth-contract-abi/1001/1001_ABI_GOERLI.json\",\"updatedBy\":\"vaishnav\",\"updatedOn\":\"2023-08-20 12:09:36\"},\"palyerInfo\":{\"playerId\":\"20230801115743465\",\"tokenMintUserId\":\"\",\"playerName\":\"BestHuman_012\",\"playerProfilePic\":null,\"playerEthAccounts\":null,\"gameLogo\":null},\"itemInfoBean\":{\"itemId\":\"1001_10001\",\"itemCategory\":\"OUTFIT\",\"itemTitle\":\"PGC 2019 Sneakers\",\"itemDescription\":\"\\\"PGC 2019 Sneakers\\\" are one of the limited-time cosmetic items that were introduced during the PUBG Global Championship event in 2019. This item is designed to commemorate the event and allow players to show their support or participation in the esports tournament.\",\"itemImgUrl\":\"https://token-mint-trade.s3.ap-south-1.amazonaws.com/game-item-png/1001/1001_10001.png\",\"itemQuantity\":\"2\",\"itemPrice\":null},\"recieptientAddress\":null,\"onChainTxnInfo\":null}'),('20231005185140631','{\"tokenMintTransactionId\":\"20231005185140631\",\"tokenMintTransactionIdHex\":\"0x47dffdf5746fc5\",\"gameId\":\"1001\",\"gameTransactionId\":\"2bd5f684-3bf7-49a0-b781-b2d3d933ad60\",\"otp\":\"446601\",\"tableName\":\"TXN_2023_10\",\"gameInfo\":{\"gameId\":\"1001\",\"gameName\":\"PUBG: BATTLEGROUNDS\",\"gameParentCompany\":\"Krafton.Inc\",\"gameLogo\":\"https://token-mint-trade.s3.ap-south-1.amazonaws.com/game-png/1001.png\"},\"ethContractInfo\":{\"ethContractId\":\"1001_50001\",\"chain\":\"Goerli\",\"chainId\":\"5\",\"contractName\":\"Pubg Inventory Zero One\",\"operatorId\":\"1001_50001_001\",\"contractAddress\":\"0xA5a8a2d59A7605a430baee0E82aE18037030739d\",\"contractAbi\":\"https://token-mint-trade.s3.ap-south-1.amazonaws.com/eth-contract-abi/1001/1001_ABI_GOERLI.json\",\"updatedBy\":\"vaishnav\",\"updatedOn\":\"2023-08-20 12:09:36\"},\"palyerInfo\":{\"playerId\":\"20230801115743465\",\"tokenMintUserId\":\"\",\"playerName\":\"BestHuman_012\",\"playerProfilePic\":null,\"playerEthAccounts\":null,\"gameLogo\":null},\"itemInfoBean\":{\"itemId\":\"1001_10001\",\"itemCategory\":\"OUTFIT\",\"itemTitle\":\"PGC 2019 Sneakers\",\"itemDescription\":\"\\\"PGC 2019 Sneakers\\\" are one of the limited-time cosmetic items that were introduced during the PUBG Global Championship event in 2019. This item is designed to commemorate the event and allow players to show their support or participation in the esports tournament.\",\"itemImgUrl\":\"https://token-mint-trade.s3.ap-south-1.amazonaws.com/game-item-png/1001/1001_10001.png\",\"itemQuantity\":\"2\",\"itemPrice\":null},\"recieptientAddress\":null,\"onChainTxnInfo\":null}'),('20231005185142139','{\"tokenMintTransactionId\":\"20231005185142139\",\"tokenMintTransactionIdHex\":\"0x47dffdf5746fc5\",\"gameId\":\"1001\",\"gameTransactionId\":\"2bd5f684-3bf7-49a0-b781-b2d3d933ad60\",\"otp\":\"446601\",\"tableName\":\"TXN_2023_10\",\"gameInfo\":{\"gameId\":\"1001\",\"gameName\":\"PUBG: BATTLEGROUNDS\",\"gameParentCompany\":\"Krafton.Inc\",\"gameLogo\":\"https://token-mint-trade.s3.ap-south-1.amazonaws.com/game-png/1001.png\"},\"ethContractInfo\":{\"ethContractId\":\"1001_50001\",\"chain\":\"Goerli\",\"chainId\":\"5\",\"contractName\":\"Pubg Inventory Zero One\",\"operatorId\":\"1001_50001_001\",\"contractAddress\":\"0xA5a8a2d59A7605a430baee0E82aE18037030739d\",\"contractAbi\":\"https://token-mint-trade.s3.ap-south-1.amazonaws.com/eth-contract-abi/1001/1001_ABI_GOERLI.json\",\"updatedBy\":\"vaishnav\",\"updatedOn\":\"2023-08-20 12:09:36\"},\"palyerInfo\":{\"playerId\":\"20230801115743465\",\"tokenMintUserId\":\"\",\"playerName\":\"BestHuman_012\",\"playerProfilePic\":null,\"playerEthAccounts\":null,\"gameLogo\":null},\"itemInfoBean\":{\"itemId\":\"1001_10001\",\"itemCategory\":\"OUTFIT\",\"itemTitle\":\"PGC 2019 Sneakers\",\"itemDescription\":\"\\\"PGC 2019 Sneakers\\\" are one of the limited-time cosmetic items that were introduced during the PUBG Global Championship event in 2019. This item is designed to commemorate the event and allow players to show their support or participation in the esports tournament.\",\"itemImgUrl\":\"https://token-mint-trade.s3.ap-south-1.amazonaws.com/game-item-png/1001/1001_10001.png\",\"itemQuantity\":\"2\",\"itemPrice\":null},\"recieptientAddress\":null,\"onChainTxnInfo\":null}'),('20231005185143356','{\"tokenMintTransactionId\":\"20231005185143356\",\"tokenMintTransactionIdHex\":\"0x47dffdf5746fc5\",\"gameId\":\"1001\",\"gameTransactionId\":\"2bd5f684-3bf7-49a0-b781-b2d3d933ad60\",\"otp\":\"446601\",\"tableName\":\"TXN_2023_10\",\"gameInfo\":{\"gameId\":\"1001\",\"gameName\":\"PUBG: BATTLEGROUNDS\",\"gameParentCompany\":\"Krafton.Inc\",\"gameLogo\":\"https://token-mint-trade.s3.ap-south-1.amazonaws.com/game-png/1001.png\"},\"ethContractInfo\":{\"ethContractId\":\"1001_50001\",\"chain\":\"Goerli\",\"chainId\":\"5\",\"contractName\":\"Pubg Inventory Zero One\",\"operatorId\":\"1001_50001_001\",\"contractAddress\":\"0xA5a8a2d59A7605a430baee0E82aE18037030739d\",\"contractAbi\":\"https://token-mint-trade.s3.ap-south-1.amazonaws.com/eth-contract-abi/1001/1001_ABI_GOERLI.json\",\"updatedBy\":\"vaishnav\",\"updatedOn\":\"2023-08-20 12:09:36\"},\"palyerInfo\":{\"playerId\":\"20230801115743465\",\"tokenMintUserId\":\"\",\"playerName\":\"BestHuman_012\",\"playerProfilePic\":null,\"playerEthAccounts\":null,\"gameLogo\":null},\"itemInfoBean\":{\"itemId\":\"1001_10001\",\"itemCategory\":\"OUTFIT\",\"itemTitle\":\"PGC 2019 Sneakers\",\"itemDescription\":\"\\\"PGC 2019 Sneakers\\\" are one of the limited-time cosmetic items that were introduced during the PUBG Global Championship event in 2019. This item is designed to commemorate the event and allow players to show their support or participation in the esports tournament.\",\"itemImgUrl\":\"https://token-mint-trade.s3.ap-south-1.amazonaws.com/game-item-png/1001/1001_10001.png\",\"itemQuantity\":\"2\",\"itemPrice\":null},\"recieptientAddress\":null,\"onChainTxnInfo\":null}'),('20231005185144544','{\"tokenMintTransactionId\":\"20231005185144544\",\"tokenMintTransactionIdHex\":\"0x47dffdf5746fc5\",\"gameId\":\"1001\",\"gameTransactionId\":\"2bd5f684-3bf7-49a0-b781-b2d3d933ad60\",\"otp\":\"446601\",\"tableName\":\"TXN_2023_10\",\"gameInfo\":{\"gameId\":\"1001\",\"gameName\":\"PUBG: BATTLEGROUNDS\",\"gameParentCompany\":\"Krafton.Inc\",\"gameLogo\":\"https://token-mint-trade.s3.ap-south-1.amazonaws.com/game-png/1001.png\"},\"ethContractInfo\":{\"ethContractId\":\"1001_50001\",\"chain\":\"Goerli\",\"chainId\":\"5\",\"contractName\":\"Pubg Inventory Zero One\",\"operatorId\":\"1001_50001_001\",\"contractAddress\":\"0xA5a8a2d59A7605a430baee0E82aE18037030739d\",\"contractAbi\":\"https://token-mint-trade.s3.ap-south-1.amazonaws.com/eth-contract-abi/1001/1001_ABI_GOERLI.json\",\"updatedBy\":\"vaishnav\",\"updatedOn\":\"2023-08-20 12:09:36\"},\"palyerInfo\":{\"playerId\":\"20230801115743465\",\"tokenMintUserId\":\"\",\"playerName\":\"BestHuman_012\",\"playerProfilePic\":null,\"playerEthAccounts\":null,\"gameLogo\":null},\"itemInfoBean\":{\"itemId\":\"1001_10001\",\"itemCategory\":\"OUTFIT\",\"itemTitle\":\"PGC 2019 Sneakers\",\"itemDescription\":\"\\\"PGC 2019 Sneakers\\\" are one of the limited-time cosmetic items that were introduced during the PUBG Global Championship event in 2019. This item is designed to commemorate the event and allow players to show their support or participation in the esports tournament.\",\"itemImgUrl\":\"https://token-mint-trade.s3.ap-south-1.amazonaws.com/game-item-png/1001/1001_10001.png\",\"itemQuantity\":\"2\",\"itemPrice\":null},\"recieptientAddress\":null,\"onChainTxnInfo\":null}'),('20231005185145611','{\"tokenMintTransactionId\":\"20231005185145611\",\"tokenMintTransactionIdHex\":\"0x47dffdf5746fc5\",\"gameId\":\"1001\",\"gameTransactionId\":\"2bd5f684-3bf7-49a0-b781-b2d3d933ad60\",\"otp\":\"446601\",\"tableName\":\"TXN_2023_10\",\"gameInfo\":{\"gameId\":\"1001\",\"gameName\":\"PUBG: BATTLEGROUNDS\",\"gameParentCompany\":\"Krafton.Inc\",\"gameLogo\":\"https://token-mint-trade.s3.ap-south-1.amazonaws.com/game-png/1001.png\"},\"ethContractInfo\":{\"ethContractId\":\"1001_50001\",\"chain\":\"Goerli\",\"chainId\":\"5\",\"contractName\":\"Pubg Inventory Zero One\",\"operatorId\":\"1001_50001_001\",\"contractAddress\":\"0xA5a8a2d59A7605a430baee0E82aE18037030739d\",\"contractAbi\":\"https://token-mint-trade.s3.ap-south-1.amazonaws.com/eth-contract-abi/1001/1001_ABI_GOERLI.json\",\"updatedBy\":\"vaishnav\",\"updatedOn\":\"2023-08-20 12:09:36\"},\"palyerInfo\":{\"playerId\":\"20230801115743465\",\"tokenMintUserId\":\"\",\"playerName\":\"BestHuman_012\",\"playerProfilePic\":null,\"playerEthAccounts\":null,\"gameLogo\":null},\"itemInfoBean\":{\"itemId\":\"1001_10001\",\"itemCategory\":\"OUTFIT\",\"itemTitle\":\"PGC 2019 Sneakers\",\"itemDescription\":\"\\\"PGC 2019 Sneakers\\\" are one of the limited-time cosmetic items that were introduced during the PUBG Global Championship event in 2019. This item is designed to commemorate the event and allow players to show their support or participation in the esports tournament.\",\"itemImgUrl\":\"https://token-mint-trade.s3.ap-south-1.amazonaws.com/game-item-png/1001/1001_10001.png\",\"itemQuantity\":\"2\",\"itemPrice\":null},\"recieptientAddress\":null,\"onChainTxnInfo\":null}'),('20231005185221184','{\"tokenMintTransactionId\":\"20231005185221184\",\"tokenMintTransactionIdHex\":\"0x47dffdf583a240\",\"gameId\":\"1001\",\"gameTransactionId\":\"2bd5f684-3bf7-49a0-b781-b2d3d933ad60\",\"otp\":\"446601\",\"tableName\":\"TXN_2023_10\",\"gameInfo\":{\"gameId\":\"1001\",\"gameName\":\"PUBG: BATTLEGROUNDS\",\"gameParentCompany\":\"Krafton.Inc\",\"gameLogo\":\"https://token-mint-trade.s3.ap-south-1.amazonaws.com/game-png/1001.png\"},\"ethContractInfo\":{\"ethContractId\":\"1001_50001\",\"chain\":\"Goerli\",\"chainId\":\"5\",\"contractName\":\"Pubg Inventory Zero One\",\"operatorId\":\"1001_50001_001\",\"contractAddress\":\"0xA5a8a2d59A7605a430baee0E82aE18037030739d\",\"contractAbi\":\"https://token-mint-trade.s3.ap-south-1.amazonaws.com/eth-contract-abi/1001/1001_ABI_GOERLI.json\",\"updatedBy\":\"vaishnav\",\"updatedOn\":\"2023-08-20 12:09:36\"},\"palyerInfo\":{\"playerId\":\"20230801115743465\",\"tokenMintUserId\":\"\",\"playerName\":\"BestHuman_012\",\"playerProfilePic\":null,\"playerEthAccounts\":null,\"gameLogo\":null},\"itemInfoBean\":{\"itemId\":\"1001_10001\",\"itemCategory\":\"OUTFIT\",\"itemTitle\":\"PGC 2019 Sneakers\",\"itemDescription\":\"\\\"PGC 2019 Sneakers\\\" are one of the limited-time cosmetic items that were introduced during the PUBG Global Championship event in 2019. This item is designed to commemorate the event and allow players to show their support or participation in the esports tournament.\",\"itemImgUrl\":\"https://token-mint-trade.s3.ap-south-1.amazonaws.com/game-item-png/1001/1001_10001.png\",\"itemQuantity\":\"2\",\"itemPrice\":null},\"recieptientAddress\":\"0xF51FE9b283FBf0CB27C8664c18bE1eA78363CD04\",\"onChainTxnInfo\":{\"tokenMintTransactionId\":\"20231005185221184\",\"contractId\":null,\"contractName\":null,\"contractAddress\":\"0xA5a8a2d59A7605a430baee0E82aE18037030739d\",\"contractChainId\":\"5\",\"contractABI\":null,\"contractOperatorAddress\":\"0x1783913E8aE51f2883D1be5307b95C7805218815\",\"web3ContractArguments\":{\"from\":\"0x1783913E8aE51f2883D1be5307b95C7805218815\",\"to\":\"0xF51FE9b283FBf0CB27C8664c18bE1eA78363CD04\",\"id\":\"1\",\"value\":\"2\",\"data\":\"0x20231005185221184\"},\"txnSuccessfull\":\"Y\",\"onChainDateTime\":null,\"blockNumber\":\"4430006\",\"transactionHash\":\"0x6b0f447b7396a78f720ad82550e68008f2b0d3f190fb49f829906a20174d2fc9\"}}'),('20231009113222343','{\"tokenMintTransactionId\":\"20231009113222343\",\"tokenMintTransactionIdHex\":\"0x47dffedfa42cc7\",\"gameId\":\"1001\",\"gameTransactionId\":\"2bd5f684-3bf7-49a0-b781-b2d3d933ad60\",\"otp\":\"446601\",\"tableName\":\"TXN_2023_10\",\"gameInfo\":{\"gameId\":\"1001\",\"gameName\":\"PUBG: BATTLEGROUNDS\",\"gameParentCompany\":\"Krafton.Inc\",\"gameLogo\":\"https://token-mint-trade.s3.ap-south-1.amazonaws.com/game-png/1001.png\"},\"ethContractInfo\":{\"ethContractId\":\"1001_50001\",\"chain\":\"Goerli\",\"chainId\":\"5\",\"contractName\":\"Pubg Inventory Zero One\",\"operatorId\":\"1001_50001_001\",\"contractAddress\":\"0xA5a8a2d59A7605a430baee0E82aE18037030739d\",\"contractAbi\":\"https://token-mint-trade.s3.ap-south-1.amazonaws.com/eth-contract-abi/1001/1001_ABI_GOERLI.json\",\"updatedBy\":\"vaishnav\",\"updatedOn\":\"2023-08-20 12:09:36\"},\"palyerInfo\":{\"playerId\":\"20230801115743465\",\"tokenMintUserId\":\"\",\"playerName\":\"BestHuman_012\",\"playerProfilePic\":null,\"playerEthAccounts\":null,\"gameLogo\":null},\"itemInfoBean\":{\"itemId\":\"1001_10001\",\"itemCategory\":\"OUTFIT\",\"itemTitle\":\"PGC 2019 Sneakers\",\"itemDescription\":\"\\\"PGC 2019 Sneakers\\\" are one of the limited-time cosmetic items that were introduced during the PUBG Global Championship event in 2019. This item is designed to commemorate the event and allow players to show their support or participation in the esports tournament.\",\"itemImgUrl\":\"https://token-mint-trade.s3.ap-south-1.amazonaws.com/game-item-png/1001/1001_10001.png\",\"itemQuantity\":\"2\",\"itemPrice\":null},\"recieptientAddress\":null,\"onChainTxnInfo\":null}'),('20231009114114825','{\"tokenMintTransactionId\":\"20231009114114825\",\"tokenMintTransactionIdHex\":\"0x47dffedfb1cb09\",\"gameId\":\"1001\",\"gameTransactionId\":\"2bd5f684-3bf7-49a0-b781-b2d3d933ad60\",\"otp\":\"446601\",\"tableName\":\"TXN_2023_10\",\"gameInfo\":{\"gameId\":\"1001\",\"gameName\":\"PUBG: BATTLEGROUNDS\",\"gameParentCompany\":\"Krafton.Inc\",\"gameLogo\":\"https://token-mint-trade.s3.ap-south-1.amazonaws.com/game-png/1001.png\"},\"ethContractInfo\":{\"ethContractId\":\"1001_50001\",\"chain\":\"Goerli\",\"chainId\":\"5\",\"contractName\":\"Pubg Inventory Zero One\",\"operatorId\":\"1001_50001_001\",\"contractAddress\":\"0xA5a8a2d59A7605a430baee0E82aE18037030739d\",\"contractAbi\":\"https://token-mint-trade.s3.ap-south-1.amazonaws.com/eth-contract-abi/1001/1001_ABI_GOERLI.json\",\"updatedBy\":\"vaishnav\",\"updatedOn\":\"2023-08-20 12:09:36\",\"etherscanContractUrl\":\"https://sepolia.etherscan.io/address/0x184a20fad1487b68e951f3094ee44fda9bf929b3\"},\"palyerInfo\":{\"playerId\":\"20230801115743465\",\"tokenMintUserId\":\"\",\"playerName\":\"BestHuman_012\",\"playerProfilePic\":null,\"playerEthAccounts\":null,\"gameLogo\":null},\"itemInfoBean\":{\"itemId\":\"1001_10001\",\"itemCategory\":\"OUTFIT\",\"itemTitle\":\"PGC 2019 Sneakers\",\"itemDescription\":\"\\\"PGC 2019 Sneakers\\\" are one of the limited-time cosmetic items that were introduced during the PUBG Global Championship event in 2019. This item is designed to commemorate the event and allow players to show their support or participation in the esports tournament.\",\"itemImgUrl\":\"https://token-mint-trade.s3.ap-south-1.amazonaws.com/game-item-png/1001/1001_10001.png\",\"itemQuantity\":\"2\",\"itemPrice\":null},\"recieptientAddress\":null,\"onChainTxnInfo\":null}'),('20231009155335236','{\"tokenMintTransactionId\":\"20231009155335236\",\"tokenMintTransactionIdHex\":\"0x47dffee226c444\",\"gameId\":\"1001\",\"gameTransactionId\":\"2bd5f684-3bf7-49a0-b781-b2d3d933ad60\",\"otp\":\"446601\",\"tableName\":\"TXN_2023_10\",\"gameInfo\":{\"gameId\":\"1001\",\"gameName\":\"PUBG: BATTLEGROUNDS\",\"gameParentCompany\":\"Krafton.Inc\",\"gameLogo\":\"https://token-mint-trade.s3.ap-south-1.amazonaws.com/game-png/1001.png\"},\"ethContractInfo\":{\"ethContractId\":\"1001_50001\",\"chain\":\"Sepolia\",\"chainId\":\"11155111\",\"contractName\":\"Pubg Inventory Zero One\",\"operatorId\":\"1001_50001_001\",\"contractAddress\":\"0xA5a8a2d59A7605a430baee0E82aE18037030739d\",\"contractAbi\":\"https://token-mint-trade.s3.ap-south-1.amazonaws.com/eth-contract-abi/1001/1001_ABI_GOERLI.json\",\"updatedBy\":\"vaishnav\",\"updatedOn\":\"2023-08-20 12:09:36\",\"etherscanContractUrl\":\"https://sepolia.etherscan.io/address/0x184a20fad1487b68e951f3094ee44fda9bf929b3\",\"providerId\":\"11155111_001\"},\"palyerInfo\":{\"playerId\":\"20230801115743465\",\"tokenMintUserId\":\"\",\"playerName\":\"BestHuman_012\",\"playerProfilePic\":null,\"playerEthAccounts\":null,\"gameLogo\":null},\"itemInfoBean\":{\"itemId\":\"1001_10001\",\"itemCategory\":\"OUTFIT\",\"itemTitle\":\"PGC 2019 Sneakers\",\"itemDescription\":\"\\\"PGC 2019 Sneakers\\\" are one of the limited-time cosmetic items that were introduced during the PUBG Global Championship event in 2019. This item is designed to commemorate the event and allow players to show their support or participation in the esports tournament.\",\"itemImgUrl\":\"https://token-mint-trade.s3.ap-south-1.amazonaws.com/game-item-png/1001/1001_10001.png\",\"itemQuantity\":\"2\",\"itemPrice\":null},\"recieptientAddress\":null,\"onChainTxnInfo\":null,\"providerInfo\":{\"providerId\":\"11155111_001\",\"chainId\":\"11155111\",\"chainName\":\"Sepolia\",\"websocketUrl\":\"wss://eth-sepolia.g.alchemy.com/v2/\",\"httpUrl\":\"https://eth-sepolia.g.alchemy.com/v2/\",\"apiKey\":\"zE7pNLOYNG_rupkDWOJmVls72NLIQ4Rc\"}}'),('20231009172826852','{\"tokenMintTransactionId\":\"20231009172826852\",\"tokenMintTransactionIdHex\":\"0x47dffee331aae4\",\"gameId\":\"1001\",\"gameTransactionId\":\"2bd5f684-3bf7-49a0-b781-b2d3d933ad60\",\"otp\":\"446601\",\"tableName\":\"TXN_2023_10\",\"gameInfo\":{\"gameId\":\"1001\",\"gameName\":\"PUBG: BATTLEGROUNDS\",\"gameParentCompany\":\"Krafton.Inc\",\"gameLogo\":\"https://token-mint-trade.s3.ap-south-1.amazonaws.com/game-png/1001.png\"},\"ethContractInfo\":{\"ethContractId\":\"1001_50001\",\"chain\":\"Sepolia\",\"chainId\":\"11155111\",\"contractName\":\"Pubg Inventory Zero One\",\"operatorId\":\"1001_50001_001\",\"contractAddress\":\"0xA5a8a2d59A7605a430baee0E82aE18037030739d\",\"contractAbi\":\"https://token-mint-trade.s3.ap-south-1.amazonaws.com/eth-contract-abi/1001/1001_ABI_GOERLI.json\",\"updatedBy\":\"vaishnav\",\"updatedOn\":\"2023-08-20 12:09:36\",\"etherscanContractUrl\":\"https://sepolia.etherscan.io/address/0x184a20fad1487b68e951f3094ee44fda9bf929b3\",\"providerId\":\"11155111_001\"},\"palyerInfo\":{\"playerId\":\"20230801115743465\",\"tokenMintUserId\":\"\",\"playerName\":\"BestHuman_012\",\"playerProfilePic\":null,\"playerEthAccounts\":null,\"gameLogo\":null},\"itemInfoBean\":{\"itemId\":\"1001_10001\",\"itemCategory\":\"OUTFIT\",\"itemTitle\":\"PGC 2019 Sneakers\",\"itemDescription\":\"\\\"PGC 2019 Sneakers\\\" are one of the limited-time cosmetic items that were introduced during the PUBG Global Championship event in 2019. This item is designed to commemorate the event and allow players to show their support or participation in the esports tournament.\",\"itemImgUrl\":\"https://token-mint-trade.s3.ap-south-1.amazonaws.com/game-item-png/1001/1001_10001.png\",\"itemQuantity\":\"2\",\"itemPrice\":null},\"recieptientAddress\":null,\"onChainTxnInfo\":null,\"providerInfo\":{\"providerId\":\"11155111_001\",\"chainId\":\"11155111\",\"chainName\":\"Sepolia\",\"websocketUrl\":\"wss://eth-sepolia.g.alchemy.com/v2/\",\"httpUrl\":\"https://eth-sepolia.g.alchemy.com/v2/\",\"apiKey\":\"zE7pNLOYNG_rupkDWOJmVls72NLIQ4Rc\"}}'),('20231009174015745','{\"tokenMintTransactionId\":\"20231009174015745\",\"tokenMintTransactionIdHex\":\"0x47dffee343cf01\",\"gameId\":\"1001\",\"gameTransactionId\":\"2bd5f684-3bf7-49a0-b781-b2d3d933ad60\",\"otp\":\"446601\",\"tableName\":\"TXN_2023_10\",\"gameInfo\":{\"gameId\":\"1001\",\"gameName\":\"PUBG: BATTLEGROUNDS\",\"gameParentCompany\":\"Krafton.Inc\",\"gameLogo\":\"https://token-mint-trade.s3.ap-south-1.amazonaws.com/game-png/1001.png\"},\"ethContractInfo\":{\"ethContractId\":\"1001_50001\",\"chain\":\"Sepolia\",\"chainId\":\"11155111\",\"contractName\":\"Pubg Inventory Zero One\",\"operatorId\":\"1001_50001_001\",\"contractAddress\":\"0xA5a8a2d59A7605a430baee0E82aE18037030739d\",\"contractAbi\":\"https://token-mint-trade.s3.ap-south-1.amazonaws.com/eth-contract-abi/1001/1001_ABI_GOERLI.json\",\"updatedBy\":\"vaishnav\",\"updatedOn\":\"2023-08-20 12:09:36\",\"etherscanContractUrl\":\"https://sepolia.etherscan.io/address/0x184a20fad1487b68e951f3094ee44fda9bf929b3\",\"providerId\":\"11155111_001\"},\"palyerInfo\":{\"playerId\":\"20230801115743465\",\"tokenMintUserId\":\"\",\"playerName\":\"BestHuman_012\",\"playerProfilePic\":null,\"playerEthAccounts\":null,\"gameLogo\":null},\"itemInfoBean\":{\"itemId\":\"1001_10001\",\"itemCategory\":\"OUTFIT\",\"itemTitle\":\"PGC 2019 Sneakers\",\"itemDescription\":\"\\\"PGC 2019 Sneakers\\\" are one of the limited-time cosmetic items that were introduced during the PUBG Global Championship event in 2019. This item is designed to commemorate the event and allow players to show their support or participation in the esports tournament.\",\"itemImgUrl\":\"https://token-mint-trade.s3.ap-south-1.amazonaws.com/game-item-png/1001/1001_10001.png\",\"itemQuantity\":\"2\",\"itemPrice\":null},\"recieptientAddress\":null,\"onChainTxnInfo\":null,\"providerInfo\":{\"providerId\":\"11155111_001\",\"chainId\":\"11155111\",\"chainName\":\"Sepolia\",\"websocketUrl\":\"wss://eth-sepolia.g.alchemy.com/v2/\",\"httpUrl\":\"https://eth-sepolia.g.alchemy.com/v2/\",\"apiKey\":\"zE7pNLOYNG_rupkDWOJmVls72NLIQ4Rc\"}}'),('20231009180915690','{\"tokenMintTransactionId\":\"20231009180915690\",\"tokenMintTransactionIdHex\":\"0x47dffee3ad17ea\",\"gameId\":\"1001\",\"gameTransactionId\":\"2bd5f684-3bf7-49a0-b781-b2d3d933ad60\",\"otp\":\"446601\",\"tableName\":\"TXN_2023_10\",\"gameInfo\":{\"gameId\":\"1001\",\"gameName\":\"PUBG: BATTLEGROUNDS\",\"gameParentCompany\":\"Krafton.Inc\",\"gameLogo\":\"https://token-mint-trade.s3.ap-south-1.amazonaws.com/game-png/1001.png\"},\"ethContractInfo\":{\"ethContractId\":\"1001_50001\",\"chain\":\"Sepolia\",\"chainId\":\"11155111\",\"contractName\":\"Pubg Inventory Zero One\",\"operatorId\":\"1001_50001_001\",\"contractAddress\":\"0xA5a8a2d59A7605a430baee0E82aE18037030739d\",\"contractAbi\":\"https://token-mint-trade.s3.ap-south-1.amazonaws.com/eth-contract-abi/1001/1001_ABI_GOERLI.json\",\"updatedBy\":\"vaishnav\",\"updatedOn\":\"2023-08-20 12:09:36\",\"etherscanContractUrl\":\"https://sepolia.etherscan.io/address/0x184a20fad1487b68e951f3094ee44fda9bf929b3\",\"providerId\":\"11155111_001\"},\"palyerInfo\":{\"playerId\":\"20230801115743465\",\"tokenMintUserId\":\"\",\"playerName\":\"BestHuman_012\",\"playerProfilePic\":null,\"playerEthAccounts\":null,\"gameLogo\":null},\"itemInfoBean\":{\"itemId\":\"1001_10001\",\"itemCategory\":\"OUTFIT\",\"itemTitle\":\"PGC 2019 Sneakers\",\"itemDescription\":\"\\\"PGC 2019 Sneakers\\\" are one of the limited-time cosmetic items that were introduced during the PUBG Global Championship event in 2019. This item is designed to commemorate the event and allow players to show their support or participation in the esports tournament.\",\"itemImgUrl\":\"https://token-mint-trade.s3.ap-south-1.amazonaws.com/game-item-png/1001/1001_10001.png\",\"itemQuantity\":\"2\",\"itemPrice\":null},\"recieptientAddress\":null,\"onChainTxnInfo\":null,\"providerInfo\":{\"providerId\":\"11155111_001\",\"chainId\":\"11155111\",\"chainName\":\"Sepolia\",\"websocketUrl\":\"wss://eth-sepolia.g.alchemy.com/v2/\",\"httpUrl\":\"https://eth-sepolia.g.alchemy.com/v2/\",\"apiKey\":\"zE7pNLOYNG_rupkDWOJmVls72NLIQ4Rc\"}}'),('20231009181129665','{\"tokenMintTransactionId\":\"20231009181129665\",\"tokenMintTransactionIdHex\":\"0x47dffee3b05bc1\",\"gameId\":\"1001\",\"gameTransactionId\":\"2bd5f684-3bf7-49a0-b781-b2d3d933ad60\",\"otp\":\"446601\",\"tableName\":\"TXN_2023_10\",\"gameInfo\":{\"gameId\":\"1001\",\"gameName\":\"PUBG: BATTLEGROUNDS\",\"gameParentCompany\":\"Krafton.Inc\",\"gameLogo\":\"https://token-mint-trade.s3.ap-south-1.amazonaws.com/game-png/1001.png\"},\"ethContractInfo\":{\"ethContractId\":\"1001_50001\",\"chain\":\"Sepolia\",\"chainId\":\"11155111\",\"contractName\":\"Pubg Inventory Zero One\",\"operatorId\":\"1001_50001_001\",\"contractAddress\":\"0xA5a8a2d59A7605a430baee0E82aE18037030739d\",\"contractAbi\":\"https://token-mint-trade.s3.ap-south-1.amazonaws.com/eth-contract-abi/1001/1001_ABI_GOERLI.json\",\"updatedBy\":\"vaishnav\",\"updatedOn\":\"2023-08-20 12:09:36\",\"etherscanContractUrl\":\"https://sepolia.etherscan.io/address/0x184a20fad1487b68e951f3094ee44fda9bf929b3\",\"providerId\":\"11155111_001\"},\"palyerInfo\":{\"playerId\":\"20230801115743465\",\"tokenMintUserId\":\"\",\"playerName\":\"BestHuman_012\",\"playerProfilePic\":null,\"playerEthAccounts\":null,\"gameLogo\":null},\"itemInfoBean\":{\"itemId\":\"1001_10001\",\"itemCategory\":\"OUTFIT\",\"itemTitle\":\"PGC 2019 Sneakers\",\"itemDescription\":\"\\\"PGC 2019 Sneakers\\\" are one of the limited-time cosmetic items that were introduced during the PUBG Global Championship event in 2019. This item is designed to commemorate the event and allow players to show their support or participation in the esports tournament.\",\"itemImgUrl\":\"https://token-mint-trade.s3.ap-south-1.amazonaws.com/game-item-png/1001/1001_10001.png\",\"itemQuantity\":\"2\",\"itemPrice\":null},\"recieptientAddress\":null,\"onChainTxnInfo\":null,\"providerInfo\":{\"providerId\":\"11155111_001\",\"chainId\":\"11155111\",\"chainName\":\"Sepolia\",\"websocketUrl\":\"wss://eth-sepolia.g.alchemy.com/v2/\",\"httpUrl\":\"https://eth-sepolia.g.alchemy.com/v2/\",\"apiKey\":\"zE7pNLOYNG_rupkDWOJmVls72NLIQ4Rc\"}}'),('20231009181635871','{\"tokenMintTransactionId\":\"20231009181635871\",\"tokenMintTransactionIdHex\":\"0x47dffee3b8151f\",\"gameId\":\"1001\",\"gameTransactionId\":\"2bd5f684-3bf7-49a0-b781-b2d3d933ad60\",\"otp\":\"446601\",\"tableName\":\"TXN_2023_10\",\"gameInfo\":{\"gameId\":\"1001\",\"gameName\":\"PUBG: BATTLEGROUNDS\",\"gameParentCompany\":\"Krafton.Inc\",\"gameLogo\":\"https://token-mint-trade.s3.ap-south-1.amazonaws.com/game-png/1001.png\"},\"ethContractInfo\":{\"ethContractId\":\"1001_50001\",\"chain\":\"Sepolia\",\"chainId\":\"11155111\",\"contractName\":\"Pubg Inventory Zero One\",\"operatorId\":\"1001_50001_001\",\"contractAddress\":\"0xA5a8a2d59A7605a430baee0E82aE18037030739d\",\"contractAbi\":\"https://token-mint-trade.s3.ap-south-1.amazonaws.com/eth-contract-abi/1001/1001_ABI_GOERLI.json\",\"updatedBy\":\"vaishnav\",\"updatedOn\":\"2023-08-20 12:09:36\",\"etherscanContractUrl\":\"https://sepolia.etherscan.io/address/0x184a20fad1487b68e951f3094ee44fda9bf929b3\",\"providerId\":\"11155111_001\"},\"palyerInfo\":{\"playerId\":\"20230801115743465\",\"tokenMintUserId\":\"\",\"playerName\":\"BestHuman_012\",\"playerProfilePic\":null,\"playerEthAccounts\":null,\"gameLogo\":null},\"itemInfoBean\":{\"itemId\":\"1001_10001\",\"itemCategory\":\"OUTFIT\",\"itemTitle\":\"PGC 2019 Sneakers\",\"itemDescription\":\"\\\"PGC 2019 Sneakers\\\" are one of the limited-time cosmetic items that were introduced during the PUBG Global Championship event in 2019. This item is designed to commemorate the event and allow players to show their support or participation in the esports tournament.\",\"itemImgUrl\":\"https://token-mint-trade.s3.ap-south-1.amazonaws.com/game-item-png/1001/1001_10001.png\",\"itemQuantity\":\"2\",\"itemPrice\":null},\"recieptientAddress\":null,\"onChainTxnInfo\":null,\"providerInfo\":{\"providerId\":\"11155111_001\",\"chainId\":\"11155111\",\"chainName\":\"Sepolia\",\"websocketUrl\":\"wss://eth-sepolia.g.alchemy.com/v2/\",\"httpUrl\":\"https://eth-sepolia.g.alchemy.com/v2/\",\"apiKey\":\"zE7pNLOYNG_rupkDWOJmVls72NLIQ4Rc\"}}'),('3cf4080f-eb28-41d1-9206-8ae28b627798','{\"tokenMintTransactionId\":\"3cf4080f-eb28-41d1-9206-8ae28b627798\",\"gameId\":\"1001\",\"gameTransactionId\":\"2bd5f684-3bf7-49a0-b781-b2d3d933ad60\",\"otp\":\"446601\",\"tableName\":\"TXN_2023_10\",\"gameInfo\":{\"gameId\":\"1001\",\"gameName\":\"PUBG: BATTLEGROUNDS\",\"gameParentCompany\":\"Krafton.Inc\",\"gameLogo\":\"https://token-mint-trade.s3.ap-south-1.amazonaws.com/game-png/1001.png\"},\"ethContractInfo\":{\"ethContractId\":\"1001_50001\",\"chain\":\"Goerli\",\"chainId\":\"5\",\"contractName\":\"Pubg Inventory Zero One\",\"operatorId\":\"1001_50001_001\",\"contractAddress\":\"0x0775426A4c27Dd15849194343D6e11326232EEf0\",\"contractAbi\":\"https://token-mint-trade.s3.ap-south-1.amazonaws.com/eth-contract-abi/1001/1001_ABI_GOERLI.json\",\"updatedBy\":\"vaishnav\",\"updatedOn\":\"2023-08-20 12:09:36\"},\"palyerInfo\":{\"playerId\":\"20230801115743465\",\"tokenMintUserId\":\"\",\"playerName\":\"BestHuman_012\",\"playerProfilePic\":null,\"playerEthAccounts\":null,\"gameLogo\":null},\"itemInfoBean\":{\"itemId\":\"1001_10001\",\"itemCategory\":\"OUTFIT\",\"itemTitle\":\"PGC 2019 Sneakers\",\"itemDescription\":\"\\\"PGC 2019 Sneakers\\\" are one of the limited-time cosmetic items that were introduced during the PUBG Global Championship event in 2019. This item is designed to commemorate the event and allow players to show their support or participation in the esports tournament.\",\"itemImgUrl\":\"https://token-mint-trade.s3.ap-south-1.amazonaws.com/game-item-png/1001/1001_10001.png\",\"itemQuantity\":\"2\",\"itemPrice\":null},\"recieptientAddress\":\"0xF51FE9b283FBf0CB27C8664c18bE1eA78363CD04\",\"onChainTxnInfo\":{\"tokenMintTransactionId\":\"3cf4080f-eb28-41d1-9206-8ae28b627798\",\"contractId\":null,\"contractName\":null,\"contractAddress\":\"0x0775426A4c27Dd15849194343D6e11326232EEf0\",\"contractChainId\":\"5\",\"contractABI\":null,\"contractOperatorAddress\":\"0x1783913E8aE51f2883D1be5307b95C7805218815\",\"web3ContractArguments\":{\"from\":\"0x1783913E8aE51f2883D1be5307b95C7805218815\",\"to\":\"0xF51FE9b283FBf0CB27C8664c18bE1eA78363CD04\",\"id\":\"1\",\"value\":\"2\",\"data\":\"0x3cf4080feb2841d192068ae28b627798\"},\"txnSuccessfull\":\"Y\",\"onChainDateTime\":null,\"blockNumber\":\"334455\",\"transactionHash\":\"0x738907634960550a238fccbfda48177af098f5721599a97511b0b6cee46c79b0\"}}'),('8cdf403c-5f98-4c77-9b86-345c0f37f624','{\"tokenMintTransactionId\":\"8cdf403c-5f98-4c77-9b86-345c0f37f624\",\"gameId\":\"1001\",\"gameTransactionId\":\"2bd5f684-3bf7-49a0-b781-b2d3d933ad60\",\"otp\":\"446601\",\"tableName\":\"TXN_2023_10\",\"gameInfo\":{\"gameId\":\"1001\",\"gameName\":\"PUBG: BATTLEGROUNDS\",\"gameParentCompany\":\"Krafton.Inc\",\"gameLogo\":\"https://token-mint-trade.s3.ap-south-1.amazonaws.com/game-png/1001.png\"},\"ethContractInfo\":{\"ethContractId\":\"1001_50001\",\"chain\":\"Goerli\",\"chainId\":\"5\",\"contractName\":\"Pubg Inventory Zero One\",\"operatorId\":\"1001_50001_001\",\"contractAddress\":\"0x0775426A4c27Dd15849194343D6e11326232EEf0\",\"contractAbi\":\"https://token-mint-trade.s3.ap-south-1.amazonaws.com/eth-contract-abi/1001/1001_ABI_GOERLI.json\",\"updatedBy\":\"vaishnav\",\"updatedOn\":\"2023-08-20 12:09:36\"},\"palyerInfo\":{\"playerId\":\"20230801115743465\",\"tokenMintUserId\":\"\",\"playerName\":\"BestHuman_012\",\"playerProfilePic\":null,\"playerEthAccounts\":null,\"gameLogo\":null},\"itemInfoBean\":{\"itemId\":\"1001_10001\",\"itemCategory\":\"OUTFIT\",\"itemTitle\":\"PGC 2019 Sneakers\",\"itemDescription\":\"\\\"PGC 2019 Sneakers\\\" are one of the limited-time cosmetic items that were introduced during the PUBG Global Championship event in 2019. This item is designed to commemorate the event and allow players to show their support or participation in the esports tournament.\",\"itemImgUrl\":\"https://token-mint-trade.s3.ap-south-1.amazonaws.com/game-item-png/1001/1001_10001.png\",\"itemQuantity\":\"2\",\"itemPrice\":null},\"recieptientAddress\":null,\"onChainTxnInfo\":null}'),('9976e49d-2108-4649-a0a2-9b17cf5792bb','{\"tokenMintTransactionId\":\"9976e49d-2108-4649-a0a2-9b17cf5792bb\",\"gameId\":\"1001\",\"gameTransactionId\":\"2bd5f684-3bf7-49a0-b781-b2d3d933ad60\",\"otp\":\"446601\",\"tableName\":\"TXN_2023_10\",\"gameInfo\":{\"gameId\":\"1001\",\"gameName\":\"PUBG: BATTLEGROUNDS\",\"gameParentCompany\":\"Krafton.Inc\",\"gameLogo\":\"https://token-mint-trade.s3.ap-south-1.amazonaws.com/game-png/1001.png\"},\"ethContractInfo\":{\"ethContractId\":\"1001_50001\",\"chain\":\"Goerli\",\"chainId\":\"5\",\"contractName\":\"Pubg Inventory Zero One\",\"operatorId\":\"1001_50001_001\",\"contractAddress\":\"0xA5a8a2d59A7605a430baee0E82aE18037030739d\",\"contractAbi\":\"https://token-mint-trade.s3.ap-south-1.amazonaws.com/eth-contract-abi/1001/1001_ABI_GOERLI.json\",\"updatedBy\":\"vaishnav\",\"updatedOn\":\"2023-08-20 12:09:36\"},\"palyerInfo\":{\"playerId\":\"20230801115743465\",\"tokenMintUserId\":\"\",\"playerName\":\"BestHuman_012\",\"playerProfilePic\":null,\"playerEthAccounts\":null,\"gameLogo\":null},\"itemInfoBean\":{\"itemId\":\"1001_10001\",\"itemCategory\":\"OUTFIT\",\"itemTitle\":\"PGC 2019 Sneakers\",\"itemDescription\":\"\\\"PGC 2019 Sneakers\\\" are one of the limited-time cosmetic items that were introduced during the PUBG Global Championship event in 2019. This item is designed to commemorate the event and allow players to show their support or participation in the esports tournament.\",\"itemImgUrl\":\"https://token-mint-trade.s3.ap-south-1.amazonaws.com/game-item-png/1001/1001_10001.png\",\"itemQuantity\":\"2\",\"itemPrice\":null},\"recieptientAddress\":null,\"onChainTxnInfo\":null}'),('b8c99111-860c-49c0-a0b7-b45bda126fbd','{\"tokenMintTransactionId\":\"b8c99111-860c-49c0-a0b7-b45bda126fbd\",\"gameId\":\"1001\",\"gameTransactionId\":\"2bd5f684-3bf7-49a0-b781-b2d3d933ad60\",\"otp\":\"446601\",\"tableName\":\"TXN_2023_10\",\"gameInfo\":{\"gameId\":\"1001\",\"gameName\":\"PUBG: BATTLEGROUNDS\",\"gameParentCompany\":\"Krafton.Inc\",\"gameLogo\":\"https://token-mint-trade.s3.ap-south-1.amazonaws.com/game-png/1001.png\"},\"ethContractInfo\":{\"ethContractId\":\"1001_50001\",\"chain\":\"Goerli\",\"chainId\":\"5\",\"contractName\":\"Pubg Inventory Zero One\",\"operatorId\":\"1001_50001_001\",\"contractAddress\":\"0x0775426A4c27Dd15849194343D6e11326232EEf0\",\"contractAbi\":\"https://token-mint-trade.s3.ap-south-1.amazonaws.com/eth-contract-abi/1001/1001_ABI_GOERLI.json\",\"updatedBy\":\"vaishnav\",\"updatedOn\":\"2023-08-20 12:09:36\"},\"palyerInfo\":{\"playerId\":\"20230801115743465\",\"tokenMintUserId\":\"\",\"playerName\":\"BestHuman_012\",\"playerProfilePic\":null,\"playerEthAccounts\":null,\"gameLogo\":null},\"itemInfoBean\":{\"itemId\":\"1001_10001\",\"itemCategory\":\"OUTFIT\",\"itemTitle\":\"PGC 2019 Sneakers\",\"itemDescription\":\"\\\"PGC 2019 Sneakers\\\" are one of the limited-time cosmetic items that were introduced during the PUBG Global Championship event in 2019. This item is designed to commemorate the event and allow players to show their support or participation in the esports tournament.\",\"itemImgUrl\":\"https://token-mint-trade.s3.ap-south-1.amazonaws.com/game-item-png/1001/1001_10001.png\",\"itemQuantity\":\"2\",\"itemPrice\":null},\"recieptientAddress\":null,\"onChainTxnInfo\":null}'),('c5cf559c-716b-480c-9243-13f9e6d123ae','{\"tokenMintTransactionId\":\"c5cf559c-716b-480c-9243-13f9e6d123ae\",\"gameId\":\"1001\",\"gameTransactionId\":\"2bd5f684-3bf7-49a0-b781-b2d3d933ad60\",\"otp\":\"446601\",\"tableName\":\"TXN_2023_10\",\"gameInfo\":{\"gameId\":\"1001\",\"gameName\":\"PUBG: BATTLEGROUNDS\",\"gameParentCompany\":\"Krafton.Inc\",\"gameLogo\":\"https://token-mint-trade.s3.ap-south-1.amazonaws.com/game-png/1001.png\"},\"ethContractInfo\":{\"ethContractId\":\"1001_50001\",\"chain\":\"Goerli\",\"chainId\":\"5\",\"contractName\":\"Pubg Inventory Zero One\",\"operatorId\":\"1001_50001_001\",\"contractAddress\":\"0x0775426A4c27Dd15849194343D6e11326232EEf0\",\"contractAbi\":\"https://token-mint-trade.s3.ap-south-1.amazonaws.com/eth-contract-abi/1001/1001_ABI_GOERLI.json\",\"updatedBy\":\"vaishnav\",\"updatedOn\":\"2023-08-20 12:09:36\"},\"palyerInfo\":{\"playerId\":\"20230801115743465\",\"tokenMintUserId\":\"\",\"playerName\":\"BestHuman_012\",\"playerProfilePic\":null,\"playerEthAccounts\":null,\"gameLogo\":null},\"itemInfoBean\":{\"itemId\":\"1001_10001\",\"itemCategory\":\"OUTFIT\",\"itemTitle\":\"PGC 2019 Sneakers\",\"itemDescription\":\"\\\"PGC 2019 Sneakers\\\" are one of the limited-time cosmetic items that were introduced during the PUBG Global Championship event in 2019. This item is designed to commemorate the event and allow players to show their support or participation in the esports tournament.\",\"itemImgUrl\":\"https://token-mint-trade.s3.ap-south-1.amazonaws.com/game-item-png/1001/1001_10001.png\",\"itemQuantity\":\"2\",\"itemPrice\":null},\"recieptientAddress\":null,\"onChainTxnInfo\":null}'),('ce3acb60-56c3-4068-929d-862424e6e348','{\"tokenMintTransactionId\":\"ce3acb60-56c3-4068-929d-862424e6e348\",\"gameId\":\"1001\",\"gameTransactionId\":\"2bd5f684-3bf7-49a0-b781-b2d3d933ad60\",\"otp\":\"446601\",\"tableName\":\"TXN_2023_10\",\"gameInfo\":{\"gameId\":\"1001\",\"gameName\":\"PUBG: BATTLEGROUNDS\",\"gameParentCompany\":\"Krafton.Inc\",\"gameLogo\":\"https://token-mint-trade.s3.ap-south-1.amazonaws.com/game-png/1001.png\"},\"ethContractInfo\":{\"ethContractId\":\"1001_50001\",\"chain\":\"Goerli\",\"chainId\":\"5\",\"contractName\":\"Pubg Inventory Zero One\",\"operatorId\":\"1001_50001_001\",\"contractAddress\":\"0x0775426A4c27Dd15849194343D6e11326232EEf0\",\"contractAbi\":\"https://token-mint-trade.s3.ap-south-1.amazonaws.com/eth-contract-abi/1001/1001_ABI_GOERLI.json\",\"updatedBy\":\"vaishnav\",\"updatedOn\":\"2023-08-20 12:09:36\"},\"palyerInfo\":{\"playerId\":\"20230801115743465\",\"tokenMintUserId\":\"\",\"playerName\":\"BestHuman_012\",\"playerProfilePic\":null,\"playerEthAccounts\":null,\"gameLogo\":null},\"itemInfoBean\":{\"itemId\":\"1001_10001\",\"itemCategory\":\"OUTFIT\",\"itemTitle\":\"PGC 2019 Sneakers\",\"itemDescription\":\"\\\"PGC 2019 Sneakers\\\" are one of the limited-time cosmetic items that were introduced during the PUBG Global Championship event in 2019. This item is designed to commemorate the event and allow players to show their support or participation in the esports tournament.\",\"itemImgUrl\":\"https://token-mint-trade.s3.ap-south-1.amazonaws.com/game-item-png/1001/1001_10001.png\",\"itemQuantity\":\"2\",\"itemPrice\":null},\"recieptientAddress\":null,\"onChainTxnInfo\":null}'),('e6fe4ad9-5f81-4408-9a62-5bf1371d1a47','{\"tokenMintTransactionId\":\"e6fe4ad9-5f81-4408-9a62-5bf1371d1a47\",\"gameId\":\"1001\",\"gameTransactionId\":\"2bd5f684-3bf7-49a0-b781-b2d3d933ad60\",\"otp\":\"446601\",\"tableName\":\"TXN_2023_10\",\"gameInfo\":{\"gameId\":\"1001\",\"gameName\":\"PUBG: BATTLEGROUNDS\",\"gameParentCompany\":\"Krafton.Inc\",\"gameLogo\":\"https://token-mint-trade.s3.ap-south-1.amazonaws.com/game-png/1001.png\"},\"ethContractInfo\":{\"ethContractId\":\"1001_50001\",\"chain\":\"Goerli\",\"chainId\":\"5\",\"contractName\":\"Pubg Inventory Zero One\",\"operatorId\":\"1001_50001_001\",\"contractAddress\":\"0x0775426A4c27Dd15849194343D6e11326232EEf0\",\"contractAbi\":\"https://token-mint-trade.s3.ap-south-1.amazonaws.com/eth-contract-abi/1001/1001_ABI_GOERLI.json\",\"updatedBy\":\"vaishnav\",\"updatedOn\":\"2023-08-20 12:09:36\"},\"palyerInfo\":{\"playerId\":\"20230801115743465\",\"tokenMintUserId\":\"\",\"playerName\":\"BestHuman_012\",\"playerProfilePic\":null,\"playerEthAccounts\":null,\"gameLogo\":null},\"itemInfoBean\":{\"itemId\":\"1001_10001\",\"itemCategory\":\"OUTFIT\",\"itemTitle\":\"PGC 2019 Sneakers\",\"itemDescription\":\"\\\"PGC 2019 Sneakers\\\" are one of the limited-time cosmetic items that were introduced during the PUBG Global Championship event in 2019. This item is designed to commemorate the event and allow players to show their support or participation in the esports tournament.\",\"itemImgUrl\":\"https://token-mint-trade.s3.ap-south-1.amazonaws.com/game-item-png/1001/1001_10001.png\",\"itemQuantity\":\"2\",\"itemPrice\":null},\"recieptientAddress\":null,\"onChainTxnInfo\":null}');
/*!40000 ALTER TABLE `txn_2023_10` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-10 10:38:02
