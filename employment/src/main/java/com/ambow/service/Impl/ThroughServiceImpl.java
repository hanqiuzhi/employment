package com.ambow.service.Impl;

import com.ambow.dao.ThroughDao;
import com.ambow.entity.Resume;
import com.ambow.entity.Through;
import com.ambow.service.ThroughService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ThroughServiceImpl implements ThroughService {

    @Resource
    private ThroughDao throughDao;

    @Override
    public List<Through> selectThroughAll() {
        return throughDao.selectThroughAll();
    }

    @Override
    public int addThrough(Through through) {
        return throughDao.addThrough(through);
    }

    @Override
    public Through selectThroughById(int tid) {
        return throughDao.selectThroughById(tid);
    }

    @Override
    public int updateThrough(Through through) {
        return throughDao.updateThrough(through);
    }

    @Override
    public int delThrough(int tid) {
        return throughDao.delThrough(tid);
    }
    @Override
    public List<Through> selectThroughByIdandSid(int trid,int sid){return throughDao.selectThroughByIdandSid(trid,sid);}
}
