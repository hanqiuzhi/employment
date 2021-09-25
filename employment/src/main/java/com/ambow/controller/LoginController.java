package com.ambow.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

@Controller
@RequestMapping("/login")
public class LoginController {

    @RequestMapping("/login")
    @ResponseBody
    public String login(String no,String pwd,int flag){
        int res = 0;
        if(flag==0){
            System.out.println("登录...学校...");
            //学校的登录Service

            if(res>0){
                return "0";
            }
        }else if (flag==1){
            System.out.println("登录...企业...");
            //企业的登录Service

            if(res>0){
                return "0";
            }
        }else if (flag==2){
            System.out.println("登录...学生...");
            //学生的登录Service

            if(res>0){
                return "0";
            }
        }
        return "1";
    }
}
