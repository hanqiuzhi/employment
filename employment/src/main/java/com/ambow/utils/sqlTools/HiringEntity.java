package com.ambow.utils.sqlTools;

import java.util.Date;

public class HiringEntity {
    private Integer hid;
    /**
     * 招聘名称
     */
    private String hname;
    /**
     * 招聘人数
     */
    private Integer hnum;
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
    private Integer hflag;
    /**
     * 招聘岗位
     */
    private Integer hjid;
}
