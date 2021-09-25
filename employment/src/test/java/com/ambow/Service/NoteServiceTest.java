package com.ambow.Service;

import com.ambow.dao.NoteDao;
import com.ambow.dao.StudentDao;
import com.ambow.entity.Hiring;
import com.ambow.entity.Note;
import com.ambow.entity.Student;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class NoteServiceTest {

    @Test
    public void selectNoteAll(){
        ApplicationContext app = new ClassPathXmlApplicationContext("spring.xml");
        NoteDao noteDao = app.getBean(NoteDao.class);
        List<Note> list = noteDao.selectNoteAll();
        System.out.println(list);
    }

    @Test
    public void addNote(){
        ApplicationContext app = new ClassPathXmlApplicationContext("spring.xml");
        NoteDao noteDao = app.getBean(NoteDao.class);
        Note note=new Note();
        Student student=new Student();
        student.setSid(1);
        note.setNsid(student);
        Hiring hiring=new Hiring();
        hiring.setHid(1);
        note.setNhid(hiring);
        note.setNflag(0);
        noteDao.addNote(note);
    }

    @Test
    public void selectNoteById(){
        ApplicationContext app = new ClassPathXmlApplicationContext("spring.xml");
        NoteDao noteDao = app.getBean(NoteDao.class);
        Note note=noteDao.selectNoteById(1);
        System.out.println(note);
    }


    @Test
    public void updateNote(){
        ApplicationContext app = new ClassPathXmlApplicationContext("spring.xml");
        NoteDao noteDao = app.getBean(NoteDao.class);
        Note note=new Note();
        note.setNid(3);
        Student student=new Student();
        student.setSid(1);
        note.setNsid(student);
        Hiring hiring=new Hiring();
        hiring.setHid(1);
        note.setNhid(hiring);
        note.setNflag(5);
        noteDao.updateNote(note);
    }

    @Test
    public void delNote(){
        ApplicationContext app = new ClassPathXmlApplicationContext("spring.xml");
        NoteDao noteDao = app.getBean(NoteDao.class);
        noteDao.delNote(3);
    }
}
