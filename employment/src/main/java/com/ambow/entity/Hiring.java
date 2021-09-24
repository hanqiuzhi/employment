package com.ambow.entity;

public class Hiring {
    private int hid;
    /**
     * 招聘名称
     */
    private String hname;
    /**
     * 招聘人数
     */
    private int hnum;
    /**
     * 专业
     */
    private String hmajor;
    /**
     * 学历
     */
    private String hexperience;
    /**
     * 招聘薪资
     */
    private Double hprice;
    /**
     * 招聘结束时间
     */
    private String hetime;
    /**
     * 招聘信息状态
     * 0未审核、1未通过、2进行中、3已过期
     */
    private int hflag;
    /**
     * 招聘岗位
     */
    private Job hjid;

    public int getHid() {
        return hid;
    }

    public void setHid(int hid) {
        this.hid = hid;
    }

    public String getHname() {
        return hname;
    }

    public void setHname(String hname) {
        this.hname = hname;
    }

    public int getHnum() {
        return hnum;
    }

    public void setHnum(int hnum) {
        this.hnum = hnum;
    }

    public String getHmajor() {
        return hmajor;
    }

    public void setHmajor(String hmajor) {
        this.hmajor = hmajor;
    }

    public String getHexperience() {
        return hexperience;
    }

    public void setHexperience(String hexperience) {
        this.hexperience = hexperience;
    }

    public Double getHprice() {
        return hprice;
    }

    public void setHprice(Double hprice) {
        this.hprice = hprice;
    }

    public String getHetime() {
        return hetime;
    }

    public void setHetime(String hetime) {
        this.hetime = hetime;
    }

    public int getHflag() {
        return hflag;
    }

    public void setHflag(int hflag) {
        this.hflag = hflag;
    }

    public Job getHjid() {
        return hjid;
    }

    public void setHjid(Job hjid) {
        this.hjid = hjid;
    }

    @Override
    public String toString() {
        return "Hiring{" +
                "hid=" + hid +
                ", hname='" + hname + '\'' +
                ", hnum=" + hnum +
                ", hmajor='" + hmajor + '\'' +
                ", hexperience='" + hexperience + '\'' +
                ", hprice=" + hprice +
                ", hetime='" + hetime + '\'' +
                ", hflag=" + hflag +
                ", hjid=" + hjid +
                '}';
    }
}
