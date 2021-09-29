package com.ambow.dao;

import com.ambow.entity.Hiring;
import com.ambow.entity.Job;
import org.apache.ibatis.annotations.Param;

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
    //查询岗位 根据公司id 查全部
    public List<Job> selectenJobAll(@Param("jeid") int jeid);

    //查询本公司的所有的职位
    public List<Job> selectJobOnly(int eid);

}
