package com.ambow.entity;

public class Enterprise {
    private int eid;
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
    private City ecid;
    private String ephone;
    private String eemail;
    /**
     * 企业状态
     * 0未审核、1已通过、2未通过
     */
    private int eflag;

    public int getEid() {
        return eid;
    }

    public void setEid(int eid) {
        this.eid = eid;
    }

    public String getEname() {
        return ename;
    }

    public void setEname(String ename) {
        this.ename = ename;
    }

    public String getEno() {
        return eno;
    }

    public void setEno(String eno) {
        this.eno = eno;
    }

    public String getEpwd() {
        return epwd;
    }

    public void setEpwd(String epwd) {
        this.epwd = epwd;
    }

    public String getElicense() {
        return elicense;
    }

    public void setElicense(String elicense) {
        this.elicense = elicense;
    }

    public String getEinfo() {
        return einfo;
    }

    public void setEinfo(String einfo) {
        this.einfo = einfo;
    }

    public City getEcid() {
        return ecid;
    }

    public void setEcid(City ecid) {
        this.ecid = ecid;
    }

    public String getEphone() {
        return ephone;
    }

    public void setEphone(String ephone) {
        this.ephone = ephone;
    }

    public String getEemail() {
        return eemail;
    }

    public void setEemail(String eemail) {
        this.eemail = eemail;
    }

    public int getEflag() {
        return eflag;
    }

    public void setEflag(int eflag) {
        this.eflag = eflag;
    }

    @Override
    public String toString() {
        return "Enterprise{" +
                "eid=" + eid +
                ", ename='" + ename + '\'' +
                ", eno='" + eno + '\'' +
                ", epwd='" + epwd + '\'' +
                ", elicense='" + elicense + '\'' +
                ", einfo='" + einfo + '\'' +
                ", ecid=" + ecid +
                ", ephone='" + ephone + '\'' +
                ", eemail='" + eemail + '\'' +
                ", eflag=" + eflag +
                '}';
    }
}
