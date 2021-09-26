package com.ambow.controller;

import com.ambow.entity.Resume;
import com.ambow.entity.Through;
import com.ambow.service.ResumeService;
import com.ambow.service.ThroughService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("through")
public class ThroughController {

    @Resource
    private ThroughService throughService;

    @RequestMapping("selectThroughAll")
    public String selectThroughAll(Model model){
        List<Through> throughList = throughService.selectThroughAll();
        model.addAttribute("throughList",throughList);
        return "through_list";
    }


}
