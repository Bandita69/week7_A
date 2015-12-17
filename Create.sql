delimiter $$

CREATE DATABASE `week_7a` /*!40100 DEFAULT CHARACTER SET utf8 */$$

delimiter $$

CREATE TABLE `users` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `Birthdate` datetime NOT NULL,
  `Introduction` varchar(500) DEFAULT NULL,
  `Avatar` varchar(1000) DEFAULT NULL,
  `Email` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8$$

delimiter $$

CREATE TABLE `statuses` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Value` varchar(50) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8$$

delimiter $$

CREATE TABLE `meetups` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Start` datetime NOT NULL,
  `Location` varchar(150) NOT NULL,
  `Topic` varchar(150) NOT NULL,
  `Description` varchar(1000) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8$$

delimiter $$

CREATE TABLE `meetupregistrations` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `StatusId` int(11) NOT NULL,
  `MeetupId` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `StatusId` (`StatusId`),
  KEY `MeetupId` (`MeetupId`),
  KEY `UserId` (`UserId`),
  CONSTRAINT `meetupregistrations_ibfk_1` FOREIGN KEY (`StatusId`) REFERENCES `statuses` (`Id`) ON UPDATE CASCADE,
  CONSTRAINT `meetupregistrations_ibfk_2` FOREIGN KEY (`MeetupId`) REFERENCES `meetups` (`Id`) ON UPDATE CASCADE,
  CONSTRAINT `meetupregistrations_ibfk_3` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8$$

