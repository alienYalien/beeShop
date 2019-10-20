package com.alien.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.MapHandler;
import org.apache.commons.dbutils.handlers.MapListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import com.sun.org.apache.bcel.internal.generic.NEW;
import com.alien.model.car;
import com.alien.model.type;
import com.alien.utils.dbUtil;


public class cartDao {

	//购物车商品列表
	public List<car> selectAll1(int userid) throws SQLException {
		QueryRunner r=new QueryRunner(dbUtil.getDataSource());
			String sql="select * from car where user_id=?";
			return r.query(sql, new BeanListHandler<car>(car.class),userid);
	}
	//购物车列表
	public List<car> selectAll(int userid) throws SQLException {
			QueryRunner r=new QueryRunner(dbUtil.getDataSource());
			String sql="select c.id,c.goods_id goodsid,c.amount,g.name,g.image1,g.price,t.typename from car c,goods g,type t where user_id=? and c.goods_id=g.id and g.type_id=t.id";
			return r.query(sql, new BeanListHandler<car>(car.class),userid);
	}
	//购物车商品列表分页
	public List<car> getCartPage(int userid, int pageNo, int pageSize) throws SQLException {
		QueryRunner r=new QueryRunner(dbUtil.getDataSource());
			String sql="select * from car where user_id=? limit ?,?";
			return r.query(sql, new BeanListHandler<car>(car.class),userid,(pageNo-1)*pageSize,pageSize);
	}
	//获取分页总数
	public int getCartCount(int userid) throws SQLException {
		QueryRunner r=new QueryRunner(dbUtil.getDataSource());
		String sql="";
			sql="select count(*) from car where user_id=?";
			return r.query(sql, new ScalarHandler<Long>(),userid).intValue();
	}
	//查询是否首次加入购物车
	public car isAddCart(int goodsid, int uerid) throws SQLException {
		QueryRunner r=new QueryRunner(dbUtil.getDataSource());
		String sql="select * from car where goods_id=? and user_id=?";
		return r.query(sql, new BeanHandler<car>(car.class),goodsid,uerid);
		
	}
	//购物车添加
	public void insert(car c) throws SQLException {
		QueryRunner r=new QueryRunner(dbUtil.getDataSource());
		String sql="insert into car(user_id,goods_id,amount) values(?,?,?)";
		r.update(sql,c.getUserid(),c.getGoodsid(),c.getAmount());
	}
	//购物车商品-增加/减少
	public void update(int aomunt, int cartid)throws SQLException {
		QueryRunner r=new QueryRunner(dbUtil.getDataSource());
		String sql="update car set amount=? where id=?";
		r.update(sql,aomunt,cartid);
	}
	//购物车删除
	public void delete(int id) throws SQLException {
		QueryRunner r=new QueryRunner(dbUtil.getDataSource());
		String sql="delete from car where id=?";
		r.update(sql,id);
	}
	//根据cartid查询全部信息 
	public car selectById(int cartid) throws SQLException {
		QueryRunner r=new QueryRunner(dbUtil.getDataSource());
		String sql="select * from car where id=?";
		return r.query(sql, new BeanHandler<car>(car.class),cartid);
		
	}
	//根据goodsid获得prcie
	public float getPriceById(int goodsid) throws SQLException {
		QueryRunner r=new QueryRunner(dbUtil.getDataSource());
		String sql="select price from goods where id=?";
		return r.query(sql, new ScalarHandler<Long>(),goodsid).intValue();
	}

}
