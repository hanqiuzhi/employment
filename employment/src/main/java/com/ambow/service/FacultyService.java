package com.ambow.service;

import com.ambow.entity.Faculty;

import java.util.List;

public interface FacultyService {
    public List<Faculty> selectFacultyAll();

    public Faculty selectFacultyById(int fid);

    public int updateFaculty(Faculty faculty);

    public int delFaculty(int fid);

    public int addFaculty(Faculty faculty);
}
