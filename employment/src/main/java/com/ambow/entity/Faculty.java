package com.ambow.entity;

public class Faculty {
    /**
     * 院系
     */
    private int fid;
    private String fname;

    public int getFid() {
        return fid;
    }

    public void setFid(int fid) {
        this.fid = fid;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    @Override
    public String toString() {
        return "Faculty{" +
                "fid=" + fid +
                ", fname='" + fname + '\'' +
                '}';
    }
}
