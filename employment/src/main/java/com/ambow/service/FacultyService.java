package com.ambow.service;

import com.ambow.entity.Faculty;

import java.util.List;

public interface FacultyService {
    public List<Faculty> selectFacultyAll();

    public Faculty selectFacultyById(int fid);

    public void updateFaculty(Faculty faculty);

    public void delFaculty(int fid);

    public void addFaculty(Faculty faculty);
}
