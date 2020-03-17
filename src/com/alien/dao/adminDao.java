package com.alien.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.MapHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

//import com.sun.org.apache.bcel.internal.generic.NEW;
import com.alien.model.order;
import com.alien.model.admin;
import com.alien.utils.dbUtil;

public class adminDao {
	//添加用户
	public void addUser(admin admin) throws SQLException {
		QueryRunner r = new QueryRunner(dbUtil.getDataSource());
		String sql="insert into admin(adminname,email,password,name,phone,address,isadmin,isvalidate) values(?,?,?,?,?,?,?,?)";
		r.update(sql,admin.getAdminname(),admin.getEmail(),admin.getPassword(),admin.getName(),admin.getPhone(),admin.getAddress(),admin.isIsadmin(),admin.isIsvalidate());
	}
	//注册时 验证邮箱，用户名是否已存在
	public boolean isUsernameExist(String adminname) throws SQLException {
		QueryRunner r = new QueryRunner(dbUtil.getDataSource());
		String sql="select * from admin where adminname=?";
		admin u = r.query(sql, new BeanHandler<admin>(admin.class),adminname);
		if(u==null) {
			return false;
		}else {
			return true;
		}
		
	}
	//注册时 验证邮箱是否存在
	public boolean isEmailExist(String email) throws SQLException {
		QueryRunner r = new QueryRunner(dbUtil.getDataSource());
		String sql="select * from admin where email=?";
		admin u = r.query(sql, new BeanHandler<admin>(admin.class),email);
		if(u==null) {
			return false;
		}else {
			return true;
		}
		
	}
	//登陆 根据用户名和邮箱 验证
	public admin selectByUsernamePassword(String adminname,String password) throws SQLException {
		QueryRunner r = new QueryRunner(dbUtil.getDataSource());
		String sql="select * from admin where adminname=? and password=?";
		return r.query(sql, new BeanHandler<admin>(admin.class),adminname,password);
	}
	public admin selectByEmailPassword(String email,String password) throws SQLException {
		QueryRunner r = new QueryRunner(dbUtil.getDataSource());
		String sql="select * from admin where email=? and password=?";
		return r.query(sql, new BeanHandler<admin>(admin.class),email,password);
	}
	//根据id查询
	public admin selectByID(int id) throws SQLException {
		QueryRunner r = new QueryRunner(dbUtil.getDataSource());
		String sql="select * from admin where id=?";
		return r.query(sql, new BeanHandler<admin>(admin.class),id);
	}
	
	//修改用户地址
	public void updateAdminAddress(admin admin) throws SQLException {
		QueryRunner r = new QueryRunner(dbUtil.getDataSource());
		String sql="update admin set name= ?,phone= ?,address = ? where id = ?";
		r.update(sql, admin.getName(),admin.getPhone(),admin.getAddress(),admin.getId());
	}
	//修改用户密码
	public void updatePwd(admin admin) throws SQLException {
		QueryRunner r = new QueryRunner(dbUtil.getDataSource());
		String sql="update admin set password= ? where id = ?";
		r.update(sql, admin.getPassword(),admin.getId());
	}
	//用户总数
	public int selectUserCount() throws SQLException {
		QueryRunner r=new QueryRunner(dbUtil.getDataSource());
		String sql="";
		sql="select count(*) from admin";
		return r.query(sql, new ScalarHandler<Long>()).intValue();
	}
	//获取user列表
	public List selectUserList(int pageNo, int pageSize) throws SQLException {
		QueryRunner r=new QueryRunner(dbUtil.getDataSource());
		String sql="select * from admin limit ?,?";
		return r.query(sql, new BeanListHandler<admin>(admin.class),(pageNo-1)*pageSize,pageSize);
	}
	//根据id删除
	public void delete(int id) throws SQLException {
		QueryRunner r = new QueryRunner(dbUtil.getDataSource());
		String sql="delete  from admin where id=?";
		r.update(sql,id);
	}
	

	
}
