package com.alien.listener;

import java.util.List;
import java.util.Map;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

//import com.sun.xml.internal.ws.api.pipe.Tube;
import com.alien.model.type;
import com.alien.mgr.typeMgr;
/**
 * Application Lifecycle Listener implementation class ApplicationListener
 *
 */
@WebListener
public class typeListener implements ServletContextListener {

	private typeMgr tMgr=new typeMgr();
	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent arg0)  { 
         // TODO Auto-generated method stub
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    //监听，每个页面都要用到的 自动获取商品分类 列表
    public void contextInitialized(ServletContextEvent arg0)  { 
         List<type> list=tMgr.selectAll();
         arg0.getServletContext().setAttribute("typeList", list);//监听 向所有页面发送一个List用于保存 
              
    }
}

