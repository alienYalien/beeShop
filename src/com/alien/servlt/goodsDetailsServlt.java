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
 * Servlet implementation class GoodsDetailServelt
 */
@WebServlet("/myWeb/goodsDetails")
public class goodsDetailsServlt extends HttpServlet { 
	
	private goodsMgr gService=new goodsMgr();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id=Integer.parseInt(request.getParameter("id"));
		goods g=gService.getById(id);
		request.setAttribute("g", g);
		request.getRequestDispatcher("/myWeb/details.jsp").forward(request, response);
	}
}

