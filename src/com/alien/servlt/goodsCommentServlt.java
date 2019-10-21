package com.alien.servlt;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alien.mgr.goodsMgr;
import com.alien.model.user;

/**
 * Servlet implementation class goodsComment
 */
@WebServlet("/myWeb/goodsComment")
public class goodsCommentServlt extends HttpServlet {
	public goodsMgr gMgr=new goodsMgr();
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		user u=(user)request.getSession().getAttribute("user");
		if(u==null){
			response.sendRedirect("/myWeb/register.jsp");
		}else{
			int id=Integer.parseInt(request.getParameter("id"));
			String name=gMgr.getById(id).getName();
			request.setAttribute("name",name);
			request.setAttribute("id",id);
			
			request.getRequestDispatcher("/myWeb/comment.jsp").forward(request, response);
		}
	}
}
