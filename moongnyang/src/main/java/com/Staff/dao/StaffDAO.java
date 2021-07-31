package com.Staff.dao;

import org.apache.ibatis.session.SqlSession;

import com.Staff.dto.StaffVO;

public class StaffDAO {
	public StaffDAO() {

	}

//	public List<StaffVO> All_member_List(SqlSession session, HealthReviewVo vo) { // select place list
//		return session.selectList("All_member_List", vo);
//	}
	public int end_timeover(SqlSession session, StaffVO vo) { // select place list
		return session.insert("end_timeover", vo);
	}

}