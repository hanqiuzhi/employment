package com.ambow.service;

import com.ambow.entity.Major;

import java.util.List;

public interface MajorService {
    public List<Major> selectMajorAll();

    public Major selectMajorById(int mid);

    public int updateMajor(Major major);

    public int delMajor(int mid);

    public int addMajor(Major major);
}
