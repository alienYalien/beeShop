package com.alien.servlt;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alien.model.page;
import com.alien.mgr.orderMgr;

/**
 * Servlet implementation class AdminOrderlistServlet
 */
@WebServlet("/myAdmin/orderList")
public class adminOrderListServlt extends HttpServlet {
	private orderMgr o=new orderMgr();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//结合前台订单查询
		int status=0;
		if(request.getParameter("status")!=null) {
			status=Integer.parseInt(request.getParameter("status"));
		}
		request.setAttribute("status", status);
		int pageNo=1;
		if(request.getParameter("pageNo")!=null) {
			pageNo=Integer.parseInt(request.getParameter("pageNo"));
		}
		page p=o.getOrderPage(status,pageNo);
		request.setAttribute("p",p);
		
		//to do test
		//System.out.println(p.getList().toString());
		
		request.getRequestDispatcher("/myAdmin/orderList.jsp").forward(request, response);
	}

}
