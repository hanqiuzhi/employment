-- auto Generated on 2021-09-23
-- DROP TABLE IF EXISTS e__obtain;
CREATE TABLE e_obtain(
	oid INT (11) NOT NULL AUTO_INCREMENT COMMENT 'oid',
	osid INT (11) NOT NULL COMMENT '学生信息',
	ojid INT (11) NOT NULL COMMENT '所在岗位',
	otime VARCHAR (50) NOT NULL COMMENT 'otime',
	PRIMARY KEY (oid)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT 'e__obtain';

