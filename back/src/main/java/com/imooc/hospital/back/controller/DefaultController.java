package com.imooc.hospital.back.controller;

import com.imooc.hospital.entity.User;
import com.imooc.hospital.service.DefaultService;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller("defaultController")
public class DefaultController {
    @Resource(name="defaultService")
    private DefaultService defaultService;

    //      /toLogin.do
    public void toLogin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("login.jsp").forward(request,response);
    }
    //   /login.do
    public void login(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        User user = defaultService.login(username, password);
        if (user == null) {
            response.sendRedirect("toLogin.do");
        } else {

            request.getSession().setAttribute("user",user);
//            request.getServletContext().setAttribute("user",user);
//            response.sendRedirect("main.do");
            request.getRequestDispatcher("/department/list.do").forward(request,response);
        }
    }
}
