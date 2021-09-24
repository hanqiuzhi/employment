package com.ambow.dao;
import com.ambow.entity.Major;

import java.util.List;

public interface MajorDao {

    public List<Major> selectMajorAll();

    public Major selectMajorById(int mid);

    public void updateMajor(Major major);

    public void delMajor(int mid);

    public void addMajor(Major major);

}
