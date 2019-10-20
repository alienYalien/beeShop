package com.alien.servlt;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alien.model.goods;
import com.alien.model.car;
import com.alien.model.user;
import com.alien.mgr.carMgr;
import com.alien.mgr.goodsMgr;

/**
 * Servlet implementation class GoodsBuyServelt
 */
@WebServlet("/myWeb/carAdd")
public class carAddServlt extends HttpServlet {
    
	private goodsMgr gMgr=new goodsMgr();
	private carMgr cMgr=new carMgr();
	 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//to do test 
		System.out.println("come carAdd"+request.getParameter("amount"));
		
		user u=(user)request.getSession().getAttribute("user");
		if(u==null){
			response.sendRedirect("/myWeb/register.jsp");
		}else{
			int goodsid=Integer.parseInt(request.getParameter("goodsid"));
			goods goods=gMgr.getById(goodsid);
			if(goods.getStock()>0) {
				if(cMgr.add(goodsid,u.getId())){
					request.setAttribute("addCarMsg", "加入购物车成功！");
					
					request.getSession().removeAttribute("car");
//					List<car> carList =  cMgr.selectAll(user.getId());
					car c =cMgr.selectAll(u.getId());
					request.getSession().setAttribute("car",c);
				}else {
				request.setAttribute("addCarMsg", "加入购物车失败！");
				}
			}else{
				request.setAttribute("addCarMsg", "库存不足！");
			}

			if(request.getParameter("type")==null){
				request.setAttribute("g", goods);
				request.getRequestDispatcher("/myWeb/details.jsp").forward(request, response);	
			}else{
				request.getRequestDispatcher("/myWeb/checkout.jsp").forward(request, response);	
			}		
		}
	}
}

