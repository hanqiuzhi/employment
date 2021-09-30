package com.ambow.controller;

import com.ambow.entity.Major;
import com.ambow.entity.Note;
import com.ambow.entity.Student;
import com.ambow.service.MajorService;
import com.ambow.service.StudentService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("student")
public class StudentController {

    @Resource
    private StudentService studentService;
    @Resource
    private MajorService majorService;

    @RequestMapping("selectMajorAll")
    public String selectMajorAll(Model model){
        List<Major> majorList = majorService.selectMajorAll();
        model.addAttribute("majorList",majorList);
        return "student_edit";
    }

    @RequestMapping("selectStudentAll")
    public String selectStudentAll(Model model){
        List<Student> studentList = studentService.selectStudentAll();
        model.addAttribute("studentList",studentList);
        return "student_list";
    }

    @RequestMapping("studentById")
    public String studentById(int sid,Model model){
        Student student=studentService.selectStudentById(sid);
        model.addAttribute("student",student);
        List<Major> major=majorService.selectMajorAll();
        model.addAttribute("majorList1",major);
        return "student_edit";
    }
    @RequestMapping("studentBySid")
    public String studentBySid(Model model, HttpSession session){

        Student student= (Student) session.getAttribute("student");
        model.addAttribute("student",student);
        List<Major> major=majorService.selectMajorAll();
        model.addAttribute("majorList1",major);
        return "student_edit";
    }
    @RequestMapping("studentUpdate")
    @ResponseBody
    public String studentUpdate(Student student,HttpSession session){
        int res=studentService.updateStudent(student);
        session.setAttribute("student",student);
        if(res>0){
            return "true";
        }return "false";
    }

    @RequestMapping("studentDel")
    @ResponseBody
    public String studentDel(int sid){
        int res=studentService.delStudent(sid);
        if(res>0){
            return "true";
        }return "false";
    }

}
