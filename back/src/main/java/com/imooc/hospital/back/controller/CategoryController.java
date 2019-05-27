package com.imooc.hospital.back.controller;

import com.imooc.hospital.entity.Category;
import com.imooc.hospital.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;
import java.util.List;

@Controller("categoryController")
public class CategoryController {
    @Autowired
    private CategoryService categoryService;
    //  /category/list.do
    public void list(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Category> categoryList = categoryService.findAll();
        request.getServletContext().setAttribute("categoryList",categoryList);
        request.getRequestDispatcher("category.jsp").forward(request,response);
    }
    public void addPrompt(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("add_category.jsp").forward(request,response);
    }

    public void add(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String name = request.getParameter("name");
        Category category = new Category();
        category.setName(name);

        categoryService.add(category);
        response.sendRedirect("list.do");
    }

    public void remove(HttpServletRequest request, HttpServletResponse response) throws IOException {
        Integer id = Integer.parseInt(request.getParameter("id"));
        categoryService.remove(id);
        response.sendRedirect("list.do");
    }

    public void editPrompt(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        Category editingCategory = categoryService.findOne(Integer.parseInt(id));
        request.setAttribute("editingCategory", editingCategory);
        request.getRequestDispatcher("edit_category.jsp").forward(request,response);
    }
    public void edit(HttpServletRequest request, HttpServletResponse response) throws IOException {
        Integer id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");

        Category category = categoryService.findOne(id);
        category.setName(name);

        categoryService.edit(category);
        response.sendRedirect("list.do");
    }
}
