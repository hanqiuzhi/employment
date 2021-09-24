package com.ambow.entity;

public class Resume {
    private int rid;
    /**
     * 期望岗位
     */
    private String rjobs;
    /**
     * 期望薪资
     */
    private Double rprice;
    /**
     * 期望城市
     */
    private City rcid;
    /**
     * 技能
     */
    private String rskill;
    /**
     * 学生
     */
    private Student rsid;

    public int getRid() {
        return rid;
    }

    public void setRid(int rid) {
        this.rid = rid;
    }

    public String getRjobs() {
        return rjobs;
    }

    public void setRjobs(String rjobs) {
        this.rjobs = rjobs;
    }

    public Double getRprice() {
        return rprice;
    }

    public void setRprice(Double rprice) {
        this.rprice = rprice;
    }

    public City getRcid() {
        return rcid;
    }

    public void setRcid(City rcid) {
        this.rcid = rcid;
    }

    public String getRskill() {
        return rskill;
    }

    public void setRskill(String rskill) {
        this.rskill = rskill;
    }

    public Student getRsid() {
        return rsid;
    }

    public void setRsid(Student rsid) {
        this.rsid = rsid;
    }

    @Override
    public String toString() {
        return "Resume{" +
                "rid=" + rid +
                ", rjobs='" + rjobs + '\'' +
                ", rprice=" + rprice +
                ", rcid=" + rcid +
                ", rskill='" + rskill + '\'' +
                ", rsid=" + rsid +
                '}';
    }
}
