package com.alien.servlt;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alien.model.page;
import com.alien.model.type;
import com.alien.mgr.goodsMgr;

/**
 * Servlet implementation class adminGoodsListSelvt
 */
@WebServlet("/myAdmin/goodsList")
public class adminGoodsListServlt extends HttpServlet {
	
	private goodsMgr gMgr=new goodsMgr();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//to do test
		System.out.println("come goodsTable");
		
		int type=0;//推荐类型
		if(request.getParameter("type")!=null) {
			type=Integer.parseInt(request.getParameter("type"));
		}
		
		//to do test
		System.out.println("type："+type);
				
		int pageNo=1;
		if(request.getParameter("pageNo")!=null) {
			pageNo=Integer.parseInt(request.getParameter("pageNo"));
		}
		
//		List<goods> list=gMgr.selectGoods(id, pageNo, 8);
//		request.setAttribute("list", list);
		
		page p=gMgr.getGoodsRecommendPage(type, pageNo);
		request.setAttribute("p", p);
		request.setAttribute("type", type);
		
		//to do test
		//System.out.println("p："+p);
		
		request.getRequestDispatcher("/myAdmin/goodsList.jsp").forward(request, response);
		System.out.println("end goodsTable");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
