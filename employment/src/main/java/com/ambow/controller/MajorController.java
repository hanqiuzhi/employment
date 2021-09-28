package com.ambow.controller;

import com.ambow.entity.Faculty;
import com.ambow.entity.Major;
import com.ambow.service.FacultyService;
import com.ambow.service.MajorService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("major")
public class MajorController {

    @Resource
    private MajorService majorService;
    @Resource
    private FacultyService facultyService;

    @RequestMapping("selectMajorAll")
    public String selectMajorAll(Model model){
        List<Major> majorList = majorService.selectMajorAll();
        model.addAttribute("majorList",majorList);
        return "major_list";
    }
    @RequestMapping("showAllFaculty")
    public String allFaculty(Model model){
        List<Faculty> list=facultyService.selectFacultyAll();
        model.addAttribute("facultyList",list);
        return "major_add";
    }
    @RequestMapping("addMajor")
    @ResponseBody
    public String addMajor(Major major){
        int res=majorService.addMajor(major);
        if(res>0){
            return "true";
        }return "false";
    }
    @RequestMapping("delMajor")
    @ResponseBody
    public String delMajor(int mid){
        int res=majorService.delMajor(mid);
        if(res>0){
            return "true";
        }return "false";
    }
    @RequestMapping("selectMajorById")
    public String selectMajorById(int mid, HttpServletRequest request){
        Major major=majorService.selectMajorById(mid);
        request.setAttribute("major",major);
        List<Faculty> list=facultyService.selectFacultyAll();
        request.setAttribute("facultyList1",list);
        System.out.println(list);
        return "major_edit";

    }
    @RequestMapping("updateMajor")
    @ResponseBody
    public String updateMajor(Major major){
        int res=majorService.updateMajor(major);
        if(res>0){
            return "true";
        }return "false";
    }
}
