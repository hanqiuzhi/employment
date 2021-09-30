package com.ambow.utils;

import com.ambow.entity.Student;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

public class ReadExcel {
    //总行数
    private int totalRows = 0;
    //总条数
    private int totalCells = 0;
    //错误信息接收器
    private String errorMsg;

    //构造方法
    public ReadExcel() {
    }

    //获取总行数
    public int getTotalRows() {
        return totalRows;
    }

    //获取总列数
    public int getTotalCells() {
        return totalCells;
    }

    //获取错误信息
    public String getErrorInfo() {
        return errorMsg;
    }

    /**
     * 读EXCEL文件，获取信息集合
     *
     * @param
     * @return
     */
    public List<Student> getExcelInfo(MultipartFile mFile) throws Exception {
        String fileName = mFile.getOriginalFilename();//获取文件名
        System.out.println("文件名:" + fileName);
        List<Student> studentList = null;
        try {
            if (!validateExcel(fileName)) {// 验证文件名是否合格
                return null;
            }
            boolean isExcel2003 = true;// 根据文件名判断文件是2003版本还是2007版本
            if (isExcel2007(fileName)) {
                isExcel2003 = false;
            }
            studentList = createExcel(mFile.getInputStream(), isExcel2003);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return studentList;
    }

    /**
     * 根据excel里面的内容读取客户信息
     *
     * @param is          输入流
     * @param isExcel2003 excel是2003还是2007版本
     * @return
     * @throws IOException
     */
    public List<Student> createExcel(InputStream is, boolean isExcel2003) {
        List<Student> studentList = null;
        try {
            Workbook wb = null;
            if (isExcel2003) {// 当excel是2003时,创建excel2003
                wb = new HSSFWorkbook(is);
            } else {// 当excel是2007时,创建excel2007
                wb = new XSSFWorkbook(is);
            }
            studentList = readExcelValue(wb);// 读取Excel里面客户的信息
        } catch (IOException e) {
            e.printStackTrace();
        }
        return studentList;
    }

    /**
     * 读取Excel里面客户的信息
     *
     * @param wb
     * @return
     */
    private List<Student> readExcelValue(Workbook wb) {
        // 得到第一个shell
        Sheet sheet = wb.getSheetAt(0);
        // 得到Excel的行数
        this.totalRows = sheet.getPhysicalNumberOfRows();
        System.out.println("行数:" + this.totalRows);
        // 得到Excel的列数(前提是有行数)
        if (totalRows > 1 && sheet.getRow(0) != null) {
            this.totalCells = sheet.getRow(0).getPhysicalNumberOfCells();
            System.out.println("总列数:" + this.totalCells);
        }
        List<Student> studentList = new ArrayList<Student>();
        // 循环Excel行数
        for (int r = 1; r < totalRows; r++) {
            Row row = sheet.getRow(r);
            if (row == null) {
                continue;
            }
            Student student = new Student();
            // 循环Excel的列
            for (int c = 0; c < this.totalCells; c++) {
                Cell cell = row.getCell(c);
                if (null != cell) {
                    if(c==0){
                        if (cell.getCellType() == CellType.NUMERIC) {
                            String sname = String.valueOf(cell.getNumericCellValue());
                            student.setSname(sname);
                        } else {
                            student.setSname(cell.getStringCellValue());
                        }
                    }else if(c==1){
                        if (cell.getCellType() == CellType.NUMERIC) {
                            try {
                                student.setSno(Integer.valueOf((int) cell.getNumericCellValue()));
                            } catch (NumberFormatException e) {
                                // TODO Auto-generated catch block
                                e.printStackTrace();
                                System.out.println("if false");
                            }
                        } else {
                            try {
                                student.setSno(Integer.valueOf(cell.getStringCellValue()));
                            } catch (Exception e) {
                                // TODO Auto-generated catch block
                                e.printStackTrace();
                                System.out.println("类型不匹配");
                            }
                        }
                    }else if(c==2){
                        if (cell.getCellType() == CellType.NUMERIC) {
                            String sex = String.valueOf(cell.getNumericCellValue());
                            student.setSsex(sex);
                        } else {
                            student.setSsex(cell.getStringCellValue());
                        }
                    }else if(c==3){
                        if (cell.getCellType() == CellType.NUMERIC) {
                            String spwd = String.valueOf(cell.getNumericCellValue());
                            student.setSpwd(spwd);
                        } else {
                            student.setSpwd(cell.getStringCellValue());
                        }

                    }
                }
            }
            // 添加到list
            studentList.add(student);
        }
        return studentList;
    }
    /**
     * 验证EXCEL文件
     *
     * @param filePath
     * @return
     */
    public boolean validateExcel(String filePath) {
        if (filePath == null || !(isExcel2003(filePath) || isExcel2007(filePath))) {
            errorMsg = "文件名不是excel格式";
            return false;
        }
        return true;
    }

    /**
     * 是否是2003的excel，返回true是2003
     * @param filePath
     * @return
     */
    public static boolean isExcel2003(String filePath) {
        return filePath.matches("^.+\\.(?i)(xls)$");
    }

    /**
     * 是否是2007的excel，返回true是2007
     * @param filePath
     * @return
     */
    public static boolean isExcel2007(String filePath) {
        return filePath.matches("^.+\\.(?i)(xlsx)$");
    }
}
