package com.ambow.service.Impl;

import com.ambow.dao.UniversityDao;
import com.ambow.entity.University;
import com.ambow.service.UniversityService;
import com.ambow.utils.sqlTools.UniversityEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UniversityServiceImpl implements UniversityService {

    @Autowired
    private UniversityDao universityDao;

    public List<University> selectUniversityAll(){
        return universityDao.selectUniversityAll();
    }

    public int addUniversity(University university){
        return universityDao.addUniversity(university);
    }

    public int delUniversity(int uid){
        return universityDao.delUniversity(uid);
    }

    public int updateUniversity(University university){
        return universityDao.updateUniversity(university);
    }

    public University selectUniversityById(int uid){
        return universityDao.selectUniversityById(uid);
    }

    public University selectUniversityByUno(String uno,String upwd){
        return universityDao.selectUniversityByUno(uno,upwd); 
    }
}
