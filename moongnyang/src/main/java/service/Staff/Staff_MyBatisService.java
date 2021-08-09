package service.Staff;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.Staff.dao.StaffDAO;
import com.Staff.dto.StaffVO;

import dbconnect.MybatisSessionFactory;

public class Staff_MyBatisService {

	StaffDAO dao;

	public Staff_MyBatisService() {
		dao = new StaffDAO();
	}

	public int result_timeover(StaffVO vo) {
		SqlSession session = MybatisSessionFactory.getSqlSession(); // 접속 완료
		int rs = 0;
		try {
			rs = dao.result_timeover(session, vo); // dao에 SqlSession 전송
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

	public int insert_staff(StaffVO vo) {
		SqlSession session = MybatisSessionFactory.getSqlSession(); // 접속 완료
		int rs = 0;
		try {
			rs = dao.insert_staff(session, vo); // dao에 SqlSession 전송
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

	public int change_staff_val(StaffVO vo) {
		SqlSession session = MybatisSessionFactory.getSqlSession(); // 접속 완료
		System.out.println("qqw1");
		int rs = 0;
		try {
			rs = dao.change_staff_val(session, vo); // dao에 SqlSession 전송
			if (rs > 0) {
				session.commit();
				System.out.println("qqw2");
			} else {
				System.out.println("qqw3");
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

	public List<StaffVO> load_staffmember() {
		SqlSession session = MybatisSessionFactory.getSqlSession(); // 접속 완료
		List<StaffVO> list = null;
		try {
			list = dao.load_staffmember(session); // dao에 SqlSession 전송
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close(); // connection.close()와 비슷, 모든 함수마다 닫기
		}
		return list;
	}

	public List<StaffVO> load_total_timeover() {
		SqlSession session = MybatisSessionFactory.getSqlSession(); // 접속 완료
		List<StaffVO> list = null;
		try {
			list = dao.load_total_timeover(session); // dao에 SqlSession 전송
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close(); // connection.close()와 비슷, 모든 함수마다 닫기
		}
		return list;
	}

	public List<StaffVO> load_total_vacation() {
		SqlSession session = MybatisSessionFactory.getSqlSession(); // 접속 완료
		List<StaffVO> list = null;
		try {
			list = dao.load_total_vacation(session); // dao에 SqlSession 전송
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close(); // connection.close()와 비슷, 모든 함수마다 닫기
		}
		return list;
	}

	public List<StaffVO> search_staff(String s) {
		SqlSession session = MybatisSessionFactory.getSqlSession(); // 접속 완료
		List<StaffVO> list = null;
		try {
			list = dao.search_staff(session, s); // dao에 SqlSession 전송
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close(); // connection.close()와 비슷, 모든 함수마다 닫기
		}
		return list;
	}

	public List<StaffVO> search_timeover(String s) {
		SqlSession session = MybatisSessionFactory.getSqlSession(); // 접속 완료
		List<StaffVO> list = null;
		try {
			list = dao.search_timeover(session, s); // dao에 SqlSession 전송
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close(); // connection.close()와 비슷, 모든 함수마다 닫기
		}
		return list;
	}

	public List<StaffVO> search_vacation(String s) {
		SqlSession session = MybatisSessionFactory.getSqlSession(); // 접속 완료
		List<StaffVO> list = null;
		try {
			list = dao.search_vacation(session, s); // dao에 SqlSession 전송
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close(); // connection.close()와 비슷, 모든 함수마다 닫기
		}
		return list;
	}

	public StaffVO select_timeover(int num) {
		SqlSession session = MybatisSessionFactory.getSqlSession(); // 접속 완료
		StaffVO list = null;
		try {
			list = dao.select_timeover(session, num); // dao에 SqlSession 전송
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close(); // connection.close()와 비슷, 모든 함수마다 닫기
		}
		return list;
	}

}
