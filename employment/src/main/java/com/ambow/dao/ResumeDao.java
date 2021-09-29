package com.ambow.dao;

import com.ambow.entity.Resume;

import java.util.List;

public interface ResumeDao {
     List<Resume> selectResumeAll();
     List<Resume> selectResumeBySid(int sid);
     int addResume(Resume resume);
     Resume selectResumeById(int rid);
     int updateResume(Resume resume);
     int delResume(int rid);

}
