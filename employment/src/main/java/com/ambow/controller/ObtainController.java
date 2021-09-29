package com.ambow.controller;

import com.ambow.entity.Obtain;
import com.ambow.entity.Resume;
import com.ambow.entity.Student;
import com.ambow.entity.Obtain;
import com.ambow.service.ObtainService;
import com.ambow.service.StudentService;
import com.ambow.service.ObtainService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("obtain")
public class ObtainController {

    @Resource
    private ObtainService obtainService;
    @Resource
    private StudentService studentService;
    
    @RequestMapping("selectObtainAll")
    public String selectObtainAll(Model model){
        List<Obtain> obtainList = obtainService.selectObtainAll();
        model.addAttribute("obtainList",obtainList);
        
        
        return "obtain_list";
    }

    @RequestMapping("getOsid")
    public String getOsid(HttpServletRequest request, String method){
        List<Student> list = studentService.selectStudentAll();
        request.setAttribute("listOsid",list);
        if (method.equals("add")){
            return "obtain_add";
        }
        if (method.equals("edit")){
            return "forward:selectObtainById";
        }
        return null;
    }

    @RequestMapping("addObtain")
    @ResponseBody
    public String addObtain(Obtain obtain){

        int res= obtainService.addObtain(obtain);
        if (res>0){
            return "true";
        }
        return "false";
    }

    @RequestMapping("selectObtainById")
    public String selectObtainById(int oid, Model model){

        Obtain obtain=obtainService.selectObtainById(oid);
        model.addAttribute("obtain",obtain);
        return "obtain_edit";
    }

    @RequestMapping("updateObtain")
    @ResponseBody
    public String updateObtain(Obtain obtain){
        int res=obtainService.updateObtain(obtain);
        if (res>0){
            return "true";
        }
        return "false";
    }
    @RequestMapping("delObtain")
    @ResponseBody
    public String delObtain(int oid){
        int res=obtainService.delObtain(oid);
        if (res>0){
            return "true";
        }
        return "false";
    }
}
