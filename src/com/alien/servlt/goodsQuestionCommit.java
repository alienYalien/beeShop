package com.alien.servlt;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alien.model.question;
import com.alien.model.user;
import com.alien.mgr.questionMgr;
/**
 * Servlet implementation class goodsquestionCommit
 */
@WebServlet("/myWeb/goodsQuestionCommit")
public class goodsQuestionCommit extends HttpServlet {
	public questionMgr qMgr=new questionMgr();
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		user u=(user)request.getSession().getAttribute("user");
		if(u==null){
			response.sendRedirect("/myWeb/register.jsp");
		}else{
			int goodsid=Integer.parseInt(request.getParameter("id"));
			String content=request.getParameter("content");
			
			question q=new question(u.getId(),goodsid,content,new Date());
			qMgr.insert(q);
			
			request.setAttribute("id",goodsid);
			request.setAttribute("questionMsg","提问成功！");
			request.getRequestDispatcher("/myWeb/question.jsp").forward(request, response);
		}
		
	}

}
