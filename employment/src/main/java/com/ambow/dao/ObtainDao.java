package com.ambow.dao;

import com.ambow.entity.Obtain;

import java.util.List;

public interface ObtainDao {
    List<Obtain> selectObtainAll();
    List<Obtain> selectObtainByFlag();
    int addObtain(Obtain obtain);
    Obtain selectObtainById(int oid);
    int updateObtain(Obtain obtain);
    int delObtain(int oid);
}
