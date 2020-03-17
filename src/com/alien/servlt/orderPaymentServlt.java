package com.alien.servlt;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alien.model.order;
import com.alien.model.orderItem;
import com.alien.model.car;
import com.alien.model.goods;
import com.alien.model.user;
import com.alien.mgr.orderMgr;
import com.alien.mgr.carMgr;
import com.alien.mgr.goodsMgr;

/**
 * Servlet implementation class orderPaymentServlt
 */
@WebServlet("/myWeb/orderPayment")
public class orderPaymentServlt extends HttpServlet {
	
	private orderMgr oMgr=new orderMgr();
	private carMgr cMgr=new carMgr();
	private goodsMgr gMgr=new goodsMgr();
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//to do test 
		System.out.println("come orderPayment");
		
		user u=(user)request.getSession().getAttribute("user");
		if(u==null){
			request.getRequestDispatcher("/myWeb/register.jsp").forward(request, response);	
		}
		
		//to do test
		if(request.getSession().getAttribute("car")==null){
			response.sendRedirect("/myWeb/home");
		}
		
		int paytype=3;
		if(request.getParameter("paytype")!=null){
			paytype=Integer.parseInt(request.getParameter("paytype"));
		}		
		car c=(car)request.getSession().getAttribute("car");
		oMgr.carToOrder(c,u,paytype);
		
		//更新商品销量
		List<order> orderList= null;
		orderList= oMgr.selectAll(u.getId());
		for(int i=0;i<orderList.size();i++){
			List<orderItem> orderItem= null;
			orderItem= orderList.get(i).getItemList();
			for(int j=0;j<orderItem.size();j++){
				int goodsid =orderItem.get(j).getGoodsid();
				goods g =gMgr.getById(goodsid);
				gMgr.updateBuy(g.getId(), g.getBuy());
			}
		}
		request.setAttribute("orderlist", orderList);
		request.setAttribute("payMsg", "支付成功！");
		
		cMgr.deleteCarToOrder(c);
		
		//置0
		request.getSession().removeAttribute("car");
		c=cMgr.selectAll(u.getId());
		request.getSession().setAttribute("car",c);
		
		request.getRequestDispatcher("/myWeb/order.jsp").forward(request, response);
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}
}
