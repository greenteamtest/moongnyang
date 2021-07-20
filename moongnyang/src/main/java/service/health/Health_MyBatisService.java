package service.health;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.health.dao.HealthDAO;
import com.health.dto.HealthPlaceVo;

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
			list = dao.selectPlace_List(session, key); // dao에 SqlSession 전송
		} finally {
			session.close(); // connection.close()와 비슷, 모든 함수마다 닫기
		}
		return list;
	}

	// select place_info
	public HealthPlaceVo selectPlace_info(int place_key) {
		SqlSession session = MybatisSessionFactory.getSqlSession(); // 접속 완료
		HealthPlaceVo vo = null;

		try {
			vo = dao.selectPlace_info(session, place_key); // dao에 SqlSession 전송
		} finally {
			session.close(); // connection.close()와 비슷, 모든 함수마다 닫기
		}
		return vo;
	}

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
//	// 회원가입
//	public int insert_info(Map<String, Object> map) {
//		SqlSession session = MybatisSessionFactory.getSqlSession(); // 접속 완료
//		int rs = 0;
//
//		try {
//			rs = dao.insert_info(session, map); // dao에 SqlSession 전송
//
//			if (rs > 0) {
//				session.commit();
//				System.out.println("join success");
//			} else {
//				session.rollback();
//				System.out.println("join fail");
//			}
//		} finally {
//			session.close(); // connection.close()와 비슷, 모든 함수마다 닫기
//		}
//		return rs;
//	}

}
