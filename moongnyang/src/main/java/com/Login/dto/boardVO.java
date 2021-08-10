package com.Login.dto;

import java.sql.Timestamp;

public class boardVO {

	private int num;
	private String email;
	private String content;
	private int readval;
	private Timestamp writedate;
	private String keyword;
	private String manageremail;
	private String usercontent;
	private String user_nick;
	private String place_name;
	private String place_key;

	public String getPlace_name() {
		return place_name;
	}

	public void setPlace_name(String place_name) {
		this.place_name = place_name;
	}

	public String getPlace_key() {
		return place_key;
	}

	public void setPlace_key(String place_key) {
		this.place_key = place_key;
	}

	public String getUser_nick() {
		return user_nick;
	}

	public void setUser_nick(String user_nick) {
		this.user_nick = user_nick;
	}

	public String getUsercontent() {
		return usercontent;
	}

	public void setUsercontent(String usercontent) {
		this.usercontent = usercontent;
	}

	public String getManageremail() {
		return manageremail;
	}

	public void setManageremail(String manageremail) {
		this.manageremail = manageremail;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getReadval() {
		return readval;
	}

	public void setReadval(int readval) {
		this.readval = readval;
	}

	public Timestamp getWritedate() {
		return writedate;
	}

	public void setWritedate(Timestamp writedate) {
		this.writedate = writedate;
	}

}
