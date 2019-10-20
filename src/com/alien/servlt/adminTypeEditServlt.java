package com.alien.servlt;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.alien.model.type;
import com.alien.mgr.typeMgr;
import com.alien.utils.dbUtil;

/**
 * Servlet implementation class AdminTypeEditServlet
 */
@WebServlet("/myAdmin/typeEdit")
public class adminTypeEditServlt extends HttpServlet {
	
	private typeMgr tMgr=new typeMgr();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		int id=Integer.parseInt(request.getParameter("id"));
		type t=t=tMgr.select(id);
		String newtypename=request.getParameter("name");
		if(newtypename==null){
			request.setAttribute("t",t);
			request.getRequestDispatcher("/myAdmin/typeEdit.jsp").forward(request, response);
		}
		t.setTypename(newtypename);
//		try {
//			BeanUtils.copyProperties(t, request.getParameterMap());
//			
//		} catch (IllegalAccessException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		} catch (InvocationTargetException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		tMgr.update(t);
		request.getRequestDispatcher("/myAdmin/typeList").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
