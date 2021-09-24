package com.ambow.entity;

public class Student {
    private int sid;
    private String sname;
    /**
     * 学号
     */
    private int sno;
    /**
     * 身份证号
     */
    private String sidcard;
    private int sage;
    private String ssex;
    private String sphone;
    private String semail;
    private String spwd;
    /**
     * 所属专业
     */
    private Major smid;
    /**
     * 入学年份
     */
    private String sbgdate;
    /**
     * 学历
     */
    private String seducation;
    /**
     * 学生状态
     * 0未就业、1求职中、2已就业、3离职、4再次就业
     */
    private int sflag;

    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public int getSno() {
        return sno;
    }

    public void setSno(int sno) {
        this.sno = sno;
    }

    public String getSidcard() {
        return sidcard;
    }

    public void setSidcard(String sidcard) {
        this.sidcard = sidcard;
    }

    public int getSage() {
        return sage;
    }

    public void setSage(int sage) {
        this.sage = sage;
    }

    public String getSsex() {
        return ssex;
    }

    public void setSsex(String ssex) {
        this.ssex = ssex;
    }

    public String getSphone() {
        return sphone;
    }

    public void setSphone(String sphone) {
        this.sphone = sphone;
    }

    public String getSemail() {
        return semail;
    }

    public void setSemail(String semail) {
        this.semail = semail;
    }

    public String getSpwd() {
        return spwd;
    }

    public void setSpwd(String spwd) {
        this.spwd = spwd;
    }

    public Major getSmid() {
        return smid;
    }

    public void setSmid(Major smid) {
        this.smid = smid;
    }

    public String getSbgdate() {
        return sbgdate;
    }

    public void setSbgdate(String sbgdate) {
        this.sbgdate = sbgdate;
    }

    public String getSeducation() {
        return seducation;
    }

    public void setSeducation(String seducation) {
        this.seducation = seducation;
    }

    public int getSflag() {
        return sflag;
    }

    public void setSflag(int sflag) {
        this.sflag = sflag;
    }

    @Override
    public String toString() {
        return "Student{" +
                "sid=" + sid +
                ", sname='" + sname + '\'' +
                ", sno=" + sno +
                ", sidcard='" + sidcard + '\'' +
                ", sage=" + sage +
                ", ssex='" + ssex + '\'' +
                ", sphone='" + sphone + '\'' +
                ", semail='" + semail + '\'' +
                ", spwd='" + spwd + '\'' +
                ", smid=" + smid +
                ", sbgdate='" + sbgdate + '\'' +
                ", seducation='" + seducation + '\'' +
                ", sflag=" + sflag +
                '}';
    }
}
