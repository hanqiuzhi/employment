-- auto Generated on 2021-09-23
-- DROP TABLE IF EXISTS e_faculty;
CREATE TABLE e_faculty(
	fid INT (11) NOT NULL AUTO_INCREMENT COMMENT '院系',
	fname VARCHAR (50) NOT NULL COMMENT 'fname',
	PRIMARY KEY (fid)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT 'e_faculty';
