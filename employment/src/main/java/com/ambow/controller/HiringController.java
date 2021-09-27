package com.ambow.controller;

import com.ambow.entity.Hiring;
import com.ambow.entity.Job;
import com.ambow.service.HiringService;
import com.ambow.service.JobService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class HiringController {
    @Resource
    private HiringService hiringService;
    @Resource
    private JobService jobService;

    @RequestMapping("showAllJob")
    public String allJob(HttpServletRequest request){
        List<Job> list=jobService.selectJobAll();
        request.setAttribute("listJob",list);
        return "addHiring";
    }
    @RequestMapping("allHiring")
    public String selectHiringAll(HttpServletRequest request){
        List<Hiring> list=hiringService.selectHiringAll();
        request.setAttribute("listHiring",list);
        return "allHiring";
    }

    @RequestMapping("addHiring")
    public String addHirng(Hiring hiring){
        hiringService.addHiring(hiring);
        return "index";
    }

    @RequestMapping("delHiring")
    public String delHiring(int id){
        hiringService.delHiring(id);
        return "forward:allHiring";
    }
    @RequestMapping("selectHiringById")
    public String selectHiringById(int id, Model model){
        Hiring hiring=hiringService.selectHiringById(id);
        model.addAttribute("hiring",hiring);
        model.addAttribute("listJob",jobService.selectJobAll());
        return "updateHiring";
    }
    @RequestMapping("updateHiring")
    public String updateHiring(Hiring hiring){
        hiringService.updateHiring(hiring);
        return "forward:allHiring";
    }
}
