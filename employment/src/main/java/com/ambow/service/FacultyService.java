package com.ambow.service;

import com.ambow.dao.FacultyDao;
import com.ambow.entity.Faculty;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class FacultyService {

    @Autowired
    private FacultyDao facultyDao;

    public List<Faculty> selectFacultyAll() {
        return facultyDao.selectFacultyAll();
    }

    public Faculty selectFacultyById(int fid) {
        return facultyDao.selectFacultyById(fid);
    }

    public void updateFaculty(Faculty faculty) {
        facultyDao.updateFaculty(faculty);
    }

    public void delFaculty(int fid) {
        facultyDao.delFaculty(fid);
    }

    public void addFaculty(Faculty faculty) {
        facultyDao.addFaculty(faculty);
    }
}
