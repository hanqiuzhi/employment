package com.ambow.controller;

import com.ambow.entity.Student;
import com.ambow.service.StudentService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("student")
public class StudentController {

    @Resource
    private StudentService studentService;

    @RequestMapping("selectStudentAll")
    public String selectStudentAll(Model model){
        List<Student> studentList = studentService.selectStudentAll();
        model.addAttribute("studentList",studentList);
        return "student_list";
    }

}
