package com.Community.dto;

public class Community_CommentVO {
	

	private Integer comment_idx;
	private String user_email;
	private String comment_content;
	private Integer board_idx;
	private String write_date;
	
	
	public Integer getComment_idx() {
		return comment_idx;
	}
	public void setComment_idx(Integer comment_idx) {
		this.comment_idx = comment_idx;
	}
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	public String getComment_content() {
		return comment_content;
	}
	public void setComment_content(String comment_content) {
		this.comment_content = comment_content;
	}
	public Integer getBoard_idx() {
		return board_idx;
	}
	public void setBoard_idx(Integer board_idx) {
		this.board_idx = board_idx;
	}
	public String getWrite_date() {
		return write_date;
	}
	public void setWrite_date(String write_date) {
		this.write_date = write_date;
	}
	
	
}
