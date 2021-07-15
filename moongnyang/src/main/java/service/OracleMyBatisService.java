package service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import dao.VisitDAO;
import dbconnect.MybatisSessionFactory;
import vo.VisitVo;

public class OracleMyBatisService {

	VisitDAO dao;

	public OracleMyBatisService() {
		dao = new VisitDAO();
	}

	// view board
	public List<VisitVo> selectList_board() {
		SqlSession session = MybatisSessionFactory.getSqlSession(); // 접속 완료
		List<VisitVo> list = null;

		try {
			list = dao.selectList_board(session); // dao에 SqlSession 전송
		} finally {
			session.close(); // connection.close()와 비슷, 모든 함수마다 닫기
		}
		return list;
	}

	// 비밀번호 매칭 > 게시글 번호 획득
	public int select_boardIDX(Map<String, Object> map) {
		SqlSession session = MybatisSessionFactory.getSqlSession(); // 접속 완료
		int rs = 0;

		try {
			Integer output = dao.select_boardIDX(session, map);
			System.out.println("output : " + output);
			rs = output == null ? 0 : output;
			System.out.println("rs : " + rs);
		} finally {
			session.close(); // connection.close()와 비슷, 모든 함수마다 닫기
		}
		return rs;
	}

	// 회원가입
	public int insert_info(Map<String, Object> map) {
		SqlSession session = MybatisSessionFactory.getSqlSession(); // 접속 완료
		int rs = 0;

		try {
			rs = dao.insert_info(session, map); // dao에 SqlSession 전송

			if (rs > 0) {
				session.commit();
				System.out.println("join success");
			} else {
				session.rollback();
				System.out.println("join fail");
			}
		} finally {
			session.close(); // connection.close()와 비슷, 모든 함수마다 닫기
		}
		return rs;
	}

	// 아이디 중복 체크
	public String select_checkID(String id) {
		SqlSession session = MybatisSessionFactory.getSqlSession(); // 접속 완료
		String rs = "";

		try {
			rs = dao.select_checkID(session, id);
			System.out.println("output : " + rs);
		} finally {
			session.close(); // connection.close()와 비슷, 모든 함수마다 닫기
		}
		return rs;
	}

	// 게시글 삭제
	public int delete_board(int board_idx) {
		SqlSession session = MybatisSessionFactory.getSqlSession(); // 접속 완료
		int rs_b, totRs = 0;

		try {
			rs_b = dao.delete_board(session, board_idx); // dao에 SqlSession 전송

			if (rs_b > 0) {
				session.commit();
				System.out.println("delete board success");
			} else {
				totRs = 1;
				session.rollback();
				System.out.println("delete board fail");
			}
		} finally {
			session.close(); // connection.close()와 비슷, 모든 함수마다 닫기
		}
		return totRs;
	}

	// 게시글 수정
	public int revise_board(Map<String, Object> map) {
		SqlSession session = MybatisSessionFactory.getSqlSession(); // 접속 완료
		int rs = 0;

		try {
			rs = dao.revise_board(session, map); // dao에 SqlSession 전송

			if (rs > 0) {
				session.commit();
				System.out.println("revise board success");
			} else {
				session.rollback();
				System.out.println("revise board fail");
			}
		} finally {
			session.close(); // connection.close()와 비슷, 모든 함수마다 닫기
		}
		return rs;
	}

	// 게시글 등록
	public int insert_board(Map<String, Object> map) {
		SqlSession session = MybatisSessionFactory.getSqlSession(); // 접속 완료
		int rs = 0;

		try {
			rs = dao.insert_board(session, map); // dao에 SqlSession 전송

			if (rs > 0) {
				session.commit();
				System.out.println("insert board success");
			} else {
				session.rollback();
				System.out.println("insert board fail");
			}
		} finally {
			session.close(); // connection.close()와 비슷, 모든 함수마다 닫기
		}
		return rs;
	}

	// check for id
	public String selectUser_PW(Map<String, Object> map) {
		SqlSession session = MybatisSessionFactory.getSqlSession(); // 접속 완료
		String userID = null;

		try {
			userID = dao.selectUser_PW(session, map); // dao에 SqlSession 전송
			System.out.println("userID : " + userID);
		} finally {
			session.close(); // connection.close()와 비슷, 모든 함수마다 닫기
		}
		return userID;
	}

	// get user info
	public List<VisitVo> selectUser_Info(Map<String, Object> map) {
		SqlSession session = MybatisSessionFactory.getSqlSession(); // 접속 완료
		List<VisitVo> userID = null;

		try {
			userID = dao.selectUser_Info(session, map); // dao에 SqlSession 전송
		} finally {
			session.close(); // connection.close()와 비슷, 모든 함수마다 닫기
		}
		return userID;
	}

}
