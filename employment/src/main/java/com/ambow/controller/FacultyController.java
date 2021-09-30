package com.ambow.controller;

import com.ambow.entity.Faculty;
import com.ambow.service.FacultyService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("faculty")
public class FacultyController {

    @Autowired
    private FacultyService facultyService;

//    @RequestMapping("selectFacultyAll")
//    public String selectFacultyAll(Model model){
//        List<Faculty> facultyList = facultyService.selectFacultyAll();
//        model.addAttribute("facultyList",facultyList);
//        return "faculty_list";
//    }
    @RequestMapping(value = "/selectFacultyAll")
    public String allCompanyController(Model model,@RequestParam(defaultValue = "1",required = true,value = "pageNo")Integer pageNo,
                                       @RequestParam(required = false,defaultValue = "5")Integer pageSize){

        PageHelper.startPage(pageNo, pageSize);
        List<Faculty> facultyList = facultyService.selectFacultyAll();
        PageInfo<Faculty> pageInfo=new PageInfo<Faculty>(facultyList);
        model.addAttribute("pageInfo",pageInfo);
        return "faculty_list";
    }


    @RequestMapping("addFaculty")
    @ResponseBody
    public String addFaculty(String fname){
        Faculty faculty=new Faculty();
        faculty.setFname(fname);
        int res=facultyService.addFaculty(faculty);
        if(res>0){
            return "true";
        }return "false";
    }
    @RequestMapping("checkFacultyName")
    public String  CheckChongMingController(String fname){
        int shu= facultyService.checkFacultyName(fname);
        if (shu>1){
            return "addFaculty";
        }else{
            return "faculty_list";
        }
    }
    @RequestMapping("delFaculty")
    @ResponseBody
    public String delFaculty(int fid){
        int res=facultyService.delFaculty(fid);
        if(res>0){
            return "true";
        }return "false";
    }
    @RequestMapping("selectFacultyById")
    public String selectFacultyById(int fid, HttpServletRequest request){
        Faculty faculty=facultyService.selectFacultyById(fid);
        request.setAttribute("faculty",faculty);
        return "faculty_edit";
    }
    @RequestMapping("updateFaculty")
    @ResponseBody
    public String updateFaculty(Faculty faculty){
        int res=facultyService.updateFaculty(faculty);
        if(res>0){
            return "true";
        }return "false";
    }

}
