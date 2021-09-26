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
@RequestMapping("university")
public class UniversityController {

    @Autowired
    private UniversityService universityService;

    @RequestMapping("selectUniversityAll")
    public String selectUniversityAll(Model model){
        List<University> universityList = universityService.selectUniversityAll();
        model.addAttribute("universityList",universityList);
        return "university_list";
    }

}
