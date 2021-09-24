package com.ambow.dao;

import com.ambow.entity.Faculty;

import java.util.List;

public interface FacultyDao {
    public List<Faculty> selectFacultyAll();

    public Faculty selectFacultyById(int fid);

    public void updateFaculty(Faculty faculty);

    public void delFaculty(int fid);

    public void addFaculty(Faculty faculty);
}
