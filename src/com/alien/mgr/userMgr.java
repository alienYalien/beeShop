package com.alien.mgr;

import java.sql.SQLException;
import java.util.Date;
import java.util.List;

import com.alien.dao.userDao;
import com.alien.model.order;
import com.alien.model.orderItem;
import com.alien.model.page;
import com.alien.model.user;

public class userMgr {
	private userDao uDao=new userDao();
	//注册服务
	public boolean register(user user) {
		try {
			
			if(uDao.isUsernameExist(user.getUsername())) {
				return false;
			}
			if(uDao.isEmailExist(user.getEmail())) {
				return false;
			}
			uDao.addUser(user);
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	//登陆次数
	public void loginNum(int id,int num) {
		try {
			int loginnum=num+1;
			uDao.updateLoginNum(id,loginnum,new Date());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	//用户登陆总数
	public int selectUserLoginNumCount() {
		try {
			return uDao.selectUserLoginNumCount();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return -1;
		}		
	}
	//用户总量
	public int selectUserCount() {
		try {
			return uDao.selectUserCount();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return -1;
		}		
	}
	//登陆服务
	public user login(String ue,String password) {
		user user=null;
		try {
			user = uDao.selectByUsernamePassword(ue, password);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(user!=null) {
			return user;
		}
		try {
			user=uDao.selectByEmailPassword(ue, password);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(user!=null) {
			return user;
		}
		return null;	
	}
	//根据id查询信息
	public user selectByID(int id) {
		user u=null;
		try {
			u = uDao.selectByID(id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return u;
		
	}
	//更新地址服务
	public void updateUserAddress(user user) {
		try {
			uDao.updateUserAddress(user);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public boolean delete(int id) {
		try {
			uDao.delete(id);
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}

	}
	public void updatePwd(user user) {
		try {
			uDao.updatePwd(user);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public boolean updatePwdReBool(user user) {
		try {
			uDao.updatePwd(user);
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}
	public page getUserPage(int pageNo) {

		page p=new page();//新建一个分页对象
		
		p.setPageNo(pageNo);//设置第几页
		int pageSize=7;
		int totalCount=0;//总数
		try {
			totalCount=uDao.selectUserCount();//通过GoodsDao中的函数 查询该类型的总数
		} catch (SQLException e) {
			e.printStackTrace();
		}
		p.setPageSizeAndTotalCount(pageSize, totalCount);//通过总数 计算要分多少页
		
		List list=null;
		try {
			list=uDao.selectUserList(pageNo, pageSize); //查询数据 根据类型id ，页码。 返回该页的集合

		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		p.setList(list);//为分页设置 返回的集合对象
		return p;
	}
}
