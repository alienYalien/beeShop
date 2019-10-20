package com.alien.servlt;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alien.mgr.orderMgr;

/**
 * Servlet implementation class AdminOrderDeleteServlet
 */
@WebServlet("/myAdmin/orderDelete")
public class adminOrderDeleteServlt extends HttpServlet {

	private orderMgr o=new orderMgr();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id=Integer.parseInt(request.getParameter("id"));
		
		o.delete(id);
		request.getRequestDispatcher("/myAdmin/orderList").forward(request, response);;
	}



}
