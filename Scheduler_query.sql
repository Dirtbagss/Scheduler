CREATE DATABASE `scheduler`;

CREATE TABLE `schedule` (
  `scheduleIdx` int NOT NULL,
  `userId` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `reg_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `post` varchar(1000) NOT NULL,
  PRIMARY KEY (`scheduleIdx`),
  KEY `schedule_ibfk_1` (`userId`),
  CONSTRAINT `schedule_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `user` (
  `userId` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `reg_date` date DEFAULT (curdate()),
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

