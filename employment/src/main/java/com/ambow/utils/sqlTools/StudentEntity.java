package com.ambow.utils.sqlTools;

public class StudentEntity {
    private Integer sid;
    private String sname;
    /**
     * 学号
     */
    private Integer sno;
    /**
     * 身份证号
     */
    private String sidcard;
    private Integer sage;
    private String ssex;
    private String sphone;
    private String semail;
    private String spwd;
    /**
     * 所属专业
     */
    private Integer smid;
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
    private Integer sflag;

}
