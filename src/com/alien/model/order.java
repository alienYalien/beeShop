package com.alien.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.alien.utils.priceUtil;

public class order {
	private int id;
	private float total;//总价
	private int amount;//商品总数
	private int status;//1.未付款；2.已付款； 3.已发货 4.已完成
	private int paytype;//1.微信 2.支付宝 3.货到付款
	private String name;
	private String phone;
	private String address;
	private Date datetime;
	private user user;
	
	private  Map<Integer, orderItem> itemMap=new HashMap<Integer, orderItem>();
	private List<orderItem> itemList=new ArrayList<orderItem>();
	
	public void setUsername(String username) {
		user =new user();
		user.setUsername(username);
	}
	
	@Override
	public String toString() {
		return "Order [id=" + id + ", total=" + total + ", amount=" + amount + ", status=" + status + ", paytype="
				+ paytype + ", name=" + name + ", phone=" + phone + ", address=" + address + ", datetime=" + datetime
				+ ", user=" + user + ", itemMap=" + itemMap + ", itemList=" + itemList + "]";
	}

	public List<orderItem> getItemList() {
		return itemList;
	}

	public void setItemList(List<orderItem> itemList) {
		this.itemList = itemList;
	}
		
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public float getTotal() {
		return total;
	}
	public void setTotal(float total) {
		this.total = total;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public int getPaytype() {
		return paytype;
	}
	public void setPaytype(int paytype) {
		this.paytype = paytype;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Date getDatetime() {
		return datetime;
	}
	public void setDatetime(Date datetime) {
		this.datetime = datetime;
	}
	public user getUser() {
		return user;
	}
	public void setUser(user user) {
		this.user = user;
		this.setName(this.user.getName());
		this.setPhone(this.user.getPassword());
		this.setAddress(this.user.getAddress());
	}
	public order() {
		super();
	}

	public Map<Integer, orderItem> getItemMap() {
		return itemMap;
	}

	public void setItemMap(Map<Integer, orderItem> itemMap) {
		this.itemMap = itemMap;
	}
	
	
}
