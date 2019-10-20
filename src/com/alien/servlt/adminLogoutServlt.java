package com.alien.servlt;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UserLogoutServelt
 */
@WebServlet("/myWeb/adminLogout")
public class adminLogoutServlt extends HttpServlet {
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.getSession().removeAttribute("admin");
		response.sendRedirect(request.getContextPath()+"/myAdmin/adminLogin.jsp");//重定向 到首页
	}


}
	