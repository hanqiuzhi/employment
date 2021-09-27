package com.ambow.controller;

import com.ambow.entity.Obtain;
import com.ambow.entity.Through;
import com.ambow.service.ObtainService;
import com.ambow.service.ThroughService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("obtain")
public class ObtainController {

    @Resource
    private ObtainService obtainService;

    @RequestMapping("selectObtainAll")
    public String selectObtainAll(Model model){
        List<Obtain> obtainList = obtainService.selectObtainAll();
        model.addAttribute("obtainList",obtainList);
        return "obtain_list";
    }


}
