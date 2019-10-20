package com.alien.servlt;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alien.mgr.goodsMgr;

/**
 * Servlet implementation class AdminGoodsDeleteServlet
 */
@WebServlet("/myAdmin/goodsDelete")
public class adminGoodsDeleteServlt extends HttpServlet {

	private goodsMgr gService=new goodsMgr();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int  id=Integer.parseInt(request.getParameter("id"));
		gService.delete(id);
		request.getRequestDispatcher("/myAdmin/goodsList").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
