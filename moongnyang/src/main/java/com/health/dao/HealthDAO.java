package com.health.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.health.dto.HealthPlaceVo;
import com.health.dto.HealthReviewVo;

public class HealthDAO {

	public List<HealthPlaceVo> selectPlace_List(SqlSession session, Object value) { // select place list
		return session.selectList("selectPlace_List", value);
	}

	public List<HealthReviewVo> selectUser_Review(SqlSession session, int place_idx) { // select place list
		return session.selectList("selectUser_Review", place_idx);
	}

	public List<HealthReviewVo> checkOverlapReview(SqlSession session, HealthReviewVo vo) { //
		return session.selectList("checkOverlapReview", vo);
	}

	public int insert_review(SqlSession session, HealthReviewVo vo) {
		return session.insert("insert_review", vo);
	}
//	public Integer select_boardIDX(SqlSession session, Map<String, Object> map) {
//		return session.selectOne("select_boardIDX", map);
//	}
//
//	public int delete_board(SqlSession session, int board_idx) {
//		return session.delete("delete_board", board_idx);
//	}
//

}