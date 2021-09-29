package com.ambow.dao;

import com.ambow.entity.Resume;
import com.ambow.entity.Through;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ThroughDao {
     List<Through> selectThroughAll();
     int addThrough(Through through);
     Through selectThroughById(int tid);
     int updateThrough(Through through);
     int delThrough(int tid);
     List<Through> selectThroughByIdandSid(@Param("trid") int trid, @Param("sid") int sid);

}
