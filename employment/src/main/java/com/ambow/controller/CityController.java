package com.ambow.controller;

import com.ambow.entity.City;
import com.ambow.entity.Province;
import com.ambow.service.CityService;
import com.ambow.service.ProvinceService;

import com.ambow.utils.Json;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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

   /* @RequestMapping(value = "/selectCityAll")
    public String allCompanyController(Model model,@RequestParam(defaultValue = "1",required = true,value = "pageNo")Integer pageNo,
                                       @RequestParam(required = false,defaultValue = "5")Integer pageSize){
        //defaultValue  一页显示几条
        //分页查询
        PageHelper.startPage(pageNo, pageSize);
        //改掉啥 复制
        List<City> cityList = cityService.selectCityAll();
        PageInfo<City> pageInfo=new PageInfo<City>(cityList);
        model.addAttribute("pageInfo",pageInfo);
        return "city_list";
    }*/
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
    public Json selectCityByPId(int pid){
        Json j = new Json();

        List<City> cityList = cityService.selectCityByPid(pid);

        j.setCode(0);
        j.setData(cityList);
        return j;
    }


}
