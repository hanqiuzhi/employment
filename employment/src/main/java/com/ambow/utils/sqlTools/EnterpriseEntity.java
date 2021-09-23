package com.ambow.utils.sqlTools;

public class EnterpriseEntity {
    private Integer eid;
    private String ename;
    /**
     * 企业编号
     */
    private String eno;
    private String epwd;
    /**
     * 营业执照
     */
    private String elicense;
    /**
     * 企业信息
     */
    private String einfo;
    /**
     * 所在城市
     */
    private Integer ecid;
    private String ephone;
    private String eemail;
    /**
     * 企业状态
     * 0未审核、1已通过、2未通过
     */
    private Integer eflag;
}
