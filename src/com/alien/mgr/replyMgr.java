package com.alien.mgr;

import java.sql.SQLException;
import java.util.List;

import com.alien.model.question;
import com.alien.model.reply;
import com.alien.dao.replyDao;

public class replyMgr {
	public replyDao rDao=new replyDao();
	public List<reply> selectAll(int qid){
		List<reply> list=null;
		try {
			list=rDao.selectAll(qid);	
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public void insert(reply c) {
		try {
			rDao.insert(c);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
