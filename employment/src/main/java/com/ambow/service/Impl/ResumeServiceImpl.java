package com.ambow.service.Impl;

import com.ambow.dao.ResumeDao;
import com.ambow.entity.Resume;
import com.ambow.service.ResumeService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ResumeServiceImpl implements ResumeService {

    @Resource
    private ResumeDao resumeDao;


    @Override
    public List<Resume> selectResumeAll() {
        return resumeDao.selectResumeAll();
    }
    @Override
    public List<Resume> selectResumeBySid(int sid) {
        return resumeDao.selectResumeBySid(sid);
    }

    @Override
    public int addResume(Resume resume) {
        return resumeDao.addResume(resume);
    }

    @Override
    public Resume selectResumeById(int rid) {
        return resumeDao.selectResumeById(rid);
    }

    @Override
    public int updateResume(Resume resume) {
        return resumeDao.updateResume(resume);
    }

    @Override
    public int delResume(int rid) {
        return resumeDao.delResume(rid);
    }
}
