-- auto Generated on 2021-09-23
-- DROP TABLE IF EXISTS e_through;
CREATE TABLE e_through(
	tid INT (11) NOT NULL AUTO_INCREMENT COMMENT 'tid',
	tname VARCHAR (50) NOT NULL COMMENT '项目名称',
	tcontent VARCHAR (50) NOT NULL COMMENT '项目内容',
	ttime VARCHAR (50) NOT NULL COMMENT '项目时间',
	trid INT (11) NOT NULL COMMENT '简历id',
	PRIMARY KEY (tid)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT 'e_through';
