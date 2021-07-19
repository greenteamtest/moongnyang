package service.picnic;
import org.apache.ibatis.session.SqlSession;

import com.picnic.dao.Picnic_Base_DB;
import com.picnic.dto.BoardVO;

import dbconnect.MybatisSessionFactory;

public class picnic_MyBatisService {

	Picnic_Base_DB dao;

	public picnic_MyBatisService() {
		dao = new Picnic_Base_DB();
	}

	// 회원가입
	public int insert_Abandonment(BoardVO bVo) {
		SqlSession session = MybatisSessionFactory.getSqlSession(); // 접속 완료
		int rs = 0;

		try {
			rs = dao.insert_Abandonment(session, bVo); // dao에 SqlSession 전송

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
	
	
	
	
	
	
	
	
	
	
	
	// select place_list
	/*
	 * public List<HealthPlaceVo> selectPlace_List(String key) { SqlSession session
	 * = MybatisSessionFactory.getSqlSession(); // 접속 완료 List<HealthPlaceVo> list =
	 * null;
	 * 
	 * try { list = dao.selectPlace_List(session, key); // dao에 SqlSession 전송 }
	 * finally { session.close(); // connection.close()와 비슷, 모든 함수마다 닫기 } return
	 * list; }
	 */

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
