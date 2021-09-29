package com.ambow.controller;

import com.alibaba.fastjson.JSONObject;
import com.ambow.entity.City;
import com.ambow.entity.Province;
import com.ambow.service.CityService;
import com.ambow.service.ProvinceService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("city")
public class CityController {

    @Resource
    private CityService cityService;
    @Resource
    private ProvinceService provinceService;

    @RequestMapping("selectCityAll")
    public String selectCityAll(Model model){
        List<City> cityList = cityService.selectCityAll();
        model.addAttribute("cityList",cityList);
        return "city_list";
    }
    @RequestMapping("addCity")
    @ResponseBody
    public String addCity(City city){
        int res = cityService.addCity(city);
        if(res>0){
            return "true";
        }return "false";
    }
    @RequestMapping("updateCity")
    @ResponseBody
    public String updateCity(City city){
        int res=cityService.updateCity(city);
        if(res>0){
            return "true";
        }return "false";
    }
    @RequestMapping("delCity")
    @ResponseBody
    public String delCity(int cid){
        int res = cityService.delCity(cid);
        if(res>0){
            return "true";
        }return "false";
    }

    @RequestMapping("selectCityById")
    public String selectCityById(int cid, HttpServletRequest request){
        List<Province> provinces = provinceService.selectProvinceAll();
        request.setAttribute("provinceList",provinces);
        City city = cityService.selectCityById(cid);
        request.setAttribute("city",city);
        return "city_edit";
    }
    @RequestMapping("selectProvinceAll")
    public String selectProvinceAll(Model model){
        List<Province> provinceList = provinceService.selectProvinceAll();
        model.addAttribute("provinceList",provinceList);
        return "city_add";
    }

    @RequestMapping("selectCityByPId")
    @ResponseBody
    public String selectCityByPId(int pid){
        JSONObject jsonObject = new JSONObject();
        List<City> cityList = cityService.selectCityByPid(pid);
        jsonObject.put("cityList",cityList);
        return jsonObject.toJSONString();
    }


}
