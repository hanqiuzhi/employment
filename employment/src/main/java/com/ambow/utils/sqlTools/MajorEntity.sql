-- auto Generated on 2021-09-23
-- DROP TABLE IF EXISTS e_major;
CREATE TABLE e_major(
	mid INT (11) NOT NULL AUTO_INCREMENT COMMENT 'mid',
	mname VARCHAR (50) NOT NULL COMMENT '专业名称',
	mfid INT (11) NOT NULL COMMENT '所属院系',
	PRIMARY KEY (mid)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT 'e_major';
