package com.alien.dao;

import java.math.BigDecimal;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.MapHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

//import com.sun.org.apache.bcel.internal.generic.NEW;
import com.alien.model.order;
import com.alien.model.user;
import com.alien.utils.dbUtil;

public class userDao {
	//添加用户
	public void addUser(user user) throws SQLException {
		QueryRunner r = new QueryRunner(dbUtil.getDataSource());
		String sql="insert into user(username,email,password,name,phone,address,isadmin,isvalidate) values(?,?,?,?,?,?,?,?)";
		r.update(sql,user.getUsername(),user.getEmail(),user.getPassword(),user.getName(),user.getPhone(),user.getAddress(),user.isIsadmin(),user.isIsvalidate());
	}
	//注册时 验证邮箱，用户名是否已存在
	public boolean isUsernameExist(String username) throws SQLException {
		QueryRunner r = new QueryRunner(dbUtil.getDataSource());
		String sql="select * from user where username=?";
		user u = r.query(sql, new BeanHandler<user>(user.class),username);
		if(u==null) {
			return false;
		}else {
			return true;
		}
		
	}
	//注册时 验证邮箱是否存在
	public boolean isEmailExist(String email) throws SQLException {
		QueryRunner r = new QueryRunner(dbUtil.getDataSource());
		String sql="select * from user where email=?";
		user u = r.query(sql, new BeanHandler<user>(user.class),email);
		if(u==null) {
			return false;
		}else {
			return true;
		}
		
	}
	//登陆 根据用户名和邮箱 验证
	public user selectByUsernamePassword(String username,String password) throws SQLException {
		QueryRunner r = new QueryRunner(dbUtil.getDataSource());
		String sql="select * from user where username=? and password=?";
		return r.query(sql, new BeanHandler<user>(user.class),username,password);
	}
	public user selectByEmailPassword(String email,String password) throws SQLException {
		QueryRunner r = new QueryRunner(dbUtil.getDataSource());
		String sql="select * from user where email=? and password=?";
		return r.query(sql, new BeanHandler<user>(user.class),email,password);
	}
	//根据id查询
	public user selectByID(int id) throws SQLException {
		QueryRunner r = new QueryRunner(dbUtil.getDataSource());
		String sql="select * from user where id=?";
		return r.query(sql, new BeanHandler<user>(user.class),id);
	}
	
	//修改用户地址
	public void updateUserAddress(user user) throws SQLException {
		QueryRunner r = new QueryRunner(dbUtil.getDataSource());
		String sql="update user set name= ?,phone= ?,address = ? where id = ?";
		r.update(sql, user.getName(),user.getPhone(),user.getAddress(),user.getId());
	}
	//修改用户登陆次数
	public void updateLoginNum(int id,int loginnum, Date logintime) throws SQLException {
		QueryRunner r = new QueryRunner(dbUtil.getDataSource());
		String sql="update user set loginnum= ?,logintime= ? where id = ?";
		r.update(sql,loginnum,logintime,id);
	}
	//修改用户密码
	public void updatePwd(user user) throws SQLException {
		QueryRunner r = new QueryRunner(dbUtil.getDataSource());
		String sql="update user set password= ? where id = ?";
		r.update(sql, user.getPassword(),user.getId());
	}
	//用户总数
	public int selectUserCount() throws SQLException {
		QueryRunner r=new QueryRunner(dbUtil.getDataSource());
		String sql="";
		sql="select count(*) from user";
		return r.query(sql, new ScalarHandler<Long>()).intValue();
	}
	//用户登陆总数
	public int selectUserLoginNumCount() throws SQLException {
		QueryRunner r=new QueryRunner(dbUtil.getDataSource());
		String sql="";
		sql="select sum(loginnum) from user";
		return Integer.parseInt(r.query(sql, new ScalarHandler<BigDecimal>()).toString());
	}
	//获取user列表
	public List selectUserList(int pageNo, int pageSize) throws SQLException {
		QueryRunner r=new QueryRunner(dbUtil.getDataSource());
		String sql="select * from user limit ?,?";
		return r.query(sql, new BeanListHandler<user>(user.class),(pageNo-1)*pageSize,pageSize);
	}
	//根据id删除
	public void delete(int id) throws SQLException {
		QueryRunner r = new QueryRunner(dbUtil.getDataSource());
		String sql="delete  from user where id=?";
		r.update(sql,id);
	}
	

	
}
