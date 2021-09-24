package com.ambow.entity;

public class Major {
    private int mid;
    /**
     * 专业名称
     */
    private String mname;
    /**
     * 所属院系
     */
    private Faculty mfid;

    public int getMid() {
        return mid;
    }

    public void setMid(int mid) {
        this.mid = mid;
    }

    public String getMname() {
        return mname;
    }

    public void setMname(String mname) {
        this.mname = mname;
    }

    public Faculty getMfid() {
        return mfid;
    }

    public void setMfid(Faculty mfid) {
        this.mfid = mfid;
    }

    @Override
    public String toString() {
        return "Major{" +
                "mid=" + mid +
                ", mname='" + mname + '\'' +
                ", mfid=" + mfid +
                '}';
    }
}
