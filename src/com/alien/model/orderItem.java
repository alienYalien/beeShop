package com.alien.model;

public class orderItem {
	private int id;
	private float price;
	private int amount;
	private int goodsid;
	private String goodsname;
	private int orderid;
	public int getId() {
		return id;
	}
	
	public orderItem(float price, int amount, int goodsid) {
		super();
		this.price = price;
		this.amount = amount;
		this.goodsid = goodsid;
	}
	public void setId(int id) {
		this.id = id;
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
	public int getGoodsid() {
		return goodsid;
	}
	public void setGoodsid(int goodsid) {
		this.goodsid = goodsid;
	}
	public int getOrderid() {
		return orderid;
	}
	public void setOrderid(int orderid) {
		this.orderid = orderid;
	}
	public void setGoodsname(String goodsname){
		this.goodsname = goodsname;
	}
	public String getGoodsname(){
		return goodsname;
	}

	public orderItem() {
		super();
	}
}