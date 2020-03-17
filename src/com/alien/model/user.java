package com.alien.model;

import java.util.Date;

public class user {
	private int id;
	private String username;
	private String email;
	private String password;
	private String name;
	private String phone;
	private String address;
	private boolean isadmin=false;
	private boolean isvalidate=false;
	private int loginnum;
	private Date logintime;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
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
	public boolean isIsadmin() {
		return isadmin;
	}
	public void setIsadmin(boolean isadmin) {
		this.isadmin = isadmin;
	}
	public boolean isIsvalidate() {
		return isvalidate;
	}
	public void setIsvalidate(boolean isvalidate) {
		this.isvalidate = isvalidate;
	}	
	public int getLoginnum() {
		return loginnum;
	}
	public void setLoginnum(int loginnum) {
		this.loginnum = loginnum;
	}
	public Date getLogintime() {
		return logintime;
	}
	public void setLogintime(Date logintime) {
		this.logintime = logintime;
	}
	public user(String username, String email, String password, String name, String phone, String address,int loginnum,Date logintime) {
		super();
		this.username = username;
		this.email = email;
		this.password = password;
		this.name = name;
		this.phone = phone;
		this.address = address;
		this.isadmin = false;
		this.isvalidate = false;
		this.loginnum = loginnum;
		this.logintime = logintime;
	}
	public user() {
		super();
	}
	@Override
	public String toString() {
		return "user [id=" + id + ", username=" + username + ", email=" + email + ", password=" + password + ", name="
				+ name + ", phone=" + phone + ", address=" + address + ", isadmin=" + isadmin + ", isvalidate="
				+ isvalidate + ", loginnum=" + loginnum + ", logintime=" + logintime + "]";
	}
	
	
}
