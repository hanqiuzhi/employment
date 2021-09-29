package com.ambow.service;

import com.ambow.entity.Resume;
import com.ambow.entity.Through;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ThroughService {
    List<Through> selectThroughAll();
    int addThrough(Through through);
    Through selectThroughById(int tid);
    int updateThrough(Through through);
    int delThrough(int tid);
    List<Through> selectThroughByIdandSid(int trid,int sid);

}
