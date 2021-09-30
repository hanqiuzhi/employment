package com.ambow.controller;
/*
import com.ambow.entity.Student;
import com.ambow.utils.ExcelUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import java.io.InputStream;
import java.util.List;

@RequestMapping("import")
public class ImportController {
    /**
     * 上传excel并将内容导入数据库中
     *
     * @return
     */
/*
    @RequestMapping(value = "/importExcel")
    public String importExcel(MultipartFile file) throws Exception {
        try {
            InputStream in = file.getInputStream();
            List<List<Object>> listob = ExcelUtils.getBankListByExcel(in, file.getOriginalFilename());
            // List<UserInfo> inventoryList = new ArrayList<UserInfo>();
            //遍历listob数据，把数据放到List中
            for (int i = 0; i < listob.size(); i++) {
                List<Object> ob = listob.get(i);
                /*UserInfo userInfo = new UserInfo();
                Student student = new Student();
                //通过遍历实现把每一列封装成一个model中，再把所有的model用List集合装载
                userInfo.setUid(Integer.parseInt(String.valueOf(ob.get(0)).trim()));
                userInfo.setUname(String.valueOf(ob.get(1)).trim());
                userInfo.setUimg(String.valueOf(ob.get(2)).trim());
                userInfo.setUbirthday(new Date());
                userService.addUserServcie(userInfo);*/
                //inventoryList.add(userInfo);
           /* }


            //批量插入
            // userService.addUserServcieBatch(inventoryList);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return "index";
    }
}
*/
