package com.health.dto;

public class HealthPlaceVo {

	private int idx;
	private String user_email;
	private String field;
	private int place_list_idx;
	private String category_id;
	private String place;

	private int place_info_idx;
	private int place_list_id;
	private String phone_num;
	private String address;

	private String open_time;
	private String introduce;
	private int dips_cont;
	private String pet_kind;
	private String sharing_url;

	private int sum_rating;
	private int reviewers;
	private double avg;

	private String imgURL;
	private int approve_state;

	public HealthPlaceVo() {
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getField() {
		return field;
	}

	public void setField(String field) {
		this.field = field;
	}

	public int getPlace_list_idx() {
		return place_list_idx;
	}

	public void setPlace_list_idx(int place_list_idx) {
		this.place_list_idx = place_list_idx;
	}

	public String getCategory_id() {
		return category_id;
	}

	public void setCategory_id(String category_id) {
		this.category_id = category_id;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	public int getPlace_info_idx() {
		return place_info_idx;
	}

	public void setPlace_info_idx(int place_info_idx) {
		this.place_info_idx = place_info_idx;
	}

	public int getPlace_list_id() {
		return place_list_id;
	}

	public void setPlace_list_id(int place_list_id) {
		this.place_list_id = place_list_id;
	}

	public String getPhone_num() {
		return phone_num;
	}

	public void setPhone_num(String phone_num) {
		this.phone_num = phone_num;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getOpen_time() {
		return open_time;
	}

	public void setOpen_time(String open_time) {
		this.open_time = open_time;
	}

	public String getIntroduce() {
		return introduce;
	}

	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}

	public int getDips_cont() {
		return dips_cont;
	}

	public void setDips_cont(int dips_cont) {
		this.dips_cont = dips_cont;
	}

	public String getPet_kind() {
		return pet_kind;
	}

	public void setPet_kind(String pet_kind) {
		this.pet_kind = pet_kind;
	}

	public int getSum_rating() {
		return sum_rating;
	}

	public void setSum_rating(int sum_rating) {
		this.sum_rating = sum_rating;
	}

	public int getReviewers() {
		return reviewers;
	}

	public void setReviewers(int reviewers) {
		this.reviewers = reviewers;
	}

	public double getAvg() {
		return avg;
	}

	public void setAvg(double avg) {
		this.avg = avg;
	}

	public String getSharing_url() {
		return sharing_url;
	}

	public void setSharing_url(String sharing_url) {
		this.sharing_url = sharing_url;
	}

	public String getImgURL() {
		return imgURL;
	}

	public void setImgURL(String imgURL) {
		this.imgURL = imgURL;
	}

	public int getApprove_state() {
		return approve_state;
	}

	public void setApprove_state(int approve_state) {
		this.approve_state = approve_state;
	}

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	public String toString() {
		return "{\"idx\" :" + "\"" + idx + "\"" + ",  \"place\" :" + "\"" + place + "\"" + ", \"phone_num\" : " + "\""
				+ phone_num + "\"" + ", \"address\" : " + "\"" + address + "\"" + ", \"open_time\" : " + "\""
				+ open_time + "\"" + ", \"introduce\" : " + "\"" + introduce + "\"" + ", \"pet_kind\" : " + "\""
				+ pet_kind + "\"" + ", \"dips_cont\" : " + "\"" + dips_cont + "\"}";
	}

}
