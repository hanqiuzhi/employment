package com.ambow.controller;

import com.ambow.entity.Major;
import com.ambow.service.MajorService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("major")
public class MajorController {

    @Resource
    private MajorService majorService;

    @RequestMapping("selectMajorAll")
    public String selectMajorAll(Model model){
        List<Major> majorList = majorService.selectMajorAll();
        model.addAttribute("majorList",majorList);
        return "major_list";
    }
}
