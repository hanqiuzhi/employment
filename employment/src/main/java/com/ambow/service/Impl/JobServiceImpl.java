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
    public void  addJob(Job job) {
        jobDao.addJob(job);
    }

    @Override
    public void updateJob(Job job) {
        jobDao.updateJob(job);
    }

    @Override
    public void delJob(int jid) {
        jobDao.delJob(jid);
    }

    @Override
    public List<Job> selectJobAll() {
        return jobDao.selectJobAll();
    }

    @Override
    public Job selectJobById(int jid) {
        return jobDao.selectJobById(jid);
    }
}
