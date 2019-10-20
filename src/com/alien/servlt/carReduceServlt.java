package com.alien.servlt;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alien.mgr.carMgr;
import com.alien.model.car;
import com.alien.model.user;

/**
 * Servlet implementation class GoodsLessonServelt
 */
@WebServlet("/myWeb/carReduce")
public class carReduceServlt extends HttpServlet {
       
	private carMgr cMgr=new carMgr();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//to do test 
		System.out.println("come carReduce");
		
		user u = (user)request.getSession().getAttribute("user");
		if(u==null){
			response.sendRedirect("/myWeb/register.jsp");			
		}else{
			int carid=Integer.parseInt(request.getParameter("carid"));
			int cartype=Integer.parseInt(request.getParameter("type"));
			
			if(cartype==2){
				cMgr.delete(carid);
			}else{
				cMgr.update(carid,cartype);
			}
			
			request.getSession().removeAttribute("car");
			//List<car> carList =  cMgr.selectAll(u.getId());
			car c =cMgr.selectAll(u.getId());
			request.getSession().setAttribute("car",c);
		
			request.getRequestDispatcher("/myWeb/checkout.jsp").forward(request, response);			
		}		
	}
}
