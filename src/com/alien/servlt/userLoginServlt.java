package com.alien.servlt;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alien.model.user;
import com.alien.mgr.userMgr;

/**
 * Servlet implementation class UserLoginServelet
 */
@WebServlet("/myWeb/userLogin")
public class userLoginServlt extends HttpServlet {

	private userMgr uMgr=new userMgr();

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String ue=request.getParameter("ue");
		String password=request.getParameter("password");
		
		//to do test
		System.out.println("come usrtLogin! ue:" +ue+ "password:" +password);
		
		user user=uMgr.login(ue, password);
		if(user==null) {
			request.setAttribute("failMsg", "用户名或密码错误，请重新尝试！");
			request.getRequestDispatcher("/myWeb/login.jsp").forward(request, response);
		}else {
			uMgr.loginNum(user.getId(),user.getLoginnum());
			request.getSession().setAttribute("user", user);
//			request.getRequestDispatcher("/myWeb/home.jsp").forward(request, response);
			response.sendRedirect(request.getContextPath()+"/myWeb/home");//重定向到首页
		}
	}

}


	