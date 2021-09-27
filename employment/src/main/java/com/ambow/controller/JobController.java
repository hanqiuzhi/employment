package com.ambow.controller;

import com.ambow.entity.Enterprise;
import com.ambow.entity.Job;
import com.ambow.service.EnterpriseService;
import com.ambow.service.JobService;
import org.omg.CORBA.PUBLIC_MEMBER;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("job")
public class JobController {

    @Resource
    private JobService jobService;
    @Resource
    private EnterpriseService enterpriseService;

    @RequestMapping("selectJobAll")
    public String selectJobAll(Model model){
        List<Job> jobList = jobService.selectJobAll();
        model.addAttribute("jobList",jobList);
        return "job_list";
    }
    @RequestMapping("showAllEnterprise")
    public String allEnterprise(Model model){
        List<Enterprise> list=enterpriseService.selectEnterpriseAll();
        model.addAttribute("enterpriseList",list);
        return "job_add";
    }
    @RequestMapping("addJob")
    @ResponseBody
    public String addJob(Job job){
        int res=jobService.addJob(job);
        if(res>0){
            return "true";
        }return "false";
    }
    @RequestMapping("updateJob")
    @ResponseBody
    public String updateJob(Job job){
        int res=jobService.updateJob(job);
        if(res>0){
            return "true";
        }return "false";
    }
    @RequestMapping("delJob")
    @ResponseBody
    public String delJob(int jid){
        int res=jobService.delJob(jid);
        if(res>0){
            return "true";
        }return "false";
    }
    @RequestMapping("selectJobById")
    public String selectJobById(int jid, HttpServletRequest request){
        Job job=jobService.selectJobById(jid);
        request.setAttribute("job",job);
        List<Enterprise> list=enterpriseService.selectEnterpriseAll();
        request.setAttribute("enterpriseList",list);
        return "job_edit";
    }
    @RequestMapping("selectJobByJname")
    public String selectJobByJname(String jname,HttpServletRequest request){
        Job job=jobService.selectJobByJname(jname);
        request.setAttribute("jname",jname);
        return "job_edit";
    }

}
