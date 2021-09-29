package com.ambow.controller;

import com.ambow.entity.City;
import com.ambow.entity.Enterprise;
import com.ambow.entity.Province;
import com.ambow.service.CityService;
import com.ambow.service.EnterpriseService;
import com.ambow.service.ProvinceService;
import com.ambow.utils.MailUtils;
import com.ambow.utils.Tools;
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


    @RequestMapping("selectEnterpriseByFlag")
    public String selectEnterpriseByFlag(Model model){
        List<Enterprise> enterpriseList = enterpriseService.selectEnterpriseByFlag();
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

    @RequestMapping("activeEnterprise")
    @ResponseBody
    public String activeEnterprise(int eid){
        Enterprise enterprise = enterpriseService.selectEnterpriseById(eid);
        String cid = enterprise.getEcid().getCid()+"";
        List<Enterprise> enterpriseList = enterpriseService.selectEnterpriseByCid(Integer.parseInt(cid));
        //String to = "hanqiuzhi666@163.com";
        String to = enterprise.getEemail();
        System.out.println(to);
        String eno = null;
        String time = new Tools().getTime().substring(0,4);
        if (Integer.parseInt(cid)<10){
            cid = '0'+cid;
        }
        if(enterpriseList.size()==1){
            eno = time+cid+0+0+1;
        }else {
            int size = 1;
            for (int i=0;i<size;i++){
                eno = enterpriseList.get(enterpriseList.size()-size).getEno();
                if(eno == null && enterpriseList.size()>0){
                    size++;
                }
            }
            System.out.println(eno.substring(eno.length()-3));
            int enoInt = Integer.parseInt(eno.substring(eno.length()-3))+1;
            System.out.println(enoInt);
            if(enoInt<10){
                eno = time+cid+0+0+enoInt;
                System.out.println(eno);
            }else if (enoInt<100){
                eno = time+cid+0+enoInt;
                System.out.println(eno);
            }else {
                eno = time+cid+enoInt;
                System.out.println(eno);
            }
        }
        System.out.println(eno);
        System.out.println(enterprise);
        enterprise.setEno(eno);
        enterprise.setEflag(1);
        System.out.println(enterprise);
        int res = enterpriseService.updateEnterprise(enterprise);
        if(res>0){
            String content="您的企业编号为："+eno+",请根据此编号和密码登录系统！！！";
            MailUtils mailUtils = new MailUtils();
            mailUtils.sendMail(to,content,"企业审核通过邮件");
            System.out.println("发送成功");
            return "true";
        }
        return "false";
    }

}
