package com.ambow.service.Impl;

import com.ambow.dao.JobDao;
import com.ambow.entity.Job;
import com.ambow.service.JobService;
import org.springframework.stereotype.Service;


import javax.annotation.Resource;
import java.util.List;

@Service
public class JobServiceImpl implements JobService {

    @Resource
    private JobDao jobDao;

    @Override
    public int addJob(Job job) {
        return  jobDao.addJob(job);
    }

    @Override
    public int updateJob(Job job) {
        return  jobDao.updateJob(job);
    }

    @Override
    public int  delJob(int jid) {
        return jobDao.delJob(jid);
    }

    @Override
    public List<Job> selectJobAll() {
        return jobDao.selectJobAll();
    }

    @Override
    public Job selectJobById(int jid) {
        return jobDao.selectJobById(jid);
    }

    @Override
    public Job selectJobByJname(String jname) {
        return jobDao.selectJobByJname(jname);
    }
}
