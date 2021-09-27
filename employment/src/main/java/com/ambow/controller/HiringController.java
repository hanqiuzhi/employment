package com.ambow.controller;

import com.ambow.entity.Hiring;
import com.ambow.entity.Job;
import com.ambow.service.HiringService;
import com.ambow.service.JobService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.net.PortUnreachableException;
import java.util.List;

@Controller
@RequestMapping("hiring")
public class HiringController {

    @Resource
    private HiringService hiringService;

    @Resource
    private JobService jobService;

    @RequestMapping("selectHiringAll")
    public String selectHiringAll(Model model){
        List<Hiring> hiringList = hiringService.selectHiringAll();
        model.addAttribute("hiringList",hiringList);
        return "hiring_list";
    }
    @RequestMapping("showAllJob")
    public String allJob(HttpServletRequest request){
        List<Job> list=jobService.selectJobAll();
        request.setAttribute("jobList",list);
        return "hiring_add";
    }
    @RequestMapping("addHiring")
    @ResponseBody
    public String addHiring(Hiring hiring){
        int res=hiringService.addHiring(hiring);
        if(res>0){
            return "true";
        }return "false";
    }
    @RequestMapping("updateHiring")
    public String updateHiring(Hiring hiring){
        int res=hiringService.updateHiring(hiring);
        if(res>0){
            return "true";
        }return "false";
    }
    @RequestMapping("delHiring")
    @ResponseBody
    public String delHiring(int hid){
        int res=hiringService.delHiring(hid);
        if(res>0){
            return "true";
        }return "false";
    }
    @RequestMapping("selectHiringById")
    public String selectHiringById(int hid,HttpServletRequest request){
        Hiring hiring=hiringService.selectHiringById(hid);
        request.setAttribute("hiring",hiring);
        List<Job> list=jobService.selectJobAll();
        request.setAttribute("jobList",list);
        return "hiring_edit";
    }

}
