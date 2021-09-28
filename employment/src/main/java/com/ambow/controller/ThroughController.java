package com.ambow.controller;

import com.ambow.entity.City;
import com.ambow.entity.Resume;
import com.ambow.entity.Through;
import com.ambow.service.ResumeService;
import com.ambow.service.ThroughService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("through")
public class ThroughController {

    @Resource
    private ThroughService throughService;
    @Resource
    private ResumeService resumeService;
    @RequestMapping("getTrid")
    public String getTrid(HttpServletRequest request,String method){
        List<Resume> list = resumeService.selectResumeAll();
        request.setAttribute("listTrid",list);
        if (method.equals("add")){
            return "through_add";
        }
        if (method.equals("edit")){
            return "forward:selectThroughById";
        }
        return null;
    }

    @RequestMapping("selectThroughAll")
    public String selectThroughAll(Model model){
        List<Through> throughList = throughService.selectThroughAll();
        model.addAttribute("throughList",throughList);
        return "through_list";
    }
    @RequestMapping("addThrough")
    @ResponseBody
    public String addThrough(Through through){
        int res= throughService.addThrough(through);
        if (res>0){
            return "true";
        }
        return "false";
    }

    @RequestMapping("selectThroughById")
    public String selectThroughById(int tid,Model model){
        Through through=throughService.selectThroughById(tid);
        model.addAttribute("through",through);
        return "through_edit";
    }

    @RequestMapping("updateThrough")
    @ResponseBody
    public String updateThrough(Through through){
        int res=throughService.updateThrough(through);
        if (res>0){
            return "true";
        }
        return "false";
    }
    @RequestMapping("delThrough")
    @ResponseBody
    public String delThrough(int tid){
        int res=throughService.delThrough(tid);
        if (res>0){
            return "true";
        }
        return "false";
    }
}
