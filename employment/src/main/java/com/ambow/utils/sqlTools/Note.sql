-- auto Generated on 2021-09-23
-- DROP TABLE IF EXISTS e_note;
CREATE TABLE e_note(
	nid INT (11) NOT NULL AUTO_INCREMENT COMMENT 'nid',
	nsid INT (11) NOT NULL COMMENT '学生id',
	nhid INT (11) NOT NULL COMMENT '招聘信息id',
	nflag INT (11) NOT NULL COMMENT '记录状态
     * 0未面试、1未通过、2已通过3、未入职4、已入职',
	PRIMARY KEY (nid)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT 'e_note';
