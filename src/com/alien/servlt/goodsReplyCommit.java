package com.alien.servlt;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alien.mgr.replyMgr;
import com.alien.model.reply;
import com.alien.model.user;

/**
 * Servlet implementation class goodsReplyCommit
 */
@WebServlet("/myWeb/goodsReplyCommit")
public class goodsReplyCommit extends HttpServlet {
	public replyMgr qMgr=new replyMgr();
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		user u=(user)request.getSession().getAttribute("user");
		if(u==null){
			response.sendRedirect("/myWeb/register.jsp");
		}else{
			int qid=Integer.parseInt(request.getParameter("id"));
			String content=request.getParameter("content");
			
			reply r=new reply(u.getId(),qid,content,new Date());
			qMgr.insert(r);
			
			request.setAttribute("id",qid);
			request.setAttribute("replyMsg","回复成功！");
			request.getRequestDispatcher("/myWeb/reply.jsp").forward(request, response);
		}
	}

}
