package service.Staff;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.Staff.dao.StaffDAO;
import com.Staff.dto.StaffVO;

import dbconnect.MybatisSessionFactory;

public class memver_MyBatisService {

	StaffDAO dao;

	public memver_MyBatisService() {
		dao = new StaffDAO();
	}

	// 초과근무 끝내면서 진행중을 대기로 변경
	public int end_timeover(StaffVO vo) {
		SqlSession session = MybatisSessionFactory.getSqlSession(); // 접속 완료
		int rs = 0;
		try {
			rs = dao.end_timeover(session, vo); // dao에 SqlSession 전송
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

	public int after_request_timeover(StaffVO vo) {
		SqlSession session = MybatisSessionFactory.getSqlSession(); // 접속 완료
		int rs = 0;
		try {
			rs = dao.after_request_timeover(session, vo); // dao에 SqlSession 전송
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

	public int start_timeover(StaffVO vo) {
		SqlSession session = MybatisSessionFactory.getSqlSession(); // 접속 완료
		int rs = 0;
		try {
			rs = dao.start_timeover(session, vo); // dao에 SqlSession 전송
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

	public int request_vacation(StaffVO vo) {
		SqlSession session = MybatisSessionFactory.getSqlSession(); // 접속 완료
		System.out.println("qqw1");
		int rs = 0;
		try {
			rs = dao.request_vacation(session, vo); // dao에 SqlSession 전송
			if (rs > 0) {
				session.commit();
				System.out.println("qqw2");
			} else {
				session.rollback();
			}
		} finally {
			session.close(); // connection.close()와 비슷, 모든 함수마다 닫기
		}
		return rs;
	}

	public List<StaffVO> load_timeover(String email) {
		SqlSession session = MybatisSessionFactory.getSqlSession(); // 접속 완료
		List<StaffVO> list = null;
		try {
			list = dao.load_timeover(session, email); // dao에 SqlSession 전송
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close(); // connection.close()와 비슷, 모든 함수마다 닫기
		}
		return list;
	}

	public List<StaffVO> load_vacation(String email) {
		SqlSession session = MybatisSessionFactory.getSqlSession(); // 접속 완료
		List<StaffVO> list = null;
		try {
			list = dao.load_vacation(session, email); // dao에 SqlSession 전송
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close(); // connection.close()와 비슷, 모든 함수마다 닫기
		}
		return list;
	}
}
