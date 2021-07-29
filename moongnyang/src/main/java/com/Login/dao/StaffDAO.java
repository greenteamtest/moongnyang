package com.Login.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.Login.dto.StaffVO;
import com.health.dto.HealthPlaceVo;
import com.health.dto.HealthReviewVo;

public class StaffDAO {
	public StaffDAO() {

	}

//	public List<StaffVO> All_member_List(SqlSession session, HealthReviewVo vo) { // select place list
//		return session.selectList("All_member_List", vo);
//	}
	public List<StaffVO> All_member_List(SqlSession session) { // select place list
		return session.selectList("All_member_List");
	}

	public List<HealthPlaceVo> selectPlace_List(SqlSession session, Object value) { // select place list
		return session.selectList("selectPlace_List", value);
	}

	public List<HealthReviewVo> selectUser_Review(SqlSession session, int place_idx) { // select place list
		return session.selectList("selectUser_Review", place_idx);
	}

	public List<HealthReviewVo> checkOverlapReview(SqlSession session, HealthReviewVo vo) { // 리뷰 중복 확인
		return session.selectList("checkOverlapReview", vo);
	}

	public int insert_review(SqlSession session, HealthReviewVo vo) { // 리뷰 등록
		return session.insert("insert_review", vo);
	}

	public int reviseReview(SqlSession session, HealthReviewVo vo) { // 리뷰 수정
		return session.update("reviseReview", vo);
	}

	public int deleteReview(SqlSession session, HealthReviewVo vo) { // 리뷰 수정
		return session.delete("deleteReview", vo);
	}

	public int updatePlaceDips(SqlSession session, Map<String, Object> map) { // 찜 update
		return session.update("updatePlaceDips", map);
	}

	public int getPlaceDips(SqlSession session, Map<String, Object> map) { // 찜 count
		return session.selectOne("getPlaceDips", map);
	}

	public int controlUserDips(SqlSession session, Map<String, Object> map) { // 찜 count
		return session.insert("controlUserDips", map);
	}

}