package service.community;

import org.apache.ibatis.session.SqlSession;

import com.Community.dao.CommunityDAO;
import com.Community.dto.CommunityVO;

import dbconnect.MybatisSessionFactory;

public class community_MyBatisService {

	CommunityDAO dao;

	public community_MyBatisService() {
		dao = new CommunityDAO();
	}

	public int insert_board(CommunityVO vo) {
		SqlSession session = MybatisSessionFactory.getSqlSession(); // 접속 완료
		int rs = 0;
		try {
			rs = dao.insert_board(session, vo); // dao에 SqlSession 전송
			if (rs > 0) {
				session.commit();
			} else {
				session.rollback();
			}
		} finally {
			session.close(); // connection.close()와 비슷, 모든 함수마다 닫기
		}
		return rs;
	}
//
//	public int delete(int num) {
//		SqlSession session = MybatisSessionFactory.getSqlSession(); // 접속 완료
//		int rs = 0;
//		try {
//			rs = dao.delete(session, num); // dao에 SqlSession 전송
//			if (rs > 0) {
//				session.commit();
//			} else {
//				session.rollback();
//			}
//		} finally {
//			session.close(); // connection.close()와 비슷, 모든 함수마다 닫기
//		}
//		return rs;
//	}

}
