package com.ambow.controller;

import com.ambow.entity.University;
import com.ambow.service.UniversityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class UniversityController {

    @Autowired
    private UniversityService universityService;

    @RequestMapping("selectUniversityAll")
    public String selectUniversityAll(Model aa){
        List<University> list = universityService.selectUniversityAll();
        aa.addAttribute("listUniversity",list);
        return "selectUniversityAll";
    }

    @RequestMapping("addUniversity")
    public String addUniversity(University university){
        universityService.addUniversity(university);
        return "addUniversity";
    }

    @RequestMapping("delUniversity")
    public String delUniversity(int uid){
        universityService.delUniversity(uid);
        return "forward:allUniversity";
    }

    @RequestMapping("updateUniversity")
    public String updateUniversity(University university){
        universityService.updateUniversity(university);
        return "forward:allUniversity";
    }

    @RequestMapping("selectUniversityById")
    public String selectUniversityById(int uid,Model aa){
        University university = universityService.selectUniversityById(uid);
        aa.addAttribute("university",university);
        return "updateUniversity";
    }

    @RequestMapping("selectUniversityByUno")
    public String byunoUniversityController(String uno, String upwd, HttpSession session){
        University university = universityService.selectUniversityByUno(uno,upwd);
        if(university!=null){
            session.setAttribute("login",university);
            return "index";
        }else {
            return "login";
        }
    }

}
