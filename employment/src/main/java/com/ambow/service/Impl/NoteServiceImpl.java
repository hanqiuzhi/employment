package com.ambow.service.Impl;

import com.ambow.dao.NoteDao;
import com.ambow.entity.Note;
import com.ambow.service.NoteService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class NoteServiceImpl implements NoteService {

    @Resource
    private NoteDao noteDao;

    @Override
    public List<Note> selectNoteAll() {
        return noteDao.selectNoteAll();
    }

    @Override
    public int addNote(Note note) {
        return noteDao.addNote(note);
    }

    @Override
    public Note selectNoteById(int nid) {
        return noteDao.selectNoteById(nid);
    }

    @Override
    public int updateNote(Note note) {
        return noteDao.updateNote(note);
    }

    @Override
    public int delNote(int nid) {
        return noteDao.delNote(nid);
    }

}
