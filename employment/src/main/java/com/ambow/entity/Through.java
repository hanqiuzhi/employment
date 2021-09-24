package com.ambow.entity;

public class Through {
    private int tid;
    /**
     * 项目名称
     */
    private String tname;
    /**
     * 项目内容
     */
    private String tcontent;
    /**
     * 项目时间
     */
    private String ttime;
    /**
     * 简历id
     */
    private Resume trid;

    public int getTid() {
        return tid;
    }

    public void setTid(int tid) {
        this.tid = tid;
    }

    public String getTname() {
        return tname;
    }

    public void setTname(String tname) {
        this.tname = tname;
    }

    public String getTcontent() {
        return tcontent;
    }

    public void setTcontent(String tcontent) {
        this.tcontent = tcontent;
    }

    public String getTtime() {
        return ttime;
    }

    public void setTtime(String ttime) {
        this.ttime = ttime;
    }

    public Resume getTrid() {
        return trid;
    }

    public void setTrid(Resume trid) {
        this.trid = trid;
    }

    @Override
    public String toString() {
        return "Through{" +
                "tid=" + tid +
                ", tname='" + tname + '\'' +
                ", tcontent='" + tcontent + '\'' +
                ", ttime='" + ttime + '\'' +
                ", trid=" + trid +
                '}';
    }
}
