package com.ambow.controller;

import com.ambow.entity.Student;
import com.ambow.service.StudentService;
import com.ambow.utils.ExcelUtils;
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
    public boolean importExcel(@RequestParam("file") MultipartFile file){
        try {
            InputStream in = file.getInputStream();
            List<List<Object>> listob = ExcelUtils.getBankListByExcel(in, file.getOriginalFilename());
            System.out.println("============="+listob);
            // List<UserInfo> inventoryList = new ArrayList<UserInfo>();
            //遍历listob数据，把数据放到List中
            for (int i = 0; i < listob.size(); i++) {
                List<Object> ob = listob.get(i);
                Student student = new Student();
                //通过遍历实现把每一列封装成一个model中，再把所有的model用List集合装载
                student.setSno(Integer.parseInt(String.valueOf(ob.get(0)).trim()));
                student.setSname(String.valueOf(ob.get(1)).trim());
                student.setSsex(String.valueOf(ob.get(2)).trim());
                student.setSpwd(String.valueOf(ob.get(3)).trim());
                studentService.addStudent(student);
                //inventoryList.add(userInfo);
            }
            //批量插入
            // userService.addUserServcieBatch(inventoryList);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
