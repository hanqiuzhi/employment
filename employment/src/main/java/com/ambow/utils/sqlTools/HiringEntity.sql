-- auto Generated on 2021-09-23
-- DROP TABLE IF EXISTS e_hiring;
CREATE TABLE e_hiring(
	hid INT (11) NOT NULL AUTO_INCREMENT COMMENT 'hid',
	hname VARCHAR (50) NOT NULL COMMENT '招聘名称',
	hnum INT (11) NOT NULL COMMENT '招聘人数',
	hmajor VARCHAR (50) NOT NULL COMMENT '专业',
	hexperience VARCHAR (50) NOT NULL COMMENT '学历',
	hprice DOUBLE (16,4) NOT NULL COMMENT '招聘薪资',
	hetime VARCHAR (50) NOT NULL COMMENT '招聘结束时间',
	hflag INT (11) NOT NULL COMMENT '招聘信息状态
     * 0未审核、1未通过、2进行中、3已过期',
	hjid INT (11) NOT NULL COMMENT '招聘岗位',
	PRIMARY KEY (hid)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT 'e_hiring';
