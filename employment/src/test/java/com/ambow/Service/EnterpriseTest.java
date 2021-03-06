package com.ambow.Service;

import com.ambow.dao.EnterpriseDao;
import com.ambow.dao.ProvinceDao;
import com.ambow.entity.City;
import com.ambow.entity.Enterprise;
import com.ambow.utils.MailUtils;
import com.ambow.utils.Tools;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class EnterpriseTest {
    @Test
    public void selectEnterpriseTest(){
        ApplicationContext app = new ClassPathXmlApplicationContext("spring.xml");
        EnterpriseDao enterpriseDao = app.getBean(EnterpriseDao.class);
        List<Enterprise> list = enterpriseDao.selectEnterpriseAll();
        System.out.println(list);

    }
    @Test
    public void addEnterpriseTest(){
        ApplicationContext app = new ClassPathXmlApplicationContext("spring.xml");
        EnterpriseDao enterpriseDao = app.getBean(EnterpriseDao.class);
        Enterprise enterprise = new Enterprise();
        enterprise.setEname("安博");
        enterprise.setEpwd("123");
        enterprise.setElicense("执照");
        enterprise.setEinfo("huan");
        City city = new City();
        city.setCid(2);
        enterprise.setEcid(city);
        enterprise.setEphone("12345678");
        enterprise.setEemail("122222");
        enterpriseDao.addEnterprise(enterprise);
    }
    @Test
    public void delEnterpriseTest(){
        ApplicationContext app = new ClassPathXmlApplicationContext("spring.xml");
        EnterpriseDao enterpriseDao = app.getBean(EnterpriseDao.class);
        int p =enterpriseDao.delEnterprise(1);
        System.out.println(p);
    }
    @Test
    public void updateEnterpriseTest(){
        ApplicationContext app = new ClassPathXmlApplicationContext("spring.xml");
        EnterpriseDao enterpriseDao = app.getBean(EnterpriseDao.class);
        Enterprise enterprise = new Enterprise();
        enterprise.setEid(2);
        enterprise.setEname("aaa");
        enterprise.setEno("123");
        enterprise.setEpwd("123");
        enterprise.setElicense("123");
        enterprise.setEinfo("ccc");
        enterprise.setEphone("12345678");
        enterprise.setEemail("1234");
        int p =enterpriseDao.updateEnterprise(enterprise);
        System.out.println(p);
    }

    @Test
    public void activeEnterprise(){
        ApplicationContext app = new ClassPathXmlApplicationContext("spring.xml");
        EnterpriseDao enterpriseDao = app.getBean(EnterpriseDao.class);
        Enterprise enterprise = enterpriseDao.selectEnterpriseById(6);
        String cid = enterprise.getEcid().getCid()+"";
        List<Enterprise> enterpriseList = enterpriseDao.selectEnterpriseByCid(Integer.parseInt(cid));
        //String to = "hanqiuzhi666@163.com";
        String to = enterprise.getEemail();
        System.out.println(to);
        String eno = null;
        String time = new Tools().getTime().substring(0,4);
        if (Integer.parseInt(cid)<10){
            cid = '0'+cid;
        }
        if(enterpriseList.size()==1){
            eno = time+cid+0+0+1;
        }else {
            System.out.println(enterpriseList.size());
            int size = 2;
            for (int i=0;i<size;i++){
                eno = enterpriseList.get(enterpriseList.size()-size).getEno();
                if(eno == null && enterpriseList.size()>0){
                    size++;
                }
            }
            System.out.println(eno.substring(eno.length()-3));
            int enoInt = Integer.parseInt(eno.substring(eno.length()-3))+1;
            System.out.println(enoInt);
            if(enoInt<10){
                eno = time+cid+0+0+enoInt;
                System.out.println(eno);
            }else if (enoInt<100){
                eno = time+cid+0+enoInt;
                System.out.println(eno);
            }else {
                eno = time+cid+enoInt;
                System.out.println(eno);
            }
        }
        System.out.println(eno);
        System.out.println(enterprise);
        enterprise.setEno(eno);
        enterprise.setEflag(1);
        System.out.println(enterprise);
        /*String content="您的企业编号为："+eno+",请根据此编号和密码登录系统！！！";
        MailUtils mailUtils = new MailUtils();
        mailUtils.sendMail(to,content,"企业审核通过邮件");
        System.out.println("发送成功");*/
    }
}
