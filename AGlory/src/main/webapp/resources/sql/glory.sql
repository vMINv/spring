CREATE TABLE `glorynotice` (
  `nid` int NOT NULL AUTO_INCREMENT,
  `ntitle` varchar(45) DEFAULT NULL,
  `ncontent` longtext,
  `ncate` varchar(45) DEFAULT NULL,
  `nwriter` varchar(45) DEFAULT 'admin',
  `ndate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

CREATE TABLE `gloryboard` (
  `bid` int NOT NULL AUTO_INCREMENT,
  `bpid` varchar(45) DEFAULT '0',
  `btitle` varchar(45) DEFAULT NULL,
  `bcontent` longtext,
  `bcate` varchar(45) DEFAULT NULL,
  `bstatus` int DEFAULT '1',
  `bwriter` varchar(45) DEFAULT NULL,
  `bdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

CREATE TABLE `glorymember` (
  `mid` int NOT NULL AUTO_INCREMENT,
  `enabled` tinyint DEFAULT '1',
  `username` varchar(45) NOT NULL,
  `password` varchar(200) DEFAULT NULL,
  `authority` varchar(45) DEFAULT 'ROLE_USER',
  `mname` varchar(45) DEFAULT NULL,
  `memail` varchar(45) DEFAULT NULL,
  `mtel` varchar(45) DEFAULT NULL,
  `mdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`mid`,`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci