package com.ambow.controller;

import com.ambow.entity.*;
import com.ambow.service.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("resume")
public class ResumeController {

    @Resource
    private ResumeService resumeService;
    @Resource
    private CityService cityService;
    @Resource
    private StudentService studentService;
    @Resource
    private ThroughService throughService;
    @RequestMapping("selectResumeAll")
    public String selectResumeAll(Model model){
        List<Resume> resumeList = resumeService.selectResumeAll();
        model.addAttribute("resumeList",resumeList);
        return "resume_list";
    }
    @RequestMapping("selectResumeBySid")
    public String selectResumeBySid(Model model, HttpSession session){
        Student student= (Student) session.getAttribute("student");

        List<Resume> resumeList = resumeService.selectResumeBySid(student.getSid());
        model.addAttribute("resumeList",resumeList);
        return "resume_list";
    }
    @RequestMapping("getrcidandrsid")
    public String getrcidandrsid(HttpServletRequest request,String method){
        List<City> list = cityService.selectCityAll();
        request.setAttribute("listCid",list);
        List<Student> list2 = studentService.selectStudentAll();
        request.setAttribute("listSid",list2);

        if (method.equals("edit")){
            return "forward:selectResumeById";
        }
        if (method.equals("add")){
            return "resume_add";
        }
        return null;
    }
    @RequestMapping("addResume")
    @ResponseBody
    public String addResume(Resume resume){
      int res=  resumeService.addResume(resume);
      if (res>0){
          return "true";
      }
        return "false";
    }
    @RequestMapping("delResume")
    @ResponseBody
    public String delGoods(int rid){
        int res=resumeService.delResume(rid);
        if (res>0){
            return "true";
        }
        return "false";
    }
    @RequestMapping("updateResume")
    @ResponseBody
    public String updateResume(Resume resume){
        int res=resumeService.updateResume(resume);
        if (res>0){
            return "true";
        }
        return "false";
    }
    @RequestMapping("selectResumeById")

    public String selectResumeById(int rid,Model model,String method){
        Resume resume=resumeService.selectResumeById(rid);
        model.addAttribute("resume",resume);
        if (method.equals("detail")){
            List<Through> throughList = throughService.selectThroughByIdandSid(rid,resume.getRsid().getSid());
            model.addAttribute("throughList",throughList);
            return "resume_detail";
        }
        if (method.equals("edit")){

        return "resume_edit";
        }
        return null;
    }

}
