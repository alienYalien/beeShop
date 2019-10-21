package com.alien.model;


import java.util.Date;

public class reply {
	private int id;
	private int userid;
	private int questionid;
	private String name;
	private String content;
	private Date datetime;
	
	
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
	public int getQuestionid() {
		return questionid;
	}
	public void setQuestion(int questionid) {
		this.questionid = questionid;
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

	public reply( int userid, int questionid, String content,Date datetime) {
		super();
		this.userid = userid;
		this.questionid = questionid;
		this.content = content;		
		this.datetime = datetime;
	}
	public reply() {
		super();
	}
	@Override
	public String toString() {
		return "Cart [id=" + id + ", userid=" + userid + ", questionid=" + questionid + ", content=" + content + ", datetime=" + datetime + "]";
	}
	

}