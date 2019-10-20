package com.alien.servlt;

	import java.io.IOException;
	import javax.servlet.ServletException;
	import javax.servlet.annotation.WebServlet;
	import javax.servlet.http.HttpServlet;
	import javax.servlet.http.HttpServletRequest;
	import javax.servlet.http.HttpServletResponse;

	import com.alien.model.page;
	import com.alien.model.type;
	import com.alien.mgr.typeMgr;
	import com.alien.mgr.goodsMgr;

	/**
	 * Servlet implementation class GoodsRecommendListServlet
	 */
	@WebServlet("/myWeb/goodsTypeList")
	public class goodsTypeListServlt extends HttpServlet {
		private typeMgr tMgr=new typeMgr();
		private goodsMgr gMgr=new goodsMgr();
		/**
		 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
		 */
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			int pageNo=1;
			if(request.getParameter("pageNo")!=null) {
				pageNo=Integer.parseInt(request.getParameter("pageNo"));
			}
			int typeid=0;
			type t=null;
			if(request.getParameter("typeid")!=null) {
				typeid=Integer.parseInt(request.getParameter("typeid"));	
				t=tMgr.select(typeid);
				request.setAttribute("type", t);
			}	
			page p=gMgr.getGoodsPage(typeid, pageNo);
			request.setAttribute("p", p);
			request.getRequestDispatcher("/myWeb/goods.jsp").forward(request, response);
		}


	}

