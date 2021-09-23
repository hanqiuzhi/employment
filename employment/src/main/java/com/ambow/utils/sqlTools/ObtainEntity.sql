-- auto Generated on 2021-09-23
-- DROP TABLE IF EXISTS e_obtain;
CREATE TABLE e_obtain(
	oid INT (11) NOT NULL AUTO_INCREMENT COMMENT 'oid',
	osid INT (11) NOT NULL COMMENT '学生信息',
	oself INT (11) NOT NULL COMMENT '是否自主就业',
	oename VARCHAR (50) NOT NULL COMMENT '就业企业',
	ojname VARCHAR (50) NOT NULL COMMENT '就业职位',
	otime VARCHAR (50) NOT NULL COMMENT '结业时间',
	PRIMARY KEY (oid)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT 'e_obtain';
