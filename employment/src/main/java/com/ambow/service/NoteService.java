package com.ambow.service;

import com.ambow.entity.Note;

import java.util.List;

public interface NoteService {

    List<Note> selectNoteAll();
    int addNote(Note note);
    Note selectNoteById(int nid);
    int updateNote(Note note);
    int delNote(int nid);
    List<Note> selectNoteBySid(int sid);
    List<Note> selectNoteByEid(int eid);
}
