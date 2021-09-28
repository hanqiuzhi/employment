package com.ambow.controller;

import com.ambow.entity.City;
import com.ambow.entity.Enterprise;
import com.ambow.entity.Student;
import com.ambow.entity.University;
import com.ambow.service.CityService;
import com.ambow.service.EnterpriseService;
import com.ambow.service.StudentService;
import com.ambow.service.UniversityService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.UUID;

@Controller
@RequestMapping("/login")
public class LoginController {

    @Resource
    private UniversityService universityService;
    @Resource
    private EnterpriseService enterpriseService;
    @Resource
    private StudentService studentService;
    @Resource
    private CityService cityService;

    @RequestMapping("/login")
    @ResponseBody
    public String login(String no, String pwd, int flag, Model model, HttpSession session){
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

    @RequestMapping("/register")
    @ResponseBody
    public String register(Enterprise enterprise, MultipartFile file) throws IOException {

        System.out.println("====================="+enterprise );
        System.out.println("====================="+file);
        String filename = file.getOriginalFilename(); // 取后缀
        String newName = UUID.randomUUID().toString();
        String str[] = filename.split("\\.");
        int len = str.length-1 ;
        String houzui =  str[len];
        String  filename1 = newName+"."+houzui;
        //String path1="D:\\Program Files\\idea_workspace\\ssm_ajax_down_upload\\ssm_ajax_down_upload\\images";
        String path="F:\\学习\\大学四年级\\基地实训\\idea_project\\20210922\\employment\\src\\main\\webapp\\img";
        System.out.println(path);
        File file1 = new File(path,filename1);
        if(!file1.getParentFile().exists()){
            file1.getParentFile().mkdir();
        }
        file.transferTo(file1);
        enterprise.setElicense(filename1);
        enterprise.setEflag(0);
        int res = enterpriseService.addEnterprise(enterprise);
        if(res>0){
            return "0";
        }
         return "1";
    }

}
