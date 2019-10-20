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
 * Servlet implementation class AdminUserEditServlet
 */
@WebServlet("/myAdmin/userEdit")
public class adminUserEditServlt extends HttpServlet {
	private userMgr uService=new userMgr();

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		user u=new user();
		try {
			BeanUtils.copyProperties(u, request.getParameterMap());
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		uService.updateUserAddress(u);
		request.getRequestDispatcher("/myAdmin/userList").forward(request, response);
		
	}

}
