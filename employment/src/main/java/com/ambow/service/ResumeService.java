package com.ambow.service;

import com.ambow.entity.Resume;

import java.util.List;

public interface ResumeService {
    List<Resume> selectResumeAll();
    List<Resume> selectResumeBySid(int sid);
    int addResume(Resume resume);
    Resume selectResumeById(int rid);
    int updateResume(Resume resume);
    int delResume(int rid);

}
