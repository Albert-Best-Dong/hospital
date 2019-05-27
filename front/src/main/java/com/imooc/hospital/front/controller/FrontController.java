package com.imooc.hospital.front.controller;

import com.imooc.hospital.entity.Category;
import com.imooc.hospital.entity.Department;
import com.imooc.hospital.service.CategoryService;
import com.imooc.hospital.service.DepartmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
@Controller("frontController")
public class FrontController {
    @Autowired
    private DepartmentService departmentService;
    @Autowired
    private CategoryService categoryService;

    public void getAllInfo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Category> categoryList = categoryService.findAll();
        List<Department> departmentList = departmentService.findAll();
        request.setAttribute("categoryList", categoryList);
        request.setAttribute("departmentList",departmentList);
        request.getRequestDispatcher("../hospital_detail.jsp").forward(request, response);
    }

}
