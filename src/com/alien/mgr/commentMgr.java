package com.alien.mgr;

import java.sql.SQLException;
import java.util.List;

import com.alien.model.comment;
import com.alien.dao.commentDao;

public class commentMgr {
	public commentDao cDao=new commentDao();
	public List<comment> selectAll(int goodsid){
		List<comment> list=null;
		try {
			list=cDao.selectAll(goodsid);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public void insert(comment c) {
		try {
			cDao.insert(c);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}
