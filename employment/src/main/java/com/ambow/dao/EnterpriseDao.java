package com.ambow.dao;

import com.ambow.entity.Enterprise;

import java.util.List;

public interface EnterpriseDao {
    List<Enterprise> selectEnterpriseAll();
    int addEnterprise(Enterprise enterprise);
    Enterprise selectEnterpriseById(int eid);
    int updateEnterprise(Enterprise enterprise);
    int delEnterprise(int eid);
}
