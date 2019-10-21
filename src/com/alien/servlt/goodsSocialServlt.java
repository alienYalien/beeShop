package com.alien.servlt;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alien.model.user;
import com.alien.mgr.goodsMgr;
import com.alien.mgr.questionMgr;
/**
 * Servlet implementation class goodsQuestionServlt
 */
@WebServlet("/myWeb/goodsSocial")
public class goodsSocialServlt extends HttpServlet {
	public goodsMgr gMgr=new goodsMgr();
	public questionMgr qMgr=new questionMgr();
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		user u=(user)request.getSession().getAttribute("user");
		if(u==null){
			response.sendRedirect("/myWeb/register.jsp");
		}else{
			int id=Integer.parseInt(request.getParameter("id"));
			//type：0comment，1question，2reply
			int type=Integer.parseInt(request.getParameter("type"));
			if(type==0){
				
			}
			if(type==1){	
				request.setAttribute("name",gMgr.getById(id).getName());
				request.setAttribute("id",id);
				
				request.getRequestDispatcher("/myWeb/question.jsp").forward(request, response);
			}
			if(type==2){
				request.setAttribute("name",qMgr.getUsernameById(id));
				request.setAttribute("id",id);
				
				request.getRequestDispatcher("/myWeb/reply.jsp").forward(request, response);
			}
		}
	}
}
