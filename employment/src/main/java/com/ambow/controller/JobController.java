package com.ambow.controller;

import com.ambow.entity.Job;
import com.ambow.service.JobService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class JobController {
    @Resource
    private JobService jobService;

    @RequestMapping("allJob")
    public String selectJobAll(HttpServletRequest request){
        List<Job> list=jobService.selectJobAll();
        request.setAttribute("listJob",list);
        return "allJob";
    }
    @RequestMapping("addJob")
    public String addJob(Job job){
        jobService.addJob(job);
        return "index";
    }
    @RequestMapping("delJob")
    public String delJob(int id){
        jobService.delJob(id);
        return "forward:allJob";
    }
    @RequestMapping("selectJobById")
    public String selectJobById(int id, Model model){
        Job job=jobService.selectJobById(id);
        model.addAttribute("job",job);
        //model.addAttribute("listJob",jobService);
        return "updateJob";
    }
    @RequestMapping("updatJob")
    public String updateJob(Job job){
        jobService.updateJob(job);
        return "foward:allJob";
    }

}
