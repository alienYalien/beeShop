package com.alien.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class car {
	private int id;
	private int userid;
	private int goodsid;
	private int amount;
	private String name;
	private String typename;
	private String image1;
	private float price;
	
	private List<car> carList=new ArrayList<car>();
	private int allamount;//商品总数
	private float allprice;//总价
	
	public int getId() {
		return id;
	}	
	public void setId(int id) {
		this.id = id;
	}	
	public int getUserid() {
		return userid;
	}	
	public void setUserid(int userid) {
		this.userid = userid;
	}	
	public int getGoodsid() {
		return goodsid;
	}
	public void setGoodsid(int goodsid) {
		this.goodsid = goodsid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTypename() {
		return typename;
	}
	public void setTypename(String typename) {
		this.typename = typename;
	}
	public String getImage1() {
		return image1;
	}
	public void setImage1(String image1) {
		this.image1 = image1;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}


	public car(int id, int userid, int goodsid, int amount, String name,String typename,String image1,float price) {
		super();
		this.id = id;
		this.userid = userid;
		this.goodsid = goodsid;
		this.amount = amount;
		this.name = name;
		this.typename = typename;
		this.image1 = image1;
		this.price = price;
	}
	public car() {
		super();
	}
	@Override
	public String toString() {
		return "Car [id=" + id + ", userid=" + userid + ", goodsid=" + goodsid + ", amount=" + amount + ", name="
				+ name + ", typename=" + typename + ", image1=" + image1 + ", price=" + price + "]";
	}
	

public List<car> getCarList() {
	return carList;
}
public void setCarList(List<car> carList) {
	this.carList = carList;
}
public int getAllAmount() {
	return allamount;
}
public void setAllAmount(int allamount) {
	this.allamount = allamount;
}
public float getAllPrice() {
	return allprice;
}
public void setAllPrice(float allprice) {
	this.allprice = allprice;
}

}