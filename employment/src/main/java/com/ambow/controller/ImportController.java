package com.ambow.controller;

import com.ambow.entity.Student;
import com.ambow.service.StudentService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.InputStream;
import java.util.List;

@Controller
@RequestMapping("import")
public class ImportController {

    @Resource
    private StudentService studentService;

    @RequestMapping(value="importExcel")
    @ResponseBody
    public boolean uploadMenu(@RequestParam(value="file") MultipartFile file, HttpServletRequest request, HttpServletResponse response)throws Exception{
        String readResult =null;
        try {
            readResult = studentService.readExcelFile(file);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
