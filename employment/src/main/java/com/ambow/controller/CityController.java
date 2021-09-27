package com.ambow.controller;

import com.ambow.entity.City;
import com.ambow.service.CityService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("city")
public class CityController {

    @Resource
    private CityService cityService;

    @RequestMapping("selectCityAll")
    public String selectCityAll(Model model){
        List<City> cityList = cityService.selectCityAll();
        model.addAttribute("cityList",cityList);
        return "city_list";
    }
}
