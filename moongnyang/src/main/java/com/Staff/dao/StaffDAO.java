package com.Staff.dao;

import org.apache.ibatis.session.SqlSession;

import com.Staff.dto.StaffVO;

public class StaffDAO {
	public StaffDAO() {

	}

	public int end_timeover(SqlSession session, StaffVO vo) {
		return session.update("end_timeover", vo);
	}

	public int after_request_timeover(SqlSession session, StaffVO vo) {
		return session.insert("after_request_timeover", vo);
	}

	public int start_timeover(SqlSession session, StaffVO vo) {
		return session.insert("start_timeover", vo);
	}

	public int request_vacation(SqlSession session, StaffVO vo) {
		System.out.println("qqw3");
		return session.insert("request_vacation", vo);
	}

}