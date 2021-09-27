package com.ambow.controller;

import com.ambow.entity.Faculty;
import com.ambow.service.FacultyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("faculty")
public class FacultyController {

    @Autowired
    private FacultyService facultyService;

    @RequestMapping("selectFacultyAll")
    public String selectFacultyAll(Model model){
        List<Faculty> facultyList = facultyService.selectFacultyAll();
        model.addAttribute("facultyList",facultyList);
        return "faculty_list";
    }


}
