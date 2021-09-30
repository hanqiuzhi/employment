package com.ambow.service.Impl;

import com.ambow.dao.ObtainDao;
import com.ambow.entity.Obtain;
import com.ambow.service.ObtainService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ObtainServiceImpl implements ObtainService {

    @Resource
    private ObtainDao obtainDao;

    @Override
    public List<Obtain> selectObtainAll() {
        return obtainDao.selectObtainAll();
    }
    @Override
    public List<Obtain> selectObtainByFlag() {
        return obtainDao.selectObtainByFlag();
    }

    @Override
    public int addObtain(Obtain obtain) {
        return obtainDao.addObtain(obtain);
    }

    @Override
    public Obtain selectObtainById(int oid) {
        return obtainDao.selectObtainById(oid);
    }

    @Override
    public int updateObtain(Obtain obtain) {
        return obtainDao.updateObtain(obtain);
    }

    @Override
    public int delObtain(int oid) {
        return obtainDao.delObtain(oid);
    }
}
