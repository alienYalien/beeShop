package com.alien.servlt;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alien.model.page;
import com.alien.mgr.userMgr;

/**
 * Servlet implementation class AdminUserListServlet
 */
@WebServlet("/myAdmin/userList")
public class adminUserListServlt extends HttpServlet {

	private userMgr u=new userMgr();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int pageNo=1;
		if(request.getParameter("pageNo")!=null) {
			pageNo=Integer.parseInt(request.getParameter("pageNo"));
		}
		page p=u.getUserPage(pageNo);
		request.setAttribute("p",p);
		//to do log
		System.out.println(p.getList().toString());
		request.getRequestDispatcher("/myAdmin/userList.jsp").forward(request, response);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doGet(req, resp);
	}

}
