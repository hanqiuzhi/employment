-- auto Generated on 2021-09-23
-- DROP TABLE IF EXISTS e_enterprise;
CREATE TABLE e_enterprise(
	eid INT (11) NOT NULL AUTO_INCREMENT COMMENT 'eid',
	ename VARCHAR (50) NOT NULL COMMENT 'ename',
	eno VARCHAR (50) NOT NULL COMMENT '企业编号',
	epwd VARCHAR (50) NOT NULL COMMENT 'epwd',
	elicense VARCHAR (50) NOT NULL COMMENT '营业执照',
	einfo VARCHAR (255) NOT NULL COMMENT '企业信息',
	ecid INT (11) NOT NULL COMMENT '所在城市',
	ephone VARCHAR (50) NOT NULL COMMENT 'ephone',
	eemail VARCHAR (50) NOT NULL COMMENT 'eemail',
	eflag INT (11) NOT NULL COMMENT '0未审核、1已通过、2未通过',
	PRIMARY KEY (eid)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT 'e_enterprise';
