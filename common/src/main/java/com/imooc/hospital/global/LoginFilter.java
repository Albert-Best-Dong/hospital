package com.imooc.hospital.global;

import com.imooc.hospital.entity.User;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebFilter(urlPatterns = {"*.do","*.jsp"})
public class LoginFilter implements Filter {
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;

        String path = request.getServletPath();
        if (path.toLowerCase().indexOf("front") != -1) {
            filterChain.doFilter(request,response);
        }else if(path.toLowerCase().indexOf("login")!=-1){
            filterChain.doFilter(request,response);
        }else{

            Object obj =request.getSession().getAttribute("user");
            if(obj!=null){
                filterChain.doFilter(request,response);
            }else{
                response.sendRedirect("../login.jsp");
            }
        }

    }

    public void destroy() {

    }
}
