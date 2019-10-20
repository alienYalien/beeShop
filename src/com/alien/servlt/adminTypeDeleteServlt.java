package com.alien.servlt;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alien.mgr.typeMgr;
import com.alien.model.type;

/**
 * Servlet implementation class AdminTypeDeleteServlet
 */
@WebServlet("/myAdmin/typeDelete")
public class adminTypeDeleteServlt extends HttpServlet {
	
	private typeMgr tMgr=new typeMgr();
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id=Integer.parseInt(request.getParameter("id"));
		boolean isSuccess=tMgr.delete(id);
		if(isSuccess) {
			request.setAttribute("msg", "删除成功！");
		}else {
			request.setAttribute("failMsg", "类目下包含商品，无法直接删除");
		}
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
