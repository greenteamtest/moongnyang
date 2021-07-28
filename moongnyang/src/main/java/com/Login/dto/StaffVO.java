package com.Login.dto;

import java.sql.Timestamp;

public class StaffVO {
	private int num_vacation;
	private String user_nick_vacation;
	private String user_email_vacation;
	private Timestamp start_vacation;
	private Timestamp end_vacation;
	private String reason_vacation;
	private String val_vacation;
	private String check_vacation;

	private int num_timeover;
	private String user_nick_timeover;
	private String user_email_timeover;
	private String reason_timeover;
	private String check_timeover;
	private Timestamp start_timeover;
	private Timestamp end_timeover;
	private Timestamp date_timeover;

	@Override
	public String toString() {
		return "StaffVO [num_vacation=" + num_vacation + ", user_nick_vacation=" + user_nick_vacation
				+ ", user_email_vacation=" + user_email_vacation + ", start_vacation=" + start_vacation
				+ ", end_vacation=" + end_vacation + ", reason_vacation=" + reason_vacation + ", val_vacation="
				+ val_vacation + ", check_vacation=" + check_vacation + ", num_timeover=" + num_timeover
				+ ", user_nick_timeover=" + user_nick_timeover + ", user_email_timeover=" + user_email_timeover
				+ ", reason_timeover=" + reason_timeover + ", check_timeover=" + check_timeover + ", start_timeover="
				+ start_timeover + ", end_timeover=" + end_timeover + ", date_timeover=" + date_timeover + "]";
	}

	public int getNum_vacation() {
		return num_vacation;
	}

	public void setNum_vacation(int num_vacation) {
		this.num_vacation = num_vacation;
	}

	public String getUser_nick_vacation() {
		return user_nick_vacation;
	}

	public void setUser_nick_vacation(String user_nick_vacation) {
		this.user_nick_vacation = user_nick_vacation;
	}

	public String getUser_email_vacation() {
		return user_email_vacation;
	}

	public void setUser_email_vacation(String user_email_vacation) {
		this.user_email_vacation = user_email_vacation;
	}

	public Timestamp getStart_vacation() {
		return start_vacation;
	}

	public void setStart_vacation(Timestamp start_vacation) {
		this.start_vacation = start_vacation;
	}

	public Timestamp getEnd_vacation() {
		return end_vacation;
	}

	public void setEnd_vacation(Timestamp end_vacation) {
		this.end_vacation = end_vacation;
	}

	public String getReason_vacation() {
		return reason_vacation;
	}

	public void setReason_vacation(String reason_vacation) {
		this.reason_vacation = reason_vacation;
	}

	public String getVal_vacation() {
		return val_vacation;
	}

	public void setVal_vacation(String val_vacation) {
		this.val_vacation = val_vacation;
	}

	public String getCheck_vacation() {
		return check_vacation;
	}

	public void setCheck_vacation(String check_vacation) {
		this.check_vacation = check_vacation;
	}

	public int getNum_timeover() {
		return num_timeover;
	}

	public void setNum_timeover(int num_timeover) {
		this.num_timeover = num_timeover;
	}

	public String getUser_nick_timeover() {
		return user_nick_timeover;
	}

	public void setUser_nick_timeover(String user_nick_timeover) {
		this.user_nick_timeover = user_nick_timeover;
	}

	public String getUser_email_timeover() {
		return user_email_timeover;
	}

	public void setUser_email_timeover(String user_email_timeover) {
		this.user_email_timeover = user_email_timeover;
	}

	public String getReason_timeover() {
		return reason_timeover;
	}

	public void setReason_timeover(String reason_timeover) {
		this.reason_timeover = reason_timeover;
	}

	public String getCheck_timeover() {
		return check_timeover;
	}

	public void setCheck_timeover(String check_timeover) {
		this.check_timeover = check_timeover;
	}

	public Timestamp getStart_timeover() {
		return start_timeover;
	}

	public void setStart_timeover(Timestamp start_timeover) {
		this.start_timeover = start_timeover;
	}

	public Timestamp getEnd_timeover() {
		return end_timeover;
	}

	public void setEnd_timeover(Timestamp end_timeover) {
		this.end_timeover = end_timeover;
	}

	public Timestamp getDate_timeover() {
		return date_timeover;
	}

	public void setDate_timeover(Timestamp date_timeover) {
		this.date_timeover = date_timeover;
	}

}
