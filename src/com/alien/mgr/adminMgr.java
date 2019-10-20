package com.alien.mgr;

import java.sql.SQLException;
import java.util.List;

import com.alien.dao.adminDao;
import com.alien.model.order;
import com.alien.model.orderItem;
import com.alien.model.page;
import com.alien.model.admin;

public class adminMgr {
	private adminDao aDao=new adminDao();
	//注册服务
	public boolean register(admin admin) {
		try {
			
			if(aDao.isUsernameExist(admin.getAdminname())) {
				return false;
			}
			if(aDao.isEmailExist(admin.getEmail())) {
				return false;
			}
			aDao.addUser(admin);
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	//登陆服务
	public admin login(String ue,String password) {
		admin admin=null;
		try {
			admin = aDao.selectByUsernamePassword(ue, password);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(admin!=null) {
			return admin;
		}
		try {
			admin=aDao.selectByEmailPassword(ue, password);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(admin!=null) {
			return admin;
		}
		return null;	
	}
	//根据id查询信息
	public admin selectByID(int id) {
		admin u=null;
		try {
			u = aDao.selectByID(id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return u;
		
	}
	//更新地址服务
	public void updateUserAddress(admin admin) {
		try {
			aDao.updateAdminAddress(admin);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public boolean delete(int id) {
		try {
			aDao.delete(id);
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}

	}
	public void updatePwd(admin admin) {
		try {
			aDao.updatePwd(admin);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public page getUserPage(int pageNo) {

		page p=new page();//新建一个分页对象
		
		p.setPageNo(pageNo);//设置第几页
		int pageSize=7;
		int totalCount=0;//总数
		try {
			totalCount=aDao.selectUserCount();//通过GoodsDao中的函数 查询该类型的总数
		} catch (SQLException e) {
			e.printStackTrace();
		}
		p.setPageSizeAndTotalCount(pageSize, totalCount);//通过总数 计算要分多少页
		
		List list=null;
		try {
			list=aDao.selectUserList(pageNo, pageSize); //查询数据 根据类型id ，页码。 返回该页的集合

		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		p.setList(list);//为分页设置 返回的集合对象
		return p;
	}
}
