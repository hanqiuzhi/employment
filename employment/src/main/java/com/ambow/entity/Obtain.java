package com.ambow.entity;


public class Obtain {
    private int oid;
    /**
     * 学生信息
     */
    private Student osid;
    /**
     * 是否自主就业
     */
    private int oself;
    /**
     * 就业企业
     */
    private String oename;
    /**
     * 就业职位
     */
    protected String ojname;
    /**
     * 就业时间
     */
    private String otime;

    /**
     * 就业信息状态
     * 0未审核、2已通过、2未通过
     */
    private int oflag;

    public int getOid() {
        return oid;
    }

    public void setOid(int oid) {
        this.oid = oid;
    }

    public Student getOsid() {
        return osid;
    }

    public void setOsid(Student osid) {
        this.osid = osid;
    }

    public int getOself() {
        return oself;
    }

    public void setOself(int oself) {
        this.oself = oself;
    }

    public String getOename() {
        return oename;
    }

    public void setOename(String oename) {
        this.oename = oename;
    }

    public String getOjname() {
        return ojname;
    }

    public void setOjname(String ojname) {
        this.ojname = ojname;
    }

    public String getOtime() {
        return otime;
    }

    public void setOtime(String otime) {
        this.otime = otime;
    }

    public int getOflag() {
        return oflag;
    }

    public void setOflag(int oflag) {
        this.oflag = oflag;
    }

    @Override
    public String toString() {
        return "Obtain{" +
                "oid=" + oid +
                ", osid=" + osid +
                ", oself=" + oself +
                ", oename='" + oename + '\'' +
                ", ojname='" + ojname + '\'' +
                ", otime='" + otime + '\'' +
                ", oflag=" + oflag +
                '}';
    }
}
