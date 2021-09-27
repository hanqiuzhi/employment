package com.ambow.controller;

import com.ambow.entity.Enterprise;
import com.ambow.entity.Student;
import com.ambow.entity.University;
import com.ambow.service.EnterpriseService;
import com.ambow.service.StudentService;
import com.ambow.service.UniversityService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/login")
public class LoginController {

    @Resource
    private UniversityService universityService;
    @Resource
    private EnterpriseService enterpriseService;
    @Resource
    private StudentService studentService;

    @RequestMapping("/login")
    @ResponseBody
    public String login(String no, String pwd, int flag, Model model, HttpSession session){
        int res = 0;
        if(flag==0){
            System.out.println("登录...学校...");
            //学校的登录Service
            University university = universityService.selectUniversityByUno(no,pwd);
            if(university!=null){
                model.addAttribute("university",university);
                session.setAttribute("university",university);
                System.out.println(university);
                return "0";
            }
        }else if (flag==1){
            System.out.println("登录...企业...");
            //企业的登录Service
            Enterprise enterprise = enterpriseService.selectEnterpriseByEno(no,pwd);
            if(enterprise!=null){
                model.addAttribute("enterprise",enterprise);
                session.setAttribute("enterprise",enterprise);
                System.out.println(enterprise);
                return "0";
            }
        }else if (flag==2){
            System.out.println("登录...学生...");
            //学生的登录Service
            Student student = studentService.selectStudentBySno(no,pwd);
            if(student!=null){
                model.addAttribute("student",student);
                session.setAttribute("student",student);
                System.out.println(student);
                return "0";
            }
        }
        return "1";
    }

    @RequestMapping("back")
    @ResponseBody
    public String back(HttpSession session){
        session.removeAttribute("university");
        session.removeAttribute("enterprise");
        session.removeAttribute("student");
        if(session.getAttribute("university") == null &&
                session.getAttribute("enterprise") == null &&
                session.getAttribute("student") == null){
            return "true";
        }
        return "false";
    }
}
