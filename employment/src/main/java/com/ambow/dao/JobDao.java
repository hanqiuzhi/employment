package com.ambow.dao;

import com.ambow.entity.Hiring;
import com.ambow.entity.Job;

import java.util.List;

public interface JobDao {
    //岗位表
    //增加岗位
    public int addJob(Job job);
    //修改岗位
    public int updateJob(Job job);
    //删除岗位
    public int delJob(int jid);
    //查询岗位 查全部
    public List<Job> selectJobAll();
    //根据id查
    public Job selectJobById(int jid);
    //根据岗位名称查
    public Job selectJobByJname(String jname);


}
