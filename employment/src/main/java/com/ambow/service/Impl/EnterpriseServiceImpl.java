package com.ambow.service.Impl;

import com.ambow.dao.EnterpriseDao;
import com.ambow.entity.Enterprise;
import com.ambow.service.EnterpriseService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class EnterpriseServiceImpl implements EnterpriseService {
   @Resource
   private EnterpriseDao enterpriseDao;
    @Override
    public List<Enterprise> selectEnterpriseAll() {
        return enterpriseDao.selectEnterpriseAll() ;
    }

    @Override
    public int addEnterprise(Enterprise enterprise) {
        return enterpriseDao.addEnterprise(enterprise);
    }

    @Override
    public Enterprise selectEnterpriseById(int eid) {
        return enterpriseDao.selectEnterpriseById(eid);
    }

    @Override
    public int updateEnterprise(Enterprise enterprise) {
        return enterpriseDao.updateEnterprise(enterprise);
    }

    @Override
    public int delEnterprise(int eid) {
        return enterpriseDao.delEnterprise(eid);
    }

    @Override
    public Enterprise selectEnterpriseByEno(String eno, String epwd) {
        return enterpriseDao.selectEnterpriseByEno(eno,epwd);
    }

    @Override
    public int addEnterpriseSql(Enterprise enterprise) {
        return enterpriseDao.addEnterpriseSql(enterprise);
    }

    @Override
    public List<Enterprise> selectEnterpriseByFlag() {
        return enterpriseDao.selectEnterpriseByFlag();
    }

    @Override
    public List<Enterprise> selectEnterpriseByCid(int ecid) {
        return enterpriseDao.selectEnterpriseByCid(ecid);
    }

}
