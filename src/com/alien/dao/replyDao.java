package com.alien.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.alien.model.reply;
import com.alien.utils.dbUtil;

public class replyDao {
	//根据id获取全部
		public List<reply> selectAll(int qid) throws SQLException {
			QueryRunner r=new QueryRunner(dbUtil.getDataSource());
			String sql="select r.content,r.datetime,u.name from reply r,user u,question q where r.question_id=? and r.question_id=q.id and u.id=r.user_id";
			return r.query(sql, new BeanListHandler<reply>(reply.class),qid);
		}
		//添加
		public void insert(reply c) throws SQLException {
			QueryRunner r=new QueryRunner(dbUtil.getDataSource());
			String sql="insert into reply(user_id,question_id,content,datetime) values(?,?,?,?)";
			r.update(sql,c.getUserid(),c.getQuestionid(),c.getContent(),c.getDatetime());
		}
}
