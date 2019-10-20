package com.alien.servlt;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alien.model.admin;
import com.alien.mgr.adminMgr;

/**
 * Servlet implementation class UserChangePwd
 */
@WebServlet("/myAdmin/adminChangePwd")
public class adminChangePwd extends HttpServlet {

	private adminMgr aMgr=new adminMgr();

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String password =request.getParameter("password");
		String newPwd =request.getParameter("newPassword");
		
		//to do test
		System.out.println("come adminChangePwd!password："+password+"newPwd："+newPwd);
		
		admin a=(admin)request.getSession().getAttribute("admin");
		if(password.equals(a.getPassword())) {
			a.setPassword(newPwd);
			aMgr.updatePwd(a);
			request.setAttribute("msg", "修改成功 ");
			request.getRequestDispatcher("/myAdmin/adminChangePwd.jsp").forward(request, response);			
		}else {
			request.setAttribute("failMsg", "修改失败，原密码不正确，你再想想！");
			request.getRequestDispatcher("/myAdmin/adminChangePwd.jsp").forward(request, response);
		}
	}

}



	