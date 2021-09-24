package com.ambow.entity;

public class Job {
    private int jid;
    /**
     * 岗位名称
     */
    private String jname;
    /**
     * 岗位信息
     */
    private String jinfo;
    /**
     * 所属企业
     */
    private Enterprise jeid;

    public int getJid() {
        return jid;
    }

    public void setJid(int jid) {
        this.jid = jid;
    }

    public String getJname() {
        return jname;
    }

    public void setJname(String jname) {
        this.jname = jname;
    }

    public String getJinfo() {
        return jinfo;
    }

    public void setJinfo(String jinfo) {
        this.jinfo = jinfo;
    }

    public Enterprise getJeid() {
        return jeid;
    }

    public void setJeid(Enterprise jeid) {
        this.jeid = jeid;
    }

    @Override
    public String toString() {
        return "Job{" +
                "jid=" + jid +
                ", jname='" + jname + '\'' +
                ", jinfo='" + jinfo + '\'' +
                ", jeid=" + jeid +
                '}';
    }
}
