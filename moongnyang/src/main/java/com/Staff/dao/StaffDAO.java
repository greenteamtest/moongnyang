package com.Staff.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.Staff.dto.StaffVO;

public class StaffDAO {
	public StaffDAO() {

	}
	
	public int result_timeover(SqlSession session, StaffVO vo) {
		return session.update("result_timeover", vo);
	}

	public int change_staff_val(SqlSession session, StaffVO vo) {
		return session.update("change_staff_val", vo);
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

	public List<StaffVO> search_vacation(SqlSession session, String s) {
		return session.selectList("search_vacation", s);
	}

	public List<StaffVO> search_timeover(SqlSession session, String s) {
		return session.selectList("search_timeover", s);
	}

	public List<StaffVO> search_staff(SqlSession session, String s) {
		return session.selectList("search_staff", s);
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

	public StaffVO select_vacation(SqlSession session, int num) {
		return session.selectOne("select_vacation", num);
	}
	public StaffVO select_timeover(SqlSession session, int num) {
		return session.selectOne("select_timeover", num);
	}

}