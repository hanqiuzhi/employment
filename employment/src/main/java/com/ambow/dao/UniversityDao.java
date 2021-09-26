package com.ambow.dao;

import com.ambow.entity.University;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UniversityDao {

    public List<University> selectUniversityAll();

    public void addUniversity(University uname);

    public void delUniversity(int uid);

    public void updateUniversity(University university);

    public University selectUniversityById(int uid);

    public University selectUniversityByUno(@Param("uno")String uno, @Param("upwd")String upwd);
}
