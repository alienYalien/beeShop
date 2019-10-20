package com.alien.servlt;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.alien.model.user;
import com.alien.mgr.userMgr;

/**
 * Servlet implementation class UserRegisterServelt
 */
@WebServlet("/myWeb/userRegister")
public class userRegisterServlt extends HttpServlet {
	private userMgr uService=new userMgr();
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		String username=request.getParameter("username");
//		String email=request.getParameter("email");
//		String password=request.getParameter("password");
//		String name=request.getParameter("name");
//		String phone=request.getParameter("phone");
//		String address=request.getParameter("address");
		user user=new user();
		try {
			BeanUtils.copyProperties(user, request.getParameterMap());
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(uService.register(user)) {
			request.setAttribute("msg", "注册成功，请登录！");
			request.getRequestDispatcher("/myWeb/login.jsp").forward(request, response);
		}else {
			request.setAttribute("msg", "用户名或邮箱重复，请再试一次！");
			request.getRequestDispatcher("/myWeb/register.jsp").forward(request, response);
		}
	}
}



	