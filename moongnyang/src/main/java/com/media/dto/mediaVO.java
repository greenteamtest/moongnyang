package com.media.dto;

public class mediaVO {
	private Integer num_media;
	private String user_email_media;
	private String user_nick;
	private String content_media;
	private String mediaurl;
	private String title_media;
	private String hashtag_media;
	private int like_media;
	private int readcnt_media;

	public int getLike_media() {
		return like_media;
	}

	public void setLike_media(int like_media) {
		this.like_media = like_media;
	}

	public int getReadcnt_media() {
		return readcnt_media;
	}

	public void setReadcnt_media(int readcnt_media) {
		this.readcnt_media = readcnt_media;
	}

	public String getHashtag_media() {
		return hashtag_media;
	}

	public void setHashtag_media(String hashtag_media) {
		this.hashtag_media = hashtag_media;
	}

	public String getTitle_media() {

		return title_media;
	}

	public void setTitle_media(String title_media) {
		this.title_media = title_media;
	}

	public Integer getNum_media() {
		return num_media;
	}

	public void setNum_media(Integer num_media) {
		this.num_media = num_media;
	}

	public String getUser_email_media() {
		return user_email_media;
	}

	public void setUser_email_media(String user_email_media) {
		this.user_email_media = user_email_media;
	}

	public String getUser_nick() {
		return user_nick;
	}

	public void setUser_nick(String user_nick_media) {
		this.user_nick = user_nick_media;
	}

	public String getContent_media() {
		return content_media;
	}

	public void setContent_media(String content_media) {
		this.content_media = content_media;
	}

	public String getMediaurl() {
		return mediaurl;
	}

	public void setMediaurl(String mediaurl) {
		this.mediaurl = mediaurl;
	}

}
