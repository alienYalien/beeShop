package com.alien.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.alien.model.goods;
import com.alien.model.question;
import com.alien.model.reply;
import com.alien.utils.dbUtil;

public class questionDao {
	//根据goodsid获取全部
		public List<question> selectAll(int goodsid) throws SQLException {
			QueryRunner r=new QueryRunner(dbUtil.getDataSource());
			String sql="select q.id,q.content,q.datetime,u.name from question q,user u where q.goods_id=? and q.user_id=u.id";
			return r.query(sql, new BeanListHandler<question>(question.class),goodsid);
		}
		//添加comment
		public void insert(question c) throws SQLException {
			QueryRunner r=new QueryRunner(dbUtil.getDataSource());
			String sql="insert into question(user_id,goods_id,content,datetime) values(?,?,?,?)";
			r.update(sql,c.getUserid(),c.getGoodsid(),c.getContent(),c.getDatetime());
		}
		//根据ID查找单个提问者姓名
		public reply getUernameById(int id) throws SQLException {
			QueryRunner r=new QueryRunner(dbUtil.getDataSource());
			String sql="select u.name from user u,question q where q.id=? and q.user_id=u.id";
			return r.query(sql, new BeanHandler<reply>(reply.class),id);
		}
}
