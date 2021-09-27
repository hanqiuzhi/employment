package com.ambow.controller;

import com.ambow.entity.Province;
import com.ambow.entity.Resume;
import com.ambow.service.ProvinceService;
import com.ambow.service.ResumeService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("resume")
public class ResumeController {

    @Resource
    private ResumeService resumeService;

    @RequestMapping("selectResumeAll")
    public String selectResumeAll(Model model){
        List<Resume> resumeList = resumeService.selectResumeAll();
        model.addAttribute("resumeList",resumeList);
        return "resume_list";
    }


}
