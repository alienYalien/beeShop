package com.alien.model;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

public class type {
	private int id;
	private String typename;
	
	private String encodeName;
	
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTypename() {
		return typename;
	}
	public void setTypename(String typename) {
		this.typename = typename;
		try {
			this.encodeName=URLEncoder.encode(typename,"utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public type(int id, String typename) {
		super();
		this.id = id;
		this.typename = typename;
	}
	public type() {
		super();
	}
	public type(String typename) {
		super();
		this.typename = typename;
	}
	public String getEncodeName() {
		return encodeName;
	}
	public void setEncodeName(String encodeName) {
		this.encodeName = encodeName;
	}
	@Override
	public String toString() {
		return "type [id=" + id + ", typename=" + typename + ", encodeName=" + encodeName + "]";
	}
	
}
