package com.alien.mgr;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.alien.dao.cartDao;
import com.alien.model.car;
import com.alien.model.goods;
import com.alien.model.order;
import com.alien.model.orderItem;
import com.alien.model.page;
import com.alien.model.type;
import com.alien.utils.dbUtil;
import com.alien.utils.priceUtil;

public class carMgr {
	private cartDao cDao =new cartDao(); 
	
	//获取购物车列表
	public car selectAll(int userid){

		car c=new car();
		List<car> carList=null;
		try {
			carList=cDao.selectAll(userid);
			c.setCarList(carList);
			c.setAllAmount(calAllAmount(carList));
			c.setAllPrice(calAllPrice(carList));		
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return c;
	}
	
	
	//获取购物车列表分页
	public page getCartPage(int userid,int pageNo) {

		page p=new page();//新建一个分页对象
		
		p.setPageNo(pageNo);//设置第几页
		int pageSize=9;//每页总个数
		int totalCount=0;//总数
		try {
			totalCount=cDao.getCartCount(userid);//通过cartDao中的函数 查询该类型的总数
		} catch (SQLException e) {
			e.printStackTrace();
		}
		p.setPageSizeAndTotalCount(pageSize, totalCount);//通过总数 计算要分多少页
		
		List list=null;
		try {
			list=cDao.getCartPage(userid,pageNo, pageSize); //查询数据 根据类型id ，页码。 返回该页的集合

		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		p.setList(list);//为分页设置 返回的集合对象
		return p;
	}

	//加入购物车  **数量目前为定值1**
	public boolean add(int goodsid, int userid) {
		car c=null;
		try {
			//判断是否首次加入购物车
			c = cDao.isAddCart(goodsid,userid);
			if(c!=null){
				update(c.getId(),0);
			}else{
				c = new car();
				c.setGoodsid(goodsid);
				c.setUserid(userid);
				c.setAmount(1);
				cDao.insert(c);
			}
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}		
	
	//购物车商品-type:0增加,1减少
	public boolean update(int carid,int carttype) {
		try {
			car c=cDao.selectById(carid);
			if(null==c) {
				return false;
			}
			int amount=c.getAmount();
			if(carttype==0){
				amount=amount+1;
				c.setAmount(c.getAmount()+1);
			}
			if(carttype==1){
				amount=amount-1;
				c.setAmount(c.getAmount()-1);
				if(amount<=0){
					delete(carid);
					return true;
				}
			}
			cDao.update(amount,carid);
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}	
		
	//购物车商品-type:2删除
	public boolean delete(int carid) {
		try {
			cDao.delete(carid);
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}
	
	//购物车商品确认订单
	public boolean deleteCarToOrder(car c) {
		List<car> l=c.getCarList();
		try {
			for (int i = 0; i < l.size(); i++) {
				cDao.delete(l.get(i).getId());
			}
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
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

