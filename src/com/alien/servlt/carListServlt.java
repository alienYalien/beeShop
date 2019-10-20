package com.alien.servlt;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alien.model.car;
import com.alien.model.user;
import com.alien.mgr.carMgr;


/**
 * Servlet implementation class OrderListServelt
 */
@WebServlet("/myWeb/carList")
public class carListServlt extends HttpServlet {

	private carMgr cMgr=new carMgr();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		//to do test
		System.out.println("come carList");
		
		user u=(user)request.getSession().getAttribute("user");
		if(u==null){
			response.sendRedirect("/myWeb/register.jsp");
		}
		else{
			response.sendRedirect("/myWeb/checkout.jsp");
		}
	}
}
