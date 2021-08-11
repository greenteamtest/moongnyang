package service.health;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.health.dao.HealthDAO;
import com.health.dto.HealthPlaceVo;
import com.health.dto.HealthReviewVo;
import com.health.dto.HealthUserDipsVo;

import dbconnect.MybatisSessionFactory;

public class Health_MyBatisService {

	HealthDAO dao;

	public Health_MyBatisService() {
		dao = new HealthDAO();
	}

	// select place_list
	public List<HealthPlaceVo> selectPlace_List(String key) {
		SqlSession session = MybatisSessionFactory.getSqlSession();
		List<HealthPlaceVo> list = null;

		try {
			Integer numKey = Integer.parseInt(key);
			list = dao.selectPlace_List(session, numKey);
		} catch (NumberFormatException e) {
			list = dao.selectPlace_List(session, key);
		} finally {
			session.close();
		}
		return list;
	}

	// select user dips
	public List<HealthUserDipsVo> selectUser_dips(String email) {
		SqlSession session = MybatisSessionFactory.getSqlSession();
		List<HealthUserDipsVo> list = null;

		try {
			list = dao.selectUser_dips(session, email);
		} finally {
			session.close();
		}
		return list;
	}

	// select user_reivew
	public List<HealthReviewVo> selectUser_Review(String key) {
		SqlSession session = MybatisSessionFactory.getSqlSession();
		List<HealthReviewVo> list = null;

		try {
			int numKey = Integer.parseInt(key);
			list = dao.selectUser_Review(session, numKey);
		} finally {
			session.close();
		}
		return list;
	}

	// checkForOverlapReview
	public List<HealthReviewVo> checkOverlapReview(HealthReviewVo vo) {
		SqlSession session = MybatisSessionFactory.getSqlSession();
		List<HealthReviewVo> result = null;

		try {
			result = dao.checkOverlapReview(session, vo);
		} finally {
			session.close();
		}
		return result;
	}

	// insert review
	public int insert_review(HealthReviewVo vo) {
		SqlSession session = MybatisSessionFactory.getSqlSession();
		int rs = 0;

		try {
			rs = dao.insert_review(session, vo);

			if (rs > 0) {
				session.commit();
				System.out.println("insert review success");
			} else {
				session.rollback();
				System.out.println("insert review fail");
			}
		} finally {
			session.close();
		}
		return rs;
	}

	// select rating avg per place
	public double selectPlaceAvgRating(int idx) {
		SqlSession session = MybatisSessionFactory.getSqlSession();
		double rs = 0;

		try {
			rs = dao.selectPlaceAvgRating(session, idx);
		} finally {
			session.close();
		}
		return rs;
	}

	// revise review
	public int reviseReview(HealthReviewVo vo) {
		SqlSession session = MybatisSessionFactory.getSqlSession();
		int rs = 0;

		try {
			rs = dao.reviseReview(session, vo);

			if (rs > 0) {
				session.commit();
				System.out.println("revise review success");
			} else {
				session.rollback();
				System.out.println("revise review fail");
			}
		} finally {
			session.close();
		}
		return rs;
	}

	// delete review
	public int deleteReview(HealthReviewVo vo) {
		SqlSession session = MybatisSessionFactory.getSqlSession();
		int rs = 0;

		try {
			rs = dao.deleteReview(session, vo);

			if (rs > 0) {
				session.commit();
				System.out.println("delete review success");
			} else {
				session.rollback();
				System.out.println("delete review fail");
			}
		} finally {
			session.close();
		}
		return rs;
	}

	// update placedips
	public int updatePlaceDips(Map<String, Object> map) {
		SqlSession session = MybatisSessionFactory.getSqlSession();
		int rs = 0;

		try {
			rs = dao.updatePlaceDips(session, map);
			if (rs > 0) {
				session.commit();
				System.out.println("update placedips success");
			} else {
				session.rollback();
				System.out.println("update placedips fail");
			}
		} finally {
			session.close();
		}
		return rs;
	}

	// get place dips
	public int getPlaceDips(Map<String, Object> map) {
		SqlSession session = MybatisSessionFactory.getSqlSession();
		int rs = 0;

		try {
			rs = dao.getPlaceDips(session, map);

			if (rs > 0) {
				session.commit();
				System.out.println("get placedips success");
			} else {
				session.rollback();
				System.out.println("get placedips fail");
			}
		} finally {
			session.close();
		}
		return rs;
	}

	// insert user dips
	public int controlUserDips(Map<String, Object> map) {
		SqlSession session = MybatisSessionFactory.getSqlSession();
		int rs = 0;

		try {
			rs = dao.controlUserDips(session, map);

			if (rs > 0) {
				session.commit();
				System.out.println("insert user dips success");
			} else {
				session.rollback();
				System.out.println("insert user dips fail");
			}
		} finally {
			session.close();
		}
		return rs;
	}

	// get place list for array type
	public List<HealthPlaceVo> selectPlaceListForArrayType(String type) {
		SqlSession session = MybatisSessionFactory.getSqlSession();
		List<HealthPlaceVo> list = null;

		try {
			list = dao.selectPlaceListForArrayType(session, type);
		} finally {
			session.close();
		}
		return list;
	}

	// select idx for searching keyword
	public List<HealthPlaceVo> selectIdxForSearchingKeyword(Map<String, String> map) {
		SqlSession session = MybatisSessionFactory.getSqlSession();
		List<HealthPlaceVo> list = null;

		try {
			list = dao.selectIdxForSearchingKeyword(session, map);
		} finally {
			session.close();
		}
		return list;
	}

	// select count total review
	public int selectCntTotReview() {
		SqlSession session = MybatisSessionFactory.getSqlSession();
		int cnt = 0;

		try {
			cnt = dao.selectCntTotReview(session);
		} finally {
			session.close();
		}
		return cnt;
	}

	// insert place_list - #사업장신청
	public int insert_place_list(HealthPlaceVo vo) {
		SqlSession session = MybatisSessionFactory.getSqlSession();
		int rs = 0;
		try {
			rs = dao.insert_place_list(session, vo);
			if (rs > 0) {
				session.commit();
				System.out.println("insert place_info success");
			} else {
				session.rollback();
				System.out.println("insert place_info fail");
			}
		} finally {
			session.close();
		}
		return rs;
	}

	// insert place_info #사업장 신청
	public int insert_place_info(HealthPlaceVo vo) {
		SqlSession session = MybatisSessionFactory.getSqlSession();
		int rs = 0;

		try {
			rs = dao.insert_place_info(session, vo);

			if (rs > 0) {
				session.commit();
				System.out.println("insert place_info success");
			} else {
				session.rollback();
				System.out.println("insert place_info fail");
			}
		} finally {
			session.close();
		}
		return rs;
	}

	// 사업자 신청 현황 조회 ( #관리자 )
	public List<HealthPlaceVo> selectBuisnessRegStatus() {
		SqlSession session = MybatisSessionFactory.getSqlSession();
		List<HealthPlaceVo> list = null;

		try {
			list = dao.selectBuisnessRegStatus(session);
		} finally {
			session.close();
		}
		return list;
	}

	// 사업자 신청 현황 조회 ( #관리자 )
	public List<HealthPlaceVo> selectMyRegStatus(String email) {
		SqlSession session = MybatisSessionFactory.getSqlSession();
		List<HealthPlaceVo> list = null;

		try {
			list = dao.selectMyRegStatus(session, email);
		} finally {
			session.close();
		}
		return list;
	}

	// 사업장 신청 승인 / 거절
	public int apprRegApplication(Map<String, Object> map) {
		SqlSession session = MybatisSessionFactory.getSqlSession();
		int rs = 0;

		try {
			rs = dao.apprRegApplication(session, map);

			if (rs > 0) {
				session.commit();
				System.out.println("update approve success");
			} else {
				session.rollback();
				System.out.println("update approve  fail");
			}
		} finally {
			session.close();
		}
		return rs;
	}
}
