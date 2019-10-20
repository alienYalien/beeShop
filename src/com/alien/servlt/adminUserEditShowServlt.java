package com.alien.servlt;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alien.model.user;
import com.alien.mgr.userMgr;

/**
 * Servlet implementation class AdminUserEditShowServlet
 */
@WebServlet("/myAdmin/userEditShow")
public class adminUserEditShowServlt extends HttpServlet {
	
	private userMgr uService=new userMgr();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int id=Integer.parseInt(request.getParameter("id"));
		user user=uService.selectByID(id);
		request.setAttribute("u", user);
		request.getRequestDispatcher("/myAdmin/userEdit.jsp").forward(request, response);
	}



}
