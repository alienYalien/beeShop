package com.alien.servlt;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.eclipse.jdt.internal.compiler.batch.Main;

import com.alien.model.user;
import com.alien.mgr.userMgr;

/**
 * Servlet implementation class UserChangeAddressServelt
 */
@WebServlet("/myWeb/userChangeAddress")
public class userModifyAddressServlt extends HttpServlet {

	private userMgr uService =new userMgr();
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		user u=(user)request.getSession().getAttribute("user");
		if(u==null){
			request.getRequestDispatcher("/myWeb/preLogin.jsp").forward(request, response);	
		}
		else{
			try {
				request.setCharacterEncoding("utf-8");
				BeanUtils.copyProperties(u, request.getParameterMap());
			} catch (IllegalAccessException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (InvocationTargetException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			uService.updateUserAddress(u);
			request.setAttribute("recieveMsg", "收货信息修改成功！");
			request.getRequestDispatcher("/myWeb/userCenter.jsp").forward(request, response);
		}

	}
}


