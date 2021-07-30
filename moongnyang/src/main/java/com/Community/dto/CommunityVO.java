package com.Community.dto;

public class CommunityVO {
	private Integer board_idx;
	private String user_email;
	private String title;
	private String contents;
	private Integer animal_tag;
	private Integer board_tag;
	private Integer read_count;
	private Integer like_count;
	private String write_date;

	private String pic_url_1;
	private String pic_url_2;
	private String pic_url_3;
	private String pic_url_4;
	private String pic_url_5;

//총 9개
	public Integer getBoard_idx() {
		return board_idx;
	}

	public void setBoard_idx(Integer board_idx) {
		this.board_idx = board_idx;
	}

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public Integer getAnimal_tag() {
		return animal_tag;
	}

	public void setAnimal_tag(Integer animal_tag) {
		this.animal_tag = animal_tag;
	}

	public Integer getBoard_tag() {
		return board_tag;
	}

	public void setBoard_tag(Integer board_tag) {
		this.board_tag = board_tag;
	}

	public Integer getRead_count() {
		return read_count;
	}

	public void setRead_count(Integer read_count) {
		this.read_count = read_count;
	}

	public Integer getLike_count() {
		return like_count;
	}

	public void setLike_count(Integer like_count) {
		this.like_count = like_count;
	}

	public String getWrite_date() {
		return write_date;
	}

	public void setWrite_date(String write_date) {
		this.write_date = write_date;
	}

	public String getPic_url_1() {
		return pic_url_1;
	}

	public void setPic_url_1(String pic_url_1) {
		this.pic_url_1 = pic_url_1;
	}

	public String getPic_url_2() {
		return pic_url_2;
	}

	public void setPic_url_2(String pic_url_2) {
		this.pic_url_2 = pic_url_2;
	}

	public String getPic_url_3() {
		return pic_url_3;
	}

	public void setPic_url_3(String pic_url_3) {
		this.pic_url_3 = pic_url_3;
	}

	public String getPic_url_4() {
		return pic_url_4;
	}

	public void setPic_url_4(String pic_url_4) {
		this.pic_url_4 = pic_url_4;
	}

	public String getPic_url_5() {
		return pic_url_5;
	}

	public void setPic_url_5(String pic_url_5) {
		this.pic_url_5 = pic_url_5;
	}

}
