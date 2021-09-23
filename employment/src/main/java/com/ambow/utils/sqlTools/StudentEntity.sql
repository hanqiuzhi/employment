-- auto Generated on 2021-09-23
-- DROP TABLE IF EXISTS e_student;
CREATE TABLE e_student(
	sid INT (11) NOT NULL AUTO_INCREMENT COMMENT 'sid',
	sname VARCHAR (50) NOT NULL COMMENT 'sname',
	sno INT (11) NOT NULL COMMENT '学号',
	sidcard VARCHAR (50) NOT NULL COMMENT '身份证号',
	sage INT (11) NOT NULL COMMENT 'sage',
	ssex VARCHAR (50) NOT NULL COMMENT 'ssex',
	sphone VARCHAR (50) NOT NULL COMMENT 'sphone',
	semail VARCHAR (50) NOT NULL COMMENT 'semail',
	spwd VARCHAR (50) NOT NULL COMMENT 'spwd',
	smid INT (11) NOT NULL COMMENT '所属专业',
	sbgdate VARCHAR (50) NOT NULL COMMENT '入学年份',
	seducation VARCHAR (50) NOT NULL COMMENT '学历',
	sflag INT (11) NOT NULL COMMENT '学生状态
     * 0未就业、1求职中、2已就业、3离职、4再次就业',
	PRIMARY KEY (sid)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT 'e_student';
