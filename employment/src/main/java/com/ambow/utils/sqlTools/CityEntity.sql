-- auto Generated on 2021-09-23
-- DROP TABLE IF EXISTS e_city;
CREATE TABLE e_city(
	cid INT (11) NOT NULL AUTO_INCREMENT COMMENT 'cid',
	cname VARCHAR (50) NOT NULL COMMENT 'cname',
	cpid INT (11) NOT NULL COMMENT 'cpid',
	PRIMARY KEY (cid)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT 'e_city';
