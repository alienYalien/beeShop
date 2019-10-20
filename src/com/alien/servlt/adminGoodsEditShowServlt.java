package com.alien.servlt;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alien.model.goods;
import com.alien.mgr.goodsMgr;

/**
 * Servlet implementation class AdminGoodsEditShowServlet
 */
@WebServlet("/myAdmin/goodsEditShow")
public class adminGoodsEditShowServlt extends HttpServlet {

    private goodsMgr gService=new goodsMgr();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int id=Integer.parseInt(request.getParameter("id"));
		goods g=gService.getById(id);
		request.setAttribute("g", g);
		request.getRequestDispatcher("/myAdmin/goodsEdit.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
