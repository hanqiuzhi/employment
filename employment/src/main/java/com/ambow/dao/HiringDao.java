package com.ambow.dao;

import com.ambow.entity.Hiring;

import java.util.List;

public interface HiringDao {
    //招聘信息表

    //增加职位信息
    public void addHiring(Hiring hiring);
    //修改职位信息
    public void updateHiring(Hiring hiring);
    //删除职位信息
    public void delHiring(int hid);
    //查询职位信息 查全部
    public List<Hiring> selectHiringAll();
    //根据id查职位信息
    public Hiring selectJobById(int hid);
}
