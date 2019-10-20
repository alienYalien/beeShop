package com.alien.mgr;

import java.sql.SQLException;
import java.util.List;

import com.alien.dao.typeDao;
import com.alien.model.type;
import com.alien.model.user;

public class typeMgr {
	private typeDao tDao=new typeDao();
	public List<type> selectAll(){
		List<type> list=null;
		try {
			list=tDao.selectAll();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	public type select(int id) {
		type t=null;
		try {
			t=tDao.select(id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return t;
	}
	
	public void insert(type t) {
		try {
			tDao.insert(t);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//添加类型
	public boolean typeAdd(type t) {
		try {
			
			if(null!=tDao.selectByName(t.getTypename())) {
				return false;
			}
			tDao.insert(t);
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}			
	
	public void update(type t) {
		try {
			tDao.update(t);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public boolean delete(int id) {
		try {
			tDao.delete(id);
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}
}
