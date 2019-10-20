package com.alien.model;

public class admin {
	private int id;
	private String adminname;
	private String email;
	private String password;
	private String name;
	private String phone;
	private String address;
	private boolean isadmin=false;
	private boolean isvalidate=false;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getAdminname() {
		return adminname;
	}
	public void setAdminname(String adminname) {
		this.adminname = adminname;
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
	public admin(int id, String adminname, String email, String password, String name, String phone, String address,
			boolean isadmin, boolean isvalidate) {
		super();
		this.id = id;
		this.adminname = adminname;
		this.email = email;
		this.password = password;
		this.name = name;
		this.phone = phone;
		this.address = address;
		this.isadmin = isadmin;
		this.isvalidate = isvalidate;
	}
	public admin(String adminname, String email, String password, String name, String phone, String address) {
		super();
		this.adminname = adminname;
		this.email = email;
		this.password = password;
		this.name = name;
		this.phone = phone;
		this.address = address;
		this.isadmin = false;
		this.isvalidate = false;
	}
	public admin() {
		super();
	}
	@Override
	public String toString() {
		return "Admin [id=" + id + ", adminname=" + adminname + ", email=" + email + ", password=" + password + ", name="
				+ name + ", phone=" + phone + ", address=" + address + ", isadmin=" + isadmin + ", isvalidate="
				+ isvalidate + "]";
	}
	
	
}
