package com.ambow.controller;

import com.ambow.entity.University;
import com.ambow.service.UniversityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
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

    @RequestMapping("updateUniversity")
    @ResponseBody
    public String updateUniversity(University university){
        int res = universityService.updateUniversity(university);
        if(res>0){
            return "true";
        }return "false";
    }

    @RequestMapping("selectUniversityById")
    public String selectProvinceById(int uid, HttpServletRequest request ){
        University university = universityService.selectUniversityById(uid);
        request.setAttribute("university",university);
        return "university_edit";
    }

}
