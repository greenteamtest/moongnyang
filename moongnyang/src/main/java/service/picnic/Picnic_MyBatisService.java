package service.picnic;

import org.apache.ibatis.session.SqlSession;

import com.picnic.dao.Picnic_DAO;
import com.picnic.dto.PicnicVO;

import dbconnect.MybatisSessionFactory;

public class Picnic_MyBatisService {

	Picnic_DAO dao;

	public Picnic_MyBatisService() {
		dao = new Picnic_DAO();
	}

	public int picnic_Update_Insert(PicnicVO bVo) {
		SqlSession session = MybatisSessionFactory.getSqlSession(); // 접속 완료
		int rs = 0;

		try {
			rs = dao.picnic_Update_Insert(session, bVo); // dao에 SqlSession 전송

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

	public PicnicVO picnic_Select(String str) {
		SqlSession session = MybatisSessionFactory.getSqlSession(); // 접속 완료
		PicnicVO rs = null;
		try {
			rs = dao.picnic_Select(session, str); // dao에 SqlSession 전송

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close(); // connection.close()와 비슷, 모든 함수마다 닫기
		}
		return rs;
	}
}
