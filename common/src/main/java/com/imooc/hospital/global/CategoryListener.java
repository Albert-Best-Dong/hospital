package com.imooc.hospital.global;

import com.imooc.hospital.entity.Category;
import com.imooc.hospital.service.CategoryService;
import org.springframework.web.context.support.WebApplicationContextUtils;


import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import java.util.List;

public class CategoryListener implements ServletContextListener {

    //初始化category集合
    public void contextInitialized(ServletContextEvent sce) {
        CategoryService categoryService = WebApplicationContextUtils.getWebApplicationContext(sce.getServletContext()).getBean(CategoryService.class);
        List<Category> categoryList = categoryService.findAll();

        sce.getServletContext().setAttribute("categoryList", categoryList);
    }


    public void contextDestroyed(ServletContextEvent sce) {

    }
}
