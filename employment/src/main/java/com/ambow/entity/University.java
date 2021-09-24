package com.ambow.entity;

public class University {
    private int uid;
    private String uname;
    private int uno;
    private String upwd;

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public int getUno() {
        return uno;
    }

    public void setUno(int uno) {
        this.uno = uno;
    }

    public String getUpwd() {
        return upwd;
    }

    public void setUpwd(String upwd) {
        this.upwd = upwd;
    }

    @Override
    public String toString() {
        return "University{" +
                "uid=" + uid +
                ", uname='" + uname + '\'' +
                ", uno=" + uno +
                ", upwd='" + upwd + '\'' +
                '}';
    }
}
