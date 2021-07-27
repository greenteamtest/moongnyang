package com.health.dto;

public class HealthReviewVo {

	private int place_list_id;
	private String user_email;
	private String contents;
	private String write_date;
	private String write_time;
	private int like_count;
	private String manager_comment;
	private int my_rating;

	public HealthReviewVo() {
		// TODO Auto-generated constructor stub
	}

	public int getPlace_list_id() {
		return place_list_id;
	}

	public void setPlace_list_id(int place_list_id) {
		this.place_list_id = place_list_id;
	}

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getWrite_date() {
		return write_date;
	}

	public void setWrite_date(String write_date) {
		this.write_date = write_date;
	}

	public String getWrite_time() {
		return write_time;
	}

	public void setWrite_time(String write_time) {
		this.write_time = write_time;
	}

	public int getLike_count() {
		return like_count;
	}

	public void setLike_count(int like_count) {
		this.like_count = like_count;
	}

	public String getManager_comment() {
		return manager_comment;
	}

	public void setManager_comment(String manager_comment) {
		this.manager_comment = manager_comment;
	}

	public int getMy_rating() {
		return my_rating;
	}

	public void setMy_rating(int my_rating) {
		this.my_rating = my_rating;
	}

	public String toString() {
		return "{\"place_list_id\" :" + "\"" + place_list_id + "\"" + ",  \"user_email\" :" + "\"" + user_email + "\""
				+ ", \"contents\" : " + "\"" + contents + "\"" + ", \"write_date\" : " + "\"" + write_date + "\""
				+ ", \"write_time\" : " + "\"" + write_time + "\"" + ", \"like_count\" : " + "\"" + like_count + "\""
				+ ", \"manager_comment\" : " + "\"" + manager_comment + "\"" + ", \"my_rating\" : " + "\"" + my_rating
				+ "\"}";
	}

}
