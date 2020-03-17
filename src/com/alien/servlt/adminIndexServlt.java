package com.alien.servlt;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alien.mgr.goodsMgr;
import com.alien.mgr.orderMgr;
import com.alien.mgr.userMgr;
/**
 * Servlet implementation class IndexServlet
 */
@WebServlet("/myAdmin/index")
public class adminIndexServlt extends HttpServlet {

	private userMgr uMgr=new userMgr();
	private goodsMgr gMgr=new goodsMgr();
	private orderMgr oMgr=new orderMgr();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//to do test
		System.out.println("/myAdmin/index");
		
		request.setAttribute("userNum", uMgr.selectUserCount());
		request.setAttribute("loginNum", uMgr.selectUserLoginNumCount());
		request.setAttribute("viewNum", gMgr.selectViewCount());
		request.setAttribute("buyNum", gMgr.selectBuyCount());
		request.setAttribute("orderNum", oMgr.selectOrderCount());		

		request.getRequestDispatcher("/myAdmin/index.jsp").forward(request,response);
	}

}

