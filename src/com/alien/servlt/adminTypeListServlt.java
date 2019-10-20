package com.alien.servlt;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alien.model.type;
import com.alien.mgr.typeMgr;

/**
 * Servlet implementation class AdminTypeListServlet
 */
@WebServlet("/myAdmin/typeList")
public class adminTypeListServlt extends HttpServlet {
	
	private typeMgr tMgr=new typeMgr();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		List<type> list=tMgr.selectAll();
		request.setAttribute("list",list);
		request.getRequestDispatcher("/myAdmin/typeList.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
