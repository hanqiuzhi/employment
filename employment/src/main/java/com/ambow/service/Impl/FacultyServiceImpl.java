package com.ambow.service.Impl;

import com.ambow.dao.FacultyDao;
import com.ambow.entity.Faculty;
import com.ambow.service.FacultyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FacultyServiceImpl implements FacultyService {

    @Autowired
    private FacultyDao facultyDao;

    public List<Faculty> selectFacultyAll() {
        return facultyDao.selectFacultyAll();
    }

    public Faculty selectFacultyById(int fid) {
        return facultyDao.selectFacultyById(fid);
    }

    public int updateFaculty(Faculty faculty) {
       return facultyDao.updateFaculty(faculty);
    }

    public int  delFaculty(int fid) {
        return facultyDao.delFaculty(fid);
    }

    public int  addFaculty(Faculty faculty) {
        return facultyDao.addFaculty(faculty);
    }
}
