package com.ambow.controller;

import com.ambow.entity.Job;
import com.ambow.service.JobService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("job")
public class JobController {

    @Resource
    private JobService jobService;

    @RequestMapping("selectJobAll")
    public String selectJobAll(Model model){
        List<Job> jobList = jobService.selectJobAll();
        model.addAttribute("jobList",jobList);
        return "job_list";
    }
}
