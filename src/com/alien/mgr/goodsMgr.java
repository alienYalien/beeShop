package com.alien.mgr;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.alien.dao.goodsDao;
import com.alien.model.goods;
import com.alien.model.page;

public class goodsMgr {
	private goodsDao gDao=new goodsDao();
	//横幅
	public Map<String,Object> getScrollGoods(){
		Map<String,Object> map=null;
		try {
			map=gDao.getScrollGoods();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return map;
	}
	//横幅下banner
	public List<Map<String,Object>> getBannerGoodsList(){
		List<Map<String,Object>> list=null;
		try {
			list=gDao.getGoodsList(0);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;	
	}
	//商家推荐
	public List<Map<String,Object>> getScrollGoodsList(){
		List<Map<String,Object>> list=null;
		try {
			list=gDao.getGoodsList(1);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;	
	}
	//热销
	public List<Map<String,Object>> getHotGoodsList(){
		List<Map<String,Object>> list=null;
		try {
			list=gDao.getGoodsList(2);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;	
	}
	//新品
	public List<Map<String,Object>> getNewGoodsList(){
		List<Map<String,Object>> list=null;
		try {
			list=gDao.getGoodsList(3);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;	
	}
	//折扣
	public List<Map<String,Object>> getSaleGoodsList(){
		List<Map<String,Object>> list=null;
		try {
			list=gDao.getGoodsList(4);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;	
	}
//	public List<goods> selectGoods(int typeID,int pageNo,int pageSize){
//		List<goods> list=null;
//		try {
//			list=gDao.selectGoods(typeID, pageNo, pageSize);
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//		return list;
//	}
	//系列单页
	public page getGoodsPage(int typeID,int pageNo) {//通过分页模型来查询
		page p=new page();//新建一个分页对象
		
		p.setPageNo(pageNo);//设置第几页
		int totalCount=0;//总数
		try {
			totalCount=gDao.getGoodsCount(typeID);//通过GoodsDao中的函数 查询该类型的总数
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		p.setPageSizeAndTotalCount(12, totalCount);//通过总数 计算要分多少页
		
		List list=null;
		try {
			list=gDao.selectGoods(typeID, pageNo, 12); //查询数据 根据类型id ，页码。 返回该页的集合
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		p.setList(list);//为分页设置 返回的集合对象
		return p;
	}
	//热销 单页
	public page getGoodsRecommendPage(int type,int pageNo) {//通过分页模型来查询
		page p=new page();//新建一个分页对象
		p.setPageNo(pageNo);//设置第几页
		int totalCount=0;//总数
		try {
			totalCount=gDao.selectGoodsRecommendCount(type);//通过GoodsDao中的函数 查询该类型的总数
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		p.setPageSizeAndTotalCount(12, totalCount);//通过总数 计算要分多少页
		
		List list=null;
		try {
			list=gDao.selectGoodsRecommend(type, pageNo, 12); //查询数据 根据类型id ，页码。 返回该页的集合
			for (goods g : (List<goods>)list) {
				g.setScroll(gDao.isScroll(g));
				g.setHot(gDao.isHot(g));
				g.setNew(gDao.isNew(g));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		p.setList(list);//为分页设置 返回的集合对象
		return p;
	}
	public goods getById(int id) {
		goods g=null;
		try {
			g=gDao.getById(id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return g;
	}
	public page getSearchGoodsPage(String keyword, int pageNo) {
		page p=new page();//新建一个分页对象
		p.setPageNo(pageNo);//设置第几页
		int totalCount=0;//总数
		try {
//			totalCount=gDao.selectGoodsRecommendCount(type);//通过GoodsDao中的函数 查询该类型的总数
			totalCount=gDao.getSearchCount(keyword);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		p.setPageSizeAndTotalCount(12, totalCount);//通过总数 计算要分多少页
		
		List list=null;
		try {
//			list=gDao.selectGoodsRecommend(type, pageNo, 8); //查询数据 根据类型id ，页码。 返回该页的集合
			list=gDao.selectSearchGoods(keyword,pageNo,12);

		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		p.setList(list);//为分页设置 返回的集合对象
		return p;
	}
//
	public void addRecommend(int id,int type) {
		try {
			gDao.addRecommend(id, type);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void removeRecommend(int id,int type) {
		try {
			gDao.removeRecommend(id, type);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void insert(goods g) {
		try {
			gDao.insert(g);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void update(goods g) {
		try {
			gDao.update(g);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void delete(int id) {
		try {
			gDao.delete(id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
