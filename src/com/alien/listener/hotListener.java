package com.alien.listener;

import java.util.List;
import java.util.Map;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import com.sun.xml.internal.ws.api.pipe.Tube;
import com.alien.model.type;
import com.alien.mgr.typeMgr;
import com.alien.mgr.goodsMgr;
/**
 * Application Lifecycle Listener implementation class ApplicationListener
 *
 */
@WebListener
public class hotListener implements ServletContextListener {

	private goodsMgr gMgr=new goodsMgr();
	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent arg0)  { 
         // TODO Auto-generated method stub
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent arg0)  { 
         //热销商品
         List<Map<String,Object>> h =gMgr.getHotGoodsList();
         arg0.getServletContext().setAttribute("hotList", h);//监听 向所有页面发送一个List用于保存 
    }	
}
