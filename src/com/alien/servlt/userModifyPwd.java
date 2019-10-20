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
 * Servlet implementation class UserChangePwd
 */
@WebServlet("/myWeb/userChangePwd")
public class userModifyPwd extends HttpServlet {

	private userMgr uService=new userMgr();

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		user u=(user)request.getSession().getAttribute("user");
		if(u==null){
			request.getRequestDispatcher("/myWeb/preLogin.jsp").forward(request, response);	
		}
		else{
			String password=request.getParameter("password");
			String newPwd=request.getParameter("newPassword");

			if(password.equals(u.getPassword())) {
				u.setPassword(newPwd);
				uService.updatePwd(u);
				request.setAttribute("msg", "修改成功 ");
				request.getRequestDispatcher("/myWeb/userCenter.jsp").forward(request, response);			
			}else {
				request.setAttribute("failMsg", "修改失败，原密码不正确，你再想想！");
				request.getRequestDispatcher("/myWeb/userCenter.jsp").forward(request, response);
			}
		}
	}

}

