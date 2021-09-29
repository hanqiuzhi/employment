package com.ambow.dao;

import com.ambow.entity.Enterprise;
import org.apache.ibatis.annotations.Param;
import org.intellij.lang.annotations.PrintFormat;

import java.util.List;

public interface EnterpriseDao {
    List<Enterprise> selectEnterpriseAll();
    int addEnterprise(Enterprise enterprise);
    Enterprise selectEnterpriseById(int eid);
    int updateEnterprise(Enterprise enterprise);
    int delEnterprise(int eid);

    Enterprise selectEnterpriseByEno(@Param("emo") String eno,@Param("epwd") String epwd);

    int addEnterpriseSql(Enterprise enterprise);

    List<Enterprise> selectEnterpriseByFlag();
}
