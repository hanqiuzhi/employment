package com.ambow.controller;

import com.ambow.entity.Province;
import com.ambow.service.ProvinceService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class ProvinceController {

    @Resource
    private ProvinceService provinceService;

    @RequestMapping("allProvince")
    public String selectProvinceAll(HttpServletRequest request){
        List<Province> list = provinceService.selectProvinceAll();
        request.setAttribute("listProvince",list);
        return "provinceAll";
    }


}
