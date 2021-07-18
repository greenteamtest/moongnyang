package com.Login.dto;

public class MemberVO {
	private String email;
	private String nickname;
	private String pwd;
	private int auth;
	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public int getAuth() {
		return auth;
	}

	public void setAuth(int auth) {
		this.auth = auth;
	}

	@Override
	public String toString() {
		return "MemberVO [email=" + email + ", nickname=" + nickname + ", pwd=" + pwd + ", auth=" + auth + "]";
	}

}
