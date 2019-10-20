package com.alien.mgr;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.alien.model.user;
import com.alien.dao.orderDao;
import com.alien.model.car;
import com.alien.model.order;
import com.alien.model.orderItem;
import com.alien.model.page;
import com.alien.utils.dbUtil;
import com.alien.utils.priceUtil;

public class orderMgr {
	private orderDao oDao=new orderDao(); 
	
	//购物车商品构造订单
	public void carToOrder(car c,user u,int paytype) {
		
		order o=new order();
		
		Map<Integer, orderItem> itemMap=new HashMap<Integer, orderItem>();
		List<car> l=c.getCarList();
//		for(car _c:l) {
//			orderItem item=new orderItem(_c.getPrice(),_c.getAmount(),_c.getGoodsid());//生成orderItem
//			itemMap.put(_c.getGoodsid(), item);//加入订单map		
//		}
		for (int i = 0; i < l.size(); i++) {
			orderItem item=new orderItem(l.get(i).getPrice(),l.get(i).getAmount(),l.get(i).getGoodsid());//生成order	Item
			itemMap.put(l.get(i).getGoodsid(), item);//加入订单map		
		}	
		o.setItemMap(itemMap);
		o.setPaytype(paytype);
		o.setDatetime(new Date());
		o.setStatus(2);
		o.setUser(u);
		o.setAmount(calAllAmount(l));
		o.setTotal(calAllPrice(l));
		
		this.addOrder(o);
	}	
	
	public void addOrder(order order) {
		Connection con=null;
		try {
			con=dbUtil.getConnection();
			con.setAutoCommit(false);
			
			oDao.insertOrder(con, order);
			int id=oDao.getLastInsertId(con);
			order.setId(id);
			for(orderItem item:order.getItemMap().values()) {
				item.setOrderid(id);
				oDao.insertOrderItem(con, item);
			}
			
			con.commit();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			try {
				con.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
	}
	
	public List<order> selectAll(int userid){
		List<order> list=null;
		try {
			list=oDao.selectAll(userid);//找到所有的订单
			for(order o:list) {//遍历订单编号
				List<orderItem> l=oDao.selectAllItem(o.getId());//每个单号的里面 查询所有的item 并保存到list里面
				o.setItemList(l); 
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	public page getOrderPage(int status,int pageNo) {
		page p=new page();//新建一个分页对象
		
		p.setPageNo(pageNo);//设置第几页
		int pageSize=10;
		int totalCount=0;//总数
		try {
			totalCount=oDao.getOrderCount(status);//通过GoodsDao中的函数 查询该类型的总数
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		p.setPageSizeAndTotalCount(pageSize, totalCount);//通过总数 计算要分多少页
		
		List list=null;
		try {
			list=oDao.selectOrderList(status, pageNo, pageSize); //查询数据 根据类型id ，页码。 返回该页的集合
			for(order o:(List<order>)list) {//遍历订单编号
				List<orderItem> l=oDao.selectAllItem(o.getId());//每个单号的里面 查询所有的item 并保存到list里面
				o.setItemList(l); 
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		p.setList(list);//为分页设置 返回的集合对象
		return p;
		}
	
	public void updateStatus(int id, int status) {
		try {
			oDao.updateStatus(id, status);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void delete(int id) {
		Connection con=null;
		try { 
			con=dbUtil.getDataSource().getConnection();
			con.setAutoCommit(false);
			
			oDao.deleteOrderItem(con, id);
			oDao.deleteOrder(con, id);
			con.commit();
		} catch (SQLException e) {
			e.printStackTrace();
			if(con!=null) {
			try { 
				con.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			}
		}
		
	}
	
	//计算总数量
	public int calAllAmount(List<car> l){
		int all=0;
		for (int i = 0; i < l.size(); i++) {
			all=all + l.get(i).getAmount();	
		}	
		return all;
	}		
		
	//计算总价格
	public float calAllPrice(List<car> l){
		float all=0;
		for (int i = 0; i < l.size(); i++) {
			all=priceUtil.add(all, l.get(i).getPrice()*l.get(i).getAmount());		
		}	
		return all;
	}		
}

