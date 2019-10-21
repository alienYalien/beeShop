package com.alien.servlt;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alien.model.comment;
import com.alien.model.user;
import com.alien.mgr.commentMgr;

/**
 * Servlet implementation class goodsCommentList
 */
@WebServlet("/myWeb/goodsCommentCommit")
public class goodsCommentCommit extends HttpServlet {
	public commentMgr cMgr=new commentMgr();
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		user u=(user)request.getSession().getAttribute("user");
		if(u==null){
			response.sendRedirect("/myWeb/register.jsp");
		}else{
			int goodsid=Integer.parseInt(request.getParameter("id"));
			String content=request.getParameter("content");
			
			comment c=new comment(u.getId(),goodsid,content,new Date());
			cMgr.insert(c);
			
			request.setAttribute("id",goodsid);
			request.setAttribute("commentMsg","评价成功！");
			request.getRequestDispatcher("/myWeb/comment.jsp").forward(request, response);
		}
	}

}
