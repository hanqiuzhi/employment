package com.ambow.controller;

import com.ambow.entity.Student;
import com.ambow.service.StudentService;
import com.ambow.utils.ExcelUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import java.io.InputStream;
import java.util.List;

@Controller
@RequestMapping("import")
public class ImportController {

    @Resource
    private StudentService studentService;
    /**
     * 上传excel并将内容导入数据库中
     *
     * @return
     */
    @RequestMapping(value = "/importExcel")
    public String importExcel(MultipartFile file) throws Exception {
        try {
            InputStream in = file.getInputStream();
            List<List<Object>> listob = ExcelUtils.getBankListByExcel(in, file.getOriginalFilename());
            // List<UserInfo> inventoryList = new ArrayList<UserInfo>();
            //遍历listob数据，把数据放到List中
            for (int i = 0; i < listob.size(); i++) {
                List<Object> ob = listob.get(i);
                Student student = new Student();
                student.setSno(Integer.parseInt(String.valueOf(ob.get(0)).trim()));
                student.setSname(String.valueOf(ob.get(1)).trim());
                student.setSbgdate(String.valueOf(ob.get(2)).trim());
                //通过遍历实现把每一列封装成一个model中，再把所有的model用List集合装载
                studentService.addStudent(student);
            }
            //批量插入
            // userService.addUserServcieBatch(inventoryList);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return "redirect:../student/selectStudentAll";
    }
}
