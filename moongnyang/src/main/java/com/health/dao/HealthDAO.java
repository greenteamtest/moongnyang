package com.health.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.health.dto.HealthPlaceVo;
import com.health.dto.HealthReviewVo;
import com.health.dto.HealthUserDipsVo;

public class HealthDAO {

	public List<HealthPlaceVo> selectPlace_List(SqlSession session, Object value) { // select place list
		return session.selectList("slcPlace_List", value);
	}

	public List<HealthUserDipsVo> selectUser_dips(SqlSession session, String email) { // select user dips
		return session.selectList("slcUser_dips", email);
	}

	public List<HealthReviewVo> selectUser_Review(SqlSession session, int place_idx) { // select place list
		return session.selectList("slcUser_Review", place_idx);
	}

	public List<HealthReviewVo> checkOverlapReview(SqlSession session, HealthReviewVo vo) { // 리뷰 중복 확인
		return session.selectList("chkOverlapReview", vo);
	}

	public int insert_review(SqlSession session, HealthReviewVo vo) { // 리뷰 등록
		return session.insert("istReview", vo);
	}

	public double selectPlaceAvgRating(SqlSession session, int idx) { // 찜 count
		return session.selectOne("slcPlaceAvgRating", idx);
	}

	public int reviseReview(SqlSession session, HealthReviewVo vo) { // 리뷰 수정
		return session.update("rvsReview", vo);
	}

	public int deleteReview(SqlSession session, HealthReviewVo vo) { // 리뷰 수정
		return session.delete("dltReview", vo);
	}

	public int updatePlaceDips(SqlSession session, Map<String, Object> map) { // 찜 update
		return session.update("udPlaceDips", map);
	}

	public int getPlaceDips(SqlSession session, Map<String, Object> map) { // 찜 count
		return session.selectOne("getPlaceDips", map);
	}

	public int controlUserDips(SqlSession session, Map<String, Object> map) { // 찜 count
		return session.insert("controlUserDips", map);
	}

	public List<HealthPlaceVo> selectPlaceListForArrayType(SqlSession session, String value) { // 찜 count
		return session.selectList("slcPlaceListForArrayType", value);
	}

	public List<HealthPlaceVo> selectIdxForSearchingKeyword(SqlSession session, Map<String, String> map) { //
		return session.selectList("slcIdxForSearchingKeyword", map);
	}

	public int selectCntTotReview(SqlSession session) { //
		return session.selectOne("slcCntTotReview");
	}

	public int insert_place_list(SqlSession session, HealthPlaceVo vo) { // insert place_list #사업장
		return session.insert("istPlaceList", vo);
	}

	public int insert_place_info(SqlSession session, HealthPlaceVo vo) { // insert place_list #사업장
		return session.insert("istPlaceInfo", vo);
	}

	public List<HealthPlaceVo> selectBuisnessRegStatus(SqlSession session) { // insert place_list #사업장
		return session.selectList("slcBuisnessRegStatus");
	}

	public List<HealthPlaceVo> selectMyRegStatus(SqlSession session, String email) { // insert place_list #사업장
		return session.selectList("slcMyRegStatus", email);
	}

	public int apprRegApplication(SqlSession session, Map<String, Object> map) { // 사업장 신청 승인거절
		return session.update("udApproveSuc", map);
	}

	public int cancleBusiReg_INFO(SqlSession session, HealthPlaceVo list) { // 사업장 신청 승인 취소
		return session.delete("cancleBusiRegInfo", list);
	}

	public int cancleBusiReg_LIST(SqlSession session, HealthPlaceVo list) { // 사업장 신청 승인 취소
		return session.delete("cancleBusiRegList", list);
	}

	public int cancleBusiReg(SqlSession session, HealthPlaceVo list) { // 사업장 신청 승인 취소
		return session.delete("cancleBusiReg", list);
	}

}