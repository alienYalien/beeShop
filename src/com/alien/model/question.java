package com.alien.model;


import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class question {
	private int id;
	private int userid;
	private int goodsid;
	private String name;
	private String content;
	private Date datetime;
	
	private List<reply> replyList=new ArrayList<>();
	
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
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getDatetime() {
		return datetime;
	}
	public void setDatetime(Date datetime) {
		this.datetime = datetime;
	}

	public question( int userid, int goodsid, String content,Date datetime) {
		super();
		this.userid = userid;
		this.goodsid = goodsid;
		this.content = content;		
		this.datetime = datetime;
	}
	public question() {
		super();
	}
	@Override
	public String toString() {
		return "Question [id=" + id + ", userid=" + userid + ", goodsid=" + goodsid + ", content=" + content + ", datetime=" + datetime + "]";
	}

	public List<reply> getReplyList() {
		return replyList;
	}
	public void setReplyList(List<reply> replyList) {
		this.replyList = replyList;
	}

}