package com.ambow.controller;

import com.alibaba.fastjson.JSONObject;
import com.ambow.entity.Province;
import com.ambow.service.ProvinceService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
    @RequestMapping("addProvince")
    @ResponseBody
    public String addProvince(String pname ){
        Province province = new Province();
        province.setPname(pname);
        int res = provinceService.addProvince(province);
        if(res>0){
            return "true";
        }return "false";
    }
    @RequestMapping("updateProvince")
    @ResponseBody
    public String updateProvince(Province province){
        int res = provinceService.updateProvince(province);
        if(res>0){
            return "true";
        }return "false";
    }
    @RequestMapping("delProvince")
    @ResponseBody
    public String delProvince(int pid){
        int res =provinceService.delProvince(pid);
        if(res>0){
            return "true";
        }return "false";
    }
    @RequestMapping("selectProvinceById")
    public String selectProvinceById(int pid,HttpServletRequest request ){
        Province province = provinceService.selectProvinceById(pid);
        request.setAttribute("province",province);
        return "province_edit";
    }
    @RequestMapping("selectProvinceAllLayui")
    @ResponseBody
    public String selectProvinceAllLayui(){
        JSONObject jsonObject = new JSONObject();
        List<Province> provinceList = provinceService.selectProvinceAll();
        jsonObject.put("provinceList",provinceList);
        return jsonObject.toJSONString();
    }

}
