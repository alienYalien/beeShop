package com.alien.servlt;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alien.mgr.userMgr;

/**
 * Servlet implementation class AdminUserDelete
 */
@WebServlet("/myAdmin/userDelete")
public class adminUserDeleteServlt extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	private userMgr uService=new userMgr();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id=Integer.parseInt(request.getParameter("id"));
		boolean isSuccess=uService.delete(id);
		if(isSuccess) {
			request.setAttribute("msg", "客户删除成功!");
		}else {
			request.setAttribute("failMsg", "客户有下的订单,请先删除客户下的订单,再删除客户");
		}
		request.getRequestDispatcher("/myAdmin/userList").forward(request, response);
	}


}
