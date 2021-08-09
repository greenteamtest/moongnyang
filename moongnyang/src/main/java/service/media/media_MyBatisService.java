package service.media;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.media.dao.mediaDAO;
import com.media.dto.mediaVO;

import dbconnect.MybatisSessionFactory;

public class media_MyBatisService {

	mediaDAO dao;

	public media_MyBatisService() {
		dao = new mediaDAO();
	}

//	public List<mediaVO> load_comment() {
//		SqlSession session = MybatisSessionFactory.getSqlSession(); // 접속 완료
//		List<mediaVO> list = null;
//		try {
//			list = dao.load_comment(session); // dao에 SqlSession 전송
//		} catch (Exception e) {
//			e.printStackTrace();
//		} finally {
//			session.close(); // connection.close()와 비슷, 모든 함수마다 닫기
//		}
//		return list;
//	}

	public mediaVO select_media(int num) {
		SqlSession session = MybatisSessionFactory.getSqlSession(); // 접속 완료
		mediaVO list = null;
		try {
			list = dao.select_media(session, num); // dao에 SqlSession 전송
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close(); // connection.close()와 비슷, 모든 함수마다 닫기
		}
		return list;
	}

	public List<mediaVO> search_media(String s) {
		SqlSession session = MybatisSessionFactory.getSqlSession(); // 접속 완료
		List<mediaVO> list = null;
		try {
			list = dao.search_media(session, s); // dao에 SqlSession 전송
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close(); // connection.close()와 비슷, 모든 함수마다 닫기
		}
		return list;
	}

	public List<mediaVO> load_medialist() {
		SqlSession session = MybatisSessionFactory.getSqlSession(); // 접속 완료
		List<mediaVO> list = null;
		try {
			list = dao.load_medialist(session); // dao에 SqlSession 전송
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close(); // connection.close()와 비슷, 모든 함수마다 닫기
		}
		return list;
	}

	public int upload_media(mediaVO vo) {
		SqlSession session = MybatisSessionFactory.getSqlSession(); // 접속 완료
		int rs = 0;
		try {
			rs = dao.upload_media(session, vo); // dao에 SqlSession 전송
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

//	public int add_comment(mediaVO vo) {
//		SqlSession session = MybatisSessionFactory.getSqlSession(); // 접속 완료
//		int rs = 0;
//		try {
//			rs = dao.add_comment(session, vo); // dao에 SqlSession 전송
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

	public int update_like(mediaVO vo) {
		SqlSession session = MybatisSessionFactory.getSqlSession(); // 접속 완료
		int rs = 0;
		try {
			rs = dao.update_like(session, vo); // dao에 SqlSession 전송
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

	public int click_like(mediaVO vo) {
		SqlSession session = MybatisSessionFactory.getSqlSession(); // 접속 완료
		int rs = 0;
		try {
			rs = dao.click_like(session, vo); // dao에 SqlSession 전송
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
}
