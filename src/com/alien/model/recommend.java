package com.alien.model;

public class recommend {
	private int id;
	private int type;//1条幅 2热销 3新品
	private goods goods;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public goods getGoods() {
		return goods;
	}
	public void setGoods(goods goods) {
		this.goods = goods;
	}
	public recommend(int id, int type, goods goods) {
		super();
		this.id = id;
		this.type = type;
		this.goods = goods;
	}
	public recommend() {
		super();
	}
	
	
}
