package com.ambow.controller;

import com.ambow.entity.City;
import com.ambow.entity.Note;
import com.ambow.service.CityService;
import com.ambow.service.NoteService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
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
}
