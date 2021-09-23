-- auto Generated on 2021-09-23
-- DROP TABLE IF EXISTS e_resume;
CREATE TABLE e_resume(
	rid INT (11) NOT NULL AUTO_INCREMENT COMMENT 'rid',
	rjobs VARCHAR (50) NOT NULL COMMENT '期望岗位',
	rprice DOUBLE (16,4) NOT NULL COMMENT '期望薪资',
	rcid INT (11) NOT NULL COMMENT '期望城市',
	rskill VARCHAR (50) NOT NULL COMMENT '技能',
	rexperience VARCHAR (50) NOT NULL COMMENT '经历',
	rsid INT (11) NOT NULL COMMENT '学生',
	PRIMARY KEY (rid)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT 'e_resume';
