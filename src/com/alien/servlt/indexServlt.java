package com.alien.servlt;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.PageContext;

import com.alien.mgr.goodsMgr;
import com.alien.mgr.typeMgr;
import com.alien.mgr.carMgr;
import com.alien.model.type;
import com.alien.model.car;
import com.alien.model.user;
/**
 * Servlet implementation class IndexServlet
 */
@WebServlet("/myWeb/home")
public class indexServlt extends HttpServlet {

	private goodsMgr gMgr=new goodsMgr();
	private typeMgr tMgr=new typeMgr();
	private carMgr cMgr=new carMgr();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//取得滚动条幅下banner商品
		List<Map<String,Object>> bannerlist=gMgr.getBannerGoodsList();
		request.setAttribute("bannerList", bannerlist);		
//		//取得热销商品
//		List<Map<String,Object>> hotlist=gMgr.getHotGoodsList();
//		request.setAttribute("hotList", hotlist);
		//取得新品商品
		List<Map<String,Object>> newlist=gMgr.getNewGoodsList();
		request.setAttribute("newList", newlist);
		//取得折扣商品
		List<Map<String,Object>> salelist=gMgr.getSaleGoodsList();
		request.setAttribute("saleList", salelist);

		user u=(user)request.getSession().getAttribute("user");
		if(u!=null)
		{
//			List<car> carList =cMgr.selectAll(u.getId());
			car c =cMgr.selectAll(u.getId());
			request.getSession().setAttribute("car", c);
		}		

		//to do test
		System.out.println("come on"+request.getAttribute("pageContext.request.contextPath"));
		
		//跳转到home.jsp
		request.getRequestDispatcher("/myWeb/home.jsp").forward(request,response);
	}

}
