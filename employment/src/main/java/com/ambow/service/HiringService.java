package com.ambow.service;

import com.ambow.entity.Hiring;
import org.springframework.stereotype.Service;

import java.util.List;

public interface HiringService {
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
    public Hiring selectHiringById(int hid);
}
