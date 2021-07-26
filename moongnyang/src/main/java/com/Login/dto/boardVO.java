package com.Login.dto;

import java.sql.Timestamp;

public class boardVO {

	private int num;
	private String email;
	private String content;
	private int readval;
	private Timestamp writedate;

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
