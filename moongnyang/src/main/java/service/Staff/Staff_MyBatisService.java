package service.Staff;

import org.apache.ibatis.session.SqlSession;

import com.Staff.dao.StaffDAO;
import com.Staff.dto.StaffVO;

import dbconnect.MybatisSessionFactory;

public class Staff_MyBatisService {

	StaffDAO dao;

	public Staff_MyBatisService() {
		dao = new StaffDAO();
	}

	// 초과근무 끝내면서 진행중을 대기로 변경
	public int end_timeover(StaffVO vo) {
		SqlSession session = MybatisSessionFactory.getSqlSession(); // 접속 완료
		int rs = 0;
		System.out.println("로깅 : 다오1");
		try {
			rs = dao.end_timeover(session, vo); // dao에 SqlSession 전송
			System.out.println("로깅  1 : rs 과정 : " + rs);
			if (rs > 0) {
				session.commit();
				System.out.println("로깅 : 다오 2 세선. 커밋은 성공");
			} else {
				session.rollback();
				System.out.println("로깅 : 다오 2 세선. 실..패..");
			}
		} finally {
			session.close(); // connection.close()와 비슷, 모든 함수마다 닫기
		}
		return rs;
	}

}
