-- auto Generated on 2021-09-23
-- DROP TABLE IF EXISTS e_university;
CREATE TABLE e_university(
	`uid` INT (11) NOT NULL AUTO_INCREMENT COMMENT 'uid',
	uname VARCHAR (50) NOT NULL COMMENT 'uname',
	uno INT (11) NOT NULL COMMENT 'uno',
	upwd VARCHAR (50) NOT NULL COMMENT 'upwd',
	PRIMARY KEY (`uid`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT 'e_university';
