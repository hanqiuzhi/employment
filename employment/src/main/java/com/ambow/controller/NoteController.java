package com.ambow.controller;

import com.ambow.entity.City;
import com.ambow.entity.Hiring;
import com.ambow.entity.Note;
import com.ambow.entity.Student;
import com.ambow.service.CityService;
import com.ambow.service.NoteService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("note")
public class NoteController {

    @Resource
    private NoteService noteService;

    @RequestMapping("selectNoteAll")
    public String selectNoteAll(Model model){
        List<Note> noteList = noteService.selectNoteAll();
        model.addAttribute("noteList",noteList);
        return "note_list";
    }

    //学生点击招聘信息，点击提交申请面试，招聘记录便自动生成
    @RequestMapping("noteAdd")
    @ResponseBody
    public String noteAdd(Note note, HttpSession session,Model model){

        Student student=(Student) session.getAttribute("student");
        student.getSid();
        note.setNsid(student);
        Hiring hiring=(Hiring)session.getAttribute("hiring1");
        hiring.getHid();
        note.setNhid(hiring);
        note.setNflag(0);
        int res=noteService.addNote(note);
        if(res>0){
            return "true";
        }return "false";
    }


    @RequestMapping("noteById")
    public String noteById(int nid,Model model){
        Note note=noteService.selectNoteById(nid);
        model.addAttribute("note1",note);
        return "note_edit";
    }

    @RequestMapping("noteUpdate")
    @ResponseBody
    public String noteUpdate(Note note){
        int res=noteService.updateNote(note);
        if(res>0){
            return "true";
        }return "false";
    }

    @RequestMapping("noteDel")
    @ResponseBody
    public String noteDel(int nid){
        int res=noteService.delNote(nid);
        if(res>0){
            return "true";
        }return "false";
    }

    @RequestMapping("selectNoteBySid")
    public String selectNoteBySid(Note note,Model model,HttpSession session){
        Student student=(Student)session.getAttribute("student");
        student.getSid();
        note.setNsid(student);
        List<Note> noteSid=noteService.selectNoteBySid(note);
        model.addAttribute("noteSid",noteSid);
        return "note_list_student";
    }

}
