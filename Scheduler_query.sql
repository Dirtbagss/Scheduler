CREATE DATABASE `scheduler`;

CREATE TABLE `schedule` (
  `scheduleIdx` bigint NOT NULL,
  `userId` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `reg_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `content` text NOT NULL,
  `update_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`scheduleIdx`),
  KEY `schedule_ibfk_1` (`userId`),
  CONSTRAINT `schedule_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `user` (
  `userId` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `reg_date`datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

#일정 생성 쿼리 예시
Insert into schedule (userId, password, content)
values ('testID','testPassword', 'testContent');

#전체일정 조회
Select * from schedule;

#선택일정 조회
Select * from schedule where id = 'scheduleIdx';

#선택일정 수정
Update schedule set content='content' where id ='scheduleIdx';

#선택일정 삭제
Delete from schedule where id = 'schduleIdx';
