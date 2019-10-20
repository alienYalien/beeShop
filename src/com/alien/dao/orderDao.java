package com.alien.dao;

import java.awt.event.ItemEvent;
import java.math.BigInteger;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.MapHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import com.sun.org.apache.bcel.internal.generic.NEW;
import com.alien.model.goods;
import com.alien.model.order;
import com.alien.model.orderItem;
import com.alien.utils.dbUtil;

public class orderDao {
	//插入订单
	public void insertOrder(Connection con,order order) throws SQLException {
		QueryRunner r = new QueryRunner();
		//主义 order 与数据库排序 关键字冲突 需要用` `识别
		String sql="insert into `order`(total,amount,status,paytype,name,phone,address,datetime,user_id) values (?,?,?,?,?,?,?,?,?)";
		r.update(con,sql,
				order.getTotal(),order.getAmount(),order.getStatus(),
				order.getPaytype(),order.getName(),order.getPhone(),
				order.getAddress(),order.getDatetime(),order.getUser().getId());
		
		
	}
	//得到刚刚插入订单的id
	public int getLastInsertId(Connection con) throws SQLException {
		QueryRunner r = new QueryRunner();
		String sql="select last_insert_id()";
		BigInteger bi=r.query(con, sql,new ScalarHandler<BigInteger>());
		return Integer.parseInt(bi.toString());
	}
	//插入订单项
	public void insertOrderItem(Connection con,orderItem orderItem) throws SQLException {
		QueryRunner r = new QueryRunner();
		String sql="insert into orderitem(price,amount,goods_id,order_id) values (?,?,?,?)";
		r.update(con,sql,
				orderItem.getPrice(),orderItem.getAmount(),orderItem.getGoodsid(),orderItem.getOrderid()
				);
		
	}
	//根据id查询订单
	public List<order> selectAll(int userid) throws SQLException {
		QueryRunner r = new QueryRunner(dbUtil.getDataSource());
		String sql="select * from `order` where user_id=? order by datetime desc ";
		return r.query(sql, new BeanListHandler<order>(order.class),userid);
	}
	public List<orderItem> selectAllItem(int orderid) throws SQLException{
		QueryRunner r = new QueryRunner(dbUtil.getDataSource());
		String sql="select i.id,i.price,i.amount,g.name goodsname from orderitem i,goods g where order_id=? and i.goods_id=g.id";
		return r.query(sql, new BeanListHandler<orderItem>(orderItem.class),orderid);
	}
	public int getOrderCount(int status) throws SQLException {
		QueryRunner r=new QueryRunner(dbUtil.getDataSource());
		String sql="";
		if(status==0) {
			sql="select count(*) from `order`";
			return r.query(sql, new ScalarHandler<Long>()).intValue();
		}else {
			sql="select count(*) from `order` where status=?";
			return r.query(sql, new ScalarHandler<Long>(),status).intValue();
		}
	}
	public List selectOrderList(int status, int pageNo, int pageSize) throws SQLException {
		QueryRunner r=new QueryRunner(dbUtil.getDataSource());
		if(status==0) {
			String sql="select o.id,o.total,o.amount,o.status,o.paytype,o.name,o.phone,o.address,o.datetime,u.username from `order` o,user u where o.user_id=u.id order by o.datetime desc limit ?,?";
			return r.query(sql, new BeanListHandler<order>(order.class),(pageNo-1)*pageSize,pageSize);
		}else {
			String sql="select o.id,o.total,o.amount,o.status,o.paytype,o.name,o.phone,o.address,o.datetime,u.username from `order` o,user u where o.user_id=u.id and o.status=? order by o.datetime desc limit ?,?";
			return r.query(sql, new BeanListHandler<order>(order.class),status,(pageNo-1)*pageSize,pageSize);
		}
	}

	//修改订单状态
	public void updateStatus(int id, int status) throws SQLException {
		QueryRunner r=new QueryRunner(dbUtil.getDataSource());
		String sql="update `order` set status = ? where id = ?";
		r.update(sql,status,id);
	}
	//删除订单
	public void deleteOrder(Connection con,int id) throws SQLException {
		QueryRunner r=new QueryRunner();
		String sql="delete from `order` where id = ?";
		r.update(con,sql,id);
	}
	public void deleteOrderItem(Connection con,int id) throws SQLException {
		QueryRunner r=new QueryRunner();
		String sql="delete from orderitem where order_id = ?";
		r.update(con,sql,id); 
	}
}

