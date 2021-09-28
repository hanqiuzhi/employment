package com.ambow.controller;

import com.ambow.entity.City;
import com.ambow.entity.Enterprise;
import com.ambow.service.CityService;
import com.ambow.service.EnterpriseService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("enterprise")
public class EnterpriseController {

    @Resource
    private EnterpriseService enterpriseService;

    @RequestMapping("selectEnterpriseAll")
    public String selectEnterpriseAll(Model model){
        List<Enterprise> enterpriseList = enterpriseService.selectEnterpriseAll();
        model.addAttribute("enterpriseList",enterpriseList);
        return "enterprise_list";
    }

    @RequestMapping("selectEnterpriseByFlag")
    public String selectEnterpriseByFlag(Model model){
        List<Enterprise> enterpriseList = enterpriseService.selectEnterpriseByFlag();
        model.addAttribute("enterpriseList",enterpriseList);
        return "enterprise_list";
    }
}
