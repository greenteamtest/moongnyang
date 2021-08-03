package com.Staff.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.Staff.dto.StaffVO;

public class StaffDAO {
	public StaffDAO() {

	}

	public int insert_staff(SqlSession session, StaffVO vo) {
		return session.update("insert_staff", vo);
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
		return session.insert("request_vacation", vo);
	}

	public List<StaffVO> load_timeover(SqlSession session, String email) {
		return session.selectList("load_timeover", email);
	}

	public List<StaffVO> load_vacation(SqlSession session, String email) {
		return session.selectList("load_vacation", email);
	}

	public List<StaffVO> load_staffmember(SqlSession session) {
		return session.selectList("load_staffmember");
	}

	public List<StaffVO> load_total_vacation(SqlSession session) {
		return session.selectList("load_total_vacation");
	}

	public List<StaffVO> load_total_timeover(SqlSession session) {
		return session.selectList("load_total_timeover");
	}

}