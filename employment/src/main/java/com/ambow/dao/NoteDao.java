package com.ambow.dao;

import com.ambow.entity.Hiring;
import com.ambow.entity.Note;
import com.ambow.entity.Province;
import com.ambow.entity.Student;

import java.util.List;

public interface NoteDao {

    List<Note> selectNoteAll();
    int addNote(Note note);
    Note selectNoteById(int nid);
    int updateNote(Note note);
    int delNote(int nid);
    List<Note> selectNoteBySid(Note note);

}
