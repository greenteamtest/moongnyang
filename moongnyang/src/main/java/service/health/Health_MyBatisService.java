package service.health;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.health.dao.HealthDAO;
import com.health.dto.HealthPlaceVo;
import com.health.dto.HealthReviewVo;

import dbconnect.MybatisSessionFactory;

public class Health_MyBatisService {

	HealthDAO dao;

	public Health_MyBatisService() {
		dao = new HealthDAO();
	}

	// select place_list
	public List<HealthPlaceVo> selectPlace_List(String key) {
		SqlSession session = MybatisSessionFactory.getSqlSession(); // 접속 완료
		List<HealthPlaceVo> list = null;

		try {
			Integer numKey = Integer.parseInt(key);
			list = dao.selectPlace_List(session, numKey);
		} catch (NumberFormatException e) {
			list = dao.selectPlace_List(session, key);
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

	// insert review
	public int reviseReview(HealthReviewVo vo) {
		SqlSession session = MybatisSessionFactory.getSqlSession(); // 접속 완료
		int rs = 0;

		try {
			rs = dao.reviseReview(session, vo); // dao에 SqlSession 전송

			if (rs > 0) {
				session.commit();
				System.out.println("revise review success");
			} else {
				session.rollback();
				System.out.println("revise review fail");
			}
		} finally {
			session.close(); // connection.close()와 비슷, 모든 함수마다 닫기
		}
		return rs;
	}

	// delete review
	public int deleteReview(HealthReviewVo vo) {
		SqlSession session = MybatisSessionFactory.getSqlSession(); // 접속 완료
		int rs = 0;

		try {
			rs = dao.deleteReview(session, vo); // dao에 SqlSession 전송

			if (rs > 0) {
				session.commit();
				System.out.println("delete review success");
			} else {
				session.rollback();
				System.out.println("delete review fail");
			}
		} finally {
			session.close(); // connection.close()와 비슷, 모든 함수마다 닫기
		}
		return rs;
	}

}
