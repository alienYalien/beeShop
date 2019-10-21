package com.alien.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.alien.model.comment;
import com.alien.utils.dbUtil;

public class commentDao {
	//根据goodsid获取全部
	public List<comment> selectAll(int goodsid) throws SQLException {
		QueryRunner r=new QueryRunner(dbUtil.getDataSource());
		String sql="select c.content,c.datetime,u.name from comment c,user u where c.goods_id=? and c.user_id=u.id";
		return r.query(sql, new BeanListHandler<comment>(comment.class),goodsid);
	}
	//添加comment
		public void insert(comment c) throws SQLException {
			QueryRunner r=new QueryRunner(dbUtil.getDataSource());
			String sql="insert into comment(user_id,goods_id,content,datetime) values(?,?,?,?)";
			r.update(sql,c.getUserid(),c.getGoodsid(),c.getContent(),c.getDatetime());
		}
}
