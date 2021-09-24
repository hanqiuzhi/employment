package com.ambow.entity;

public class City {
    private int cid;
    private String cname;
    private Province cpid;

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public Province getCpid() {
        return cpid;
    }

    public void setCpid(Province cpid) {
        this.cpid = cpid;
    }

    @Override
    public String toString() {
        return "City{" +
                "cid=" + cid +
                ", cname='" + cname + '\'' +
                ", cpid=" + cpid +
                '}';
    }
}
