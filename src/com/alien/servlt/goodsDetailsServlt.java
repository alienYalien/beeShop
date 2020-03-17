package com.alien.servlt;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alien.model.goods;
import com.alien.model.comment;
import com.alien.model.question;
import com.alien.model.reply;
import com.alien.mgr.goodsMgr;
import com.alien.mgr.commentMgr;
import com.alien.mgr.questionMgr;
import com.alien.mgr.replyMgr;
/**
 * Servlet implementation class GoodsDetailServelt
 */
@WebServlet("/myWeb/goodsDetails")
public class goodsDetailsServlt extends HttpServlet { 
	
	private goodsMgr gMgr=new goodsMgr();
	private commentMgr cMgr=new commentMgr();
	private questionMgr qMgr=new questionMgr();
	private replyMgr rMgr=new replyMgr();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int goodsid=Integer.parseInt(request.getParameter("id"));
		
		goods g=gMgr.getById(goodsid);
		gMgr.updateView(g.getId(),g.getView());
		request.setAttribute("g", g);
		
		List<comment> commentList=cMgr.selectAll(goodsid);
		request.setAttribute("commentList",commentList);
		
		List<question> questionList=qMgr.selectAll(goodsid);
		request.setAttribute("questionList",questionList);
		
		request.getRequestDispatcher("/myWeb/details.jsp").forward(request, response);
	}
}

