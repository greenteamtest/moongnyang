package service.Staff;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.Staff.dao.StaffDAO;
import com.Staff.dto.StaffVO;
import com.health.dto.HealthReviewVo;

import dbconnect.MybatisSessionFactory;

public class Staff_MyBatisService {

	StaffDAO dao;

	public Staff_MyBatisService() {
		dao = new StaffDAO();
	}

	// 초과근무 시작!하면서 DB에 저장시키는 것
	public List<StaffVO> start_timeover(StaffVO vo) {
		SqlSession session = MybatisSessionFactory.getSqlSession(); // 접속 완료
		List<StaffVO> list = null;

		try {
			list = dao.start_timeover(session, vo);
		} finally {
			session.close(); // connection.close()와 비슷, 모든 함수마다 닫기
		}
		return list;
	}

	// select user_reivew
	public List<HealthReviewVo> selectUser_Review(String key) {
		SqlSession session = MybatisSessionFactory.getSqlSession(); // 접속 완료
		List<HealthReviewVo> list = null;

		try {
			int numKey = Integer.parseInt(key);
			list = dao.selectUser_Review(session, numKey);
		} finally {
			session.close(); // connection.close()와 비슷, 모든 함수마다 닫기
		}
		return list;
	}

	// checkForOverlapReview
	public List<HealthReviewVo> checkOverlapReview(HealthReviewVo vo) {
		SqlSession session = MybatisSessionFactory.getSqlSession(); // 접속 완료
		List<HealthReviewVo> result = null;

		try {
			result = dao.checkOverlapReview(session, vo);
		} finally {
			session.close(); // connection.close()와 비슷, 모든 함수마다 닫기
		}
		return result;
	}

	// insert review
	public int insert_review(HealthReviewVo vo) {
		SqlSession session = MybatisSessionFactory.getSqlSession(); // 접속 완료
		int rs = 0;

		try {
			rs = dao.insert_review(session, vo); // dao에 SqlSession 전송

			if (rs > 0) {
				session.commit();
				System.out.println("insert review success");
			} else {
				session.rollback();
				System.out.println("insert review fail");
			}
		} finally {
			session.close(); // connection.close()와 비슷, 모든 함수마다 닫기
		}
		return rs;
	}

//	// select place_info
//	public HealthPlaceVo selectPlace_info(int place_key) {
//		SqlSession session = MybatisSessionFactory.getSqlSession(); // 접속 완료
//		HealthPlaceVo vo = null;
//
//		try {
//			vo = dao.selectPlace_info(session, place_key); // dao에 SqlSession 전송
//		} finally {
//			session.close(); // connection.close()와 비슷, 모든 함수마다 닫기
//		}
//		return vo;
//	}

//	// 비밀번호 매칭 > 게시글 번호 획득
//	public int select_boardIDX(Map<String, Object> map) {
//		SqlSession session = MybatisSessionFactory.getSqlSession(); // 접속 완료
//		int rs = 0;
//
//		try {
//			Integer output = dao.select_boardIDX(session, map);
//			System.out.println("output : " + output);
//			rs = output == null ? 0 : output;
//			System.out.println("rs : " + rs);
//		} finally {
//			session.close(); // connection.close()와 비슷, 모든 함수마다 닫기
//		}
//		return rs;
//	}
//

}
