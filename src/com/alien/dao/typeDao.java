package com.alien.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

//import com.sun.xml.internal.ws.api.pipe.Tube;
import com.alien.model.type;
import com.alien.model.user;
import com.alien.utils.dbUtil;

public class typeDao {
	//根据类型获取全部
	public List<type> selectAll() throws SQLException {
		QueryRunner r=new QueryRunner(dbUtil.getDataSource());
		String sql="select * from type";
		return r.query(sql, new BeanListHandler<type>(type.class));
	}
	//根据id找类型
	public type select(int id) throws SQLException {
		QueryRunner r=new QueryRunner(dbUtil.getDataSource());
		String sql="select * from type where id=?";
		return r.query(sql, new BeanHandler<type>(type.class),id);
		
	}
	//根据typename找类型
	public type selectByName(String name) throws SQLException {
		QueryRunner r=new QueryRunner(dbUtil.getDataSource());
		String sql="select * from type where typename=?";
		return r.query(sql, new BeanHandler<type>(type.class),name);
		
	}		
	//添加type
	public void insert(type t) throws SQLException {
		QueryRunner r=new QueryRunner(dbUtil.getDataSource());
		String sql="insert into type(typename) values(?)";
		r.update(sql,t.getTypename());
	}
	//修改type
	public void update(type t) throws SQLException {
		QueryRunner r=new QueryRunner(dbUtil.getDataSource());
		String sql="update type set typename = ? where id = ?";
		r.update(sql,t.getTypename(),t.getId());
	}
	public void delete(int id) throws SQLException {
		QueryRunner r=new QueryRunner(dbUtil.getDataSource());
		String sql="delete from type where id=?";
		r.update(sql,id);
	}
}

