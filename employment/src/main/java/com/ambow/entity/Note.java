package com.ambow.entity;

public class Note {
    private int nid;
    /**
     * 学生id
     */
    private Student nsid;
    /**
     * 招聘信息id
     */
    private Hiring nhid;
    /**
     * 记录状态
     * 0未面试、1未通过、2已通过3、未入职4、已入职
     */
    private int nflag;
}
