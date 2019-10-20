package com.alien.servlt;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.alien.model.admin;
import com.alien.model.user;
import com.alien.mgr.adminMgr;
	

/**
 * Servlet implementation class AdminUserAddServlet
 */
@WebServlet("/myAdmin/adminLogin")
public class adminLoginServlt extends HttpServlet {
	
	private adminMgr aMgr=new adminMgr();
		
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String an=request.getParameter("adminname");
		String password=request.getParameter("password");
		
		admin admin=aMgr.login(an, password);
		
		//to do test
		System.out.println("come adminLogin!adminname："+an+"password："+password);
		
		if(admin==null) {
			request.setAttribute("failMsg", "用户,邮箱或密码 错误,请重新登陆");
			request.getRequestDispatcher("/myAdmin/adminLogin.jsp").forward(request, response);
		}else {
			request.getSession().setAttribute("admin", admin);
			//request.getRequestDispatcher("/myAdmin//main.jsp").forward(request, response);
			response.sendRedirect("/myAdmin//main.jsp");
		}
	}

}
			