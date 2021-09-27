package com.ambow.controller;

import com.ambow.entity.Hiring;
import com.ambow.service.HiringService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("hiring")
public class HiringController {

    @Resource
    private HiringService hiringService;

    @RequestMapping("selectHiringAll")
    public String selectHiringAll(Model model){
        List<Hiring> hiringList = hiringService.selectHiringAll();
        model.addAttribute("hiringList",hiringList);
        return "hiring_list";
    }
}
