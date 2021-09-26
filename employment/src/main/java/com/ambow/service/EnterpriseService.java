package com.ambow.service;

import com.ambow.entity.Enterprise;

import java.util.List;

public interface EnterpriseService {
    List<Enterprise> selectEnterpriseAll();
    int addEnterprise(Enterprise enterprise);
    Enterprise selectEnterpriseById(int eid);
    int updateEnterprise(Enterprise enterprise);
    int delEnterprise(int eid);

    Enterprise selectEnterpriseByEno(String eno, String epwd);
}
