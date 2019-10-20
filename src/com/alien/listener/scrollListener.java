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
public class scrollListener implements ServletContextListener {

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
    //监听，每个页面都要用到的 自动获取商家推荐商品 列表
    public void contextInitialized(ServletContextEvent arg0)  { 
 		 //商家推荐商品
         List<Map<String,Object>> s =gMgr.getScrollGoodsList();
         arg0.getServletContext().setAttribute("scrollList", s);//监听 向所有页面发送一个List用于保存 
    }
}
