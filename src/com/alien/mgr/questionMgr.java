package com.alien.mgr;

import java.sql.SQLException;
import java.util.List;

import com.alien.model.car;
import com.alien.model.goods;
import com.alien.model.order;
import com.alien.model.orderItem;
import com.alien.model.question;
import com.alien.model.reply;
import com.alien.dao.cartDao;
import com.alien.dao.questionDao;
import com.alien.dao.replyDao;

public class questionMgr {
	public questionDao qDao=new questionDao();
	private replyDao rDao =new replyDao(); 
	public List<question> selectAll(int goodsid){
		List<question> questionList=null;
		try {
			questionList=qDao.selectAll(goodsid);
			for(question q:questionList) {
				List<reply> replyList=null;
				replyList=rDao.selectAll(q.getId());
				q.setReplyList(replyList);	
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return questionList;
	}
	
	public void insert(question c) {
		try {
			qDao.insert(c);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public String getUsernameById(int qid) {
		reply r=null;
		try {
			r=qDao.getUernameById(qid);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return r.getName();
	}
}
