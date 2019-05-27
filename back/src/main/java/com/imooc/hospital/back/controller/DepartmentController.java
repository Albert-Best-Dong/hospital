package com.imooc.hospital.back.controller;

import com.imooc.hospital.entity.Department;
import com.imooc.hospital.entity.Department;
import com.imooc.hospital.service.DepartmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@Controller("departmentController")
public class DepartmentController {
    @Autowired
    private DepartmentService departmentService;
    private List<Department> depts = null;
    public void list(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        depts = departmentService.findAll();
        request.getServletContext().setAttribute("depts",depts);
        request.getRequestDispatcher("department.jsp").forward(request,response);
    }
    public void addPrompt(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("add_department.jsp").forward(request,response);
    }

    public void add(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String name = request.getParameter("name");
        String categoryId = request.getParameter("categoryId");
        Department department = new Department();
        department.setName(name);
        department.setCategoryId(Integer.parseInt(categoryId));
        departmentService.add(department);
        response.sendRedirect("list.do");
    }

    public void remove(HttpServletRequest request, HttpServletResponse response) throws IOException {
        Integer id = Integer.parseInt(request.getParameter("id"));
        departmentService.remove(id);
        response.sendRedirect("list.do");
    }

    public void listForCategory(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String categoryId = request.getParameter("categoryId");
        depts = departmentService.findByCategory(new Department(Integer.parseInt(categoryId)));
        request.getServletContext().setAttribute("depts",depts);
        request.getRequestDispatcher("department.jsp").forward(request,response);
    }

    public void editPrompt(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        Department editingDepartment = departmentService.findOne(Integer.parseInt(id));
        request.setAttribute("editingDepartment",editingDepartment);
        request.getRequestDispatcher("edit_department.jsp").forward(request,response);
    }
    public void edit(HttpServletRequest request, HttpServletResponse response) throws IOException {
        Integer id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String categoryId = request.getParameter("categoryId");
        Department department = departmentService.findOne(id);
        department.setName(name);
        department.setCategoryId(Integer.parseInt(categoryId));
        departmentService.edit(department);
        response.sendRedirect("list.do");
    }
}
