package com.ambow.controller;

import com.ambow.entity.Province;
import com.ambow.service.ProvinceService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("province")
public class ProvinceController {

    @Resource
    private ProvinceService provinceService;

    @RequestMapping("selectProvinceAll")
    public String selectProvinceAll(Model model){
        List<Province> provinceList = provinceService.selectProvinceAll();
        model.addAttribute("provinceList",provinceList);
        return "province_list";
    }


}
