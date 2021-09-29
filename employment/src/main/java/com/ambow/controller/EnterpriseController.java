package com.ambow.controller;

import com.ambow.entity.City;
import com.ambow.entity.Enterprise;
import com.ambow.entity.Province;
import com.ambow.service.CityService;
import com.ambow.service.EnterpriseService;
import com.ambow.service.ProvinceService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.w3c.dom.ls.LSInput;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("enterprise")
public class EnterpriseController {

    @Resource
    private EnterpriseService enterpriseService;

    @Resource
    private ProvinceService provinceService;

    @Resource
    private CityService cityService;

    @RequestMapping("selectEnterpriseAll")
    public String selectEnterpriseAll(Model model){
        List<Enterprise> enterpriseList = enterpriseService.selectEnterpriseAll();
        model.addAttribute("enterpriseList",enterpriseList);
        return "enterprise_list";
    }

    @RequestMapping("addEnterprise")
    @ResponseBody
    public String addEnterprise(Enterprise enterprise){
        int res = enterpriseService.addEnterprise(enterprise);
        if(res>0){
            return "true";
        }return "false";
    }
    @RequestMapping("updateEnterprise")
    @ResponseBody
    public String updateEnterprise(Enterprise enterprise){
        int res = enterpriseService.updateEnterprise(enterprise);
        if(res>0){
            return "true";
        }return "false";
    }

    @RequestMapping("delEnterprise")
    @ResponseBody
    public String delEnterprise(int eid){
        int res = enterpriseService.delEnterprise(eid);
        if(res>0){
            return "true";
        }return "false";
    }
    @RequestMapping("selectEnterpriseById")
    public String selectEnterpriseById(int eid,/*int pid,*/ HttpServletRequest request,Model model){
        List<Province> provinceList = provinceService.selectProvinceAll();
        request.setAttribute("provinceList",provinceList);
        System.out.println(provinceList);
        Enterprise enterprise = enterpriseService.selectEnterpriseById(eid);
        request.setAttribute("enterprise",enterprise);
        return "enterprise_edit";

    }
    @RequestMapping("selectProvinceAll")
    public String selectProvinceAll(Model model){
        List<Province> provinceList = provinceService.selectProvinceAll();
        model.addAttribute("provinceList",provinceList);
        return "enterprise_add";
    }
    @RequestMapping("selectCityAll")
    public String selectCityAll(Model model){
        List<City> cityList = cityService.selectCityAll();
        model.addAttribute("cityList",cityList);
        return "enterprise_add";
    }
    @RequestMapping("selectProvinceCity")
    @ResponseBody
    public String selectProvinceCity(Model model,int pid){
        List<City> city = cityService.selectProvinceCity(pid);
        model.addAttribute("city1",city);
        return "city_edit";
    }
}
