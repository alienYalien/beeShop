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
 * Servlet implementation class AdminUserAddServlet
 */
@WebServlet("/myAdmin/useAdd")
public class adminUserAddServlt extends HttpServlet {
	
	private userMgr uService=new userMgr();
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
		request.setAttribute("msg", "客户添加成功");
		request.getRequestDispatcher("/myAdmin/userList").forward(request, response);
	}else {
		request.setAttribute("failMsg", "用户名或邮箱重复,请重新填写");
		request.setAttribute("u",user);
		request.getRequestDispatcher("/myAdmin/userAdd.jsp").forward(request, response);
	}
	}

}
