package com.ambow.controller;

import com.ambow.entity.*;
import com.ambow.service.HiringService;
import com.ambow.service.JobService;
import com.ambow.service.NoteService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("hiring")
public class HiringController {

    @Resource
    private HiringService hiringService;

    @Resource
    private JobService jobService;
    @Resource
    private NoteService noteService ;



    @RequestMapping("selectHiringAll")
    public String selectHiringtoMianshi(Model model){
        // University university=(University)session.getAttribute("university");
        List<Hiring> hiringList = hiringService.selectHiringAll();
        model.addAttribute("hiringList",hiringList);
        return "hiring_list_student";
    }

    @RequestMapping("selectHiringAllbyeid")
    public String selectHiringAll(Model model, HttpSession session){
        Enterprise enterprise=(Enterprise)session.getAttribute("enterprise");
        List<Hiring> hiringList = hiringService.selectHiringByJob(enterprise.getEid());
        model.addAttribute("hiringList1",hiringList);
        return "hiring_list";
    }
    @RequestMapping("showAllJob")
    public String allJob(HttpServletRequest request,HttpSession session){
        Enterprise enterprise=(Enterprise)session.getAttribute("enterprise");
        List<Job> list = jobService.selectJobOnly(enterprise.getEid());
        //List<Job> list=jobService.selectJobAll();
        request.setAttribute("jobList",list);
        return "hiring_add";
    }
    @RequestMapping("addHiring")
    @ResponseBody
    public String addHiring(Hiring hiring,HttpSession session){
        int res=hiringService.addHiring(hiring);
        if(res>0){
            return "true";
        }return "false";
    }
    @RequestMapping("updateHiring")
    @ResponseBody
    public String updateHiring(Hiring hiring){
        int res=hiringService.updateHiring(hiring);
        if(res>0){
            return "true";
        }return "false";
    }
    @RequestMapping("updateHiringtoSchool")
    @ResponseBody
    public String updateHiringtoSchool(Hiring hiring){
        int res=hiringService.updateHiring(hiring);
        if(res>0){
            return "true";
        }return "false";
    }

    @RequestMapping("delHiring")
    @ResponseBody
    public String delHiring(int hid){
        int res=hiringService.delHiring(hid);
        if(res>0){
            return "true";
        }return "false";
    }

    @RequestMapping("selectHiringById")
    public String selectHiringById(int hid,HttpServletRequest request,HttpSession session){
        Enterprise enterprise=(Enterprise)session.getAttribute("enterprise");
        Hiring hiring=hiringService.selectHiringById(hid);
        request.setAttribute("hiring",hiring);
        List<Job> list=jobService.selectJobOnly(enterprise.getEid());
        request.setAttribute("jobList",list);
        return "hiring_edit_enterprise";
    }
   @RequestMapping("selectHiringByIdtoSchool")
    public String selectHiringByIdtoSchool(int hid,HttpServletRequest request,HttpSession session){
        University university=(University)session.getAttribute("university");
        //Enterprise enterprise=(Enterprise)session.getAttribute("enterprise");
        Hiring hiring=hiringService.selectHiringById(university.getUid());
        request.setAttribute("hiring",hiring);
        List<Job> list=jobService.selectJobAll();
        request.setAttribute("jobList",list);
        return "hiring_edit_School";
    }

    @RequestMapping("selectHiringById1")
    public String selectHiringById1(int hid, HttpSession session,Model model){
        Hiring hiring=hiringService.selectHiringById(hid);
        session.setAttribute("hiring1",hiring);


//        System.out.println("********************"+hiring);
//        Note note = new Note();
//        note.setNflag(0);
//        note.setNhid(hiring);
//        Student student=(Student) session.getAttribute("student");
//        note.setNsid(student);
//        noteService.addNote(note);
//        return "forward:/note/selectNoteAll";
          return "forward:/note/noteAdd";
    }

}

