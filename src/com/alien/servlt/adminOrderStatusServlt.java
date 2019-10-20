package com.alien.servlt;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alien.mgr.orderMgr;

/**
 * Servlet implementation class AdminOrderStatusServlet
 */
@WebServlet("/myAdmin/orderStatus")
public class adminOrderStatusServlt extends HttpServlet {
	
	private orderMgr o=new orderMgr();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int id=Integer.parseInt(request.getParameter("id"));
		int status=Integer.parseInt(request.getParameter("status"));
		o.updateStatus(id, status);
		response.sendRedirect(request.getContextPath()+"/myAdmin/orderList?status="+status);
	}


}
