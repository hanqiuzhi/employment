package com.ambow.controller;

import com.ambow.entity.Faculty;
import com.ambow.service.FacultyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class FacultyController {

    @Autowired
    private FacultyService facultyService;

    @RequestMapping("selectFacultyAll")
    public String selectFacultyAll(Model aa){
        List<Faculty> list = facultyService.selectFacultyAll();
        aa.addAttribute("listFaculty",list);
        return "allFaculty";
    }

    @RequestMapping("addFaculty")
    public String addFacultyController(Faculty faculty){
        facultyService.addFaculty(faculty);
        return "addFaculty";
    }

    @RequestMapping("delFaculty")
    public String delFacultyController(int fid){
        facultyService.delFaculty(fid);
        return "forward:allFaculty";
    }

    @RequestMapping("updateFaculty")
    public String updateFacultyController(Faculty faculty){
        facultyService.updateFaculty(faculty);
        return "forward:allFaculty";
    }

    @RequestMapping("byidFaculty")
    public String byidFacultyController(int fid,Model aa){
        Faculty faculty = facultyService.selectFacultyById(fid);
        aa.addAttribute("faculty",faculty);
        return "updateFaculty";
    }

}
