package com.ambow.service.Impl;

import com.ambow.dao.StudentDao;
import com.ambow.entity.Student;
import com.ambow.service.StudentService;
import com.ambow.utils.ReadExcel;
import com.ambow.utils.sqlTools.MajorEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import java.util.List;

@Service
public class StudentServiceImpl implements StudentService {
    @Resource
    private StudentDao studentDao;

    @Override
    public Student selectStudentById(int sid) {
        return studentDao.selectStudentById(sid);
    }

    @Override
    public int updateStudent(Student student) {
        return studentDao.updateStudent(student);
    }

    @Override
    public List<Student> selectStudentAll() {
        return studentDao.selectStudentAll();
    }

    @Override
    public Student selectStudentBySno(String sno, String spwd) {
        return studentDao.selectStudentBySno(sno,spwd);
    }

    @Override
    public int addStudent(Student student) {
        return studentDao.addStudent(student);
    }

    @Override
    public int delStudent(int sid) {
        return studentDao.delStudent(sid);
    }

    @Override
    public String readExcelFile(MultipartFile file) {
        //创建处理EXCEL的类
        ReadExcel readExcel=new ReadExcel();
        //解析excel，获取上传的事件单
        List<Student> studentList = null;
        int insertResult = 0;
        String insertMsg = "";
        try {
            studentList = readExcel.getExcelInfo(file);
            //将excel中的数据转换到list里面
            //数据库插入
            for(Student student:studentList) {
                System.out.println("student"+student);
                studentDao.addStudent(student);
                insertResult=insertResult+1;
            }
            if(insertResult ==0) {
                insertMsg = "All insert false";
            }else if(insertResult == studentList.size()){
                insertMsg = "All insert success";
            }else {
                insertMsg = "Part insert success";
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.err.println("接受excel表格中的数据失败！！！");
        }
        return insertMsg;
    }

}
