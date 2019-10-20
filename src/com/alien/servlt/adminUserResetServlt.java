package com.alien.servlt;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.alien.model.user;
import com.alien.mgr.userMgr;

/**
 * Servlet implementation class AdminUserResetServlet
 */
@WebServlet("/myAdmin/userReset")
public class adminUserResetServlt extends HttpServlet {

	private userMgr uService=new userMgr();
	
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
		if(uService.updatePwdReBool(u)){
			request.setAttribute("msg", "modify succes!");
		}else{
			request.setAttribute("failMsg", "modifly fail!");
		}
		request.getRequestDispatcher("/myAdmin/userList").forward(request, response);

}
}
