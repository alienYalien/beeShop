package com.alien.servlt;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alien.model.order;
import com.alien.model.user;
import com.alien.mgr.orderMgr;

/**
 * Servlet implementation class OrderListServelt
 */
@WebServlet("/myWeb/orderList")
public class orderListServlt extends HttpServlet {

	private orderMgr oMgr=new orderMgr();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		user u=(user)request.getSession().getAttribute("user");
		if(null==u){
			response.sendRedirect("/myWeb/register.jsp");
		}
		else{
			List<order> list=oMgr.selectAll(u.getId());
			request.setAttribute("orderlist", list);
			request.getRequestDispatcher("/myWeb/order.jsp").forward(request, response);
		}
	}

}
