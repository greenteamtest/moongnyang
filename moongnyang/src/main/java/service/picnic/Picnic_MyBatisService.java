package service.picnic;

import java.util.List;

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

	public List<PicnicVO> picnic_Select2(String str) {

		SqlSession session = MybatisSessionFactory.getSqlSession(); // 접속 완료
		List<PicnicVO> list = null;
		try {
			list = dao.picnic_Select2(session, str); // dao에 SqlSession 전송
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close(); // connection.close()와 비슷, 모든 함수마다 닫기
		}
		return list;
	}

	public void picnic_Delete(int num) {

		SqlSession session = MybatisSessionFactory.getSqlSession(); // 접속 완료

		try {
			dao.picnic_Delete(session, num); // dao에 SqlSession 전송
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close(); // connection.close()와 비슷, 모든 함수마다 닫기
		}
		return;
	}

	public void picnic_Write(PicnicVO vo) {

		SqlSession session = MybatisSessionFactory.getSqlSession(); // 접속 완료
		try {
			dao.picnic_Write(session, vo); // dao에 SqlSession 전송
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close(); // connection.close()와 비슷, 모든 함수마다 닫기
		}
		return;
	}

	public PicnicVO image_Select(String str) {

		SqlSession session = MybatisSessionFactory.getSqlSession(); // 접속 완료
		PicnicVO vo = null;
		try {
			vo = dao.image_Select(session, str); // dao에 SqlSession 전송
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close(); // connection.close()와 비슷, 모든 함수마다 닫기
		}
		return vo;
	}

	public void board_Update(PicnicVO vo) {

		SqlSession session = MybatisSessionFactory.getSqlSession(); // 접속 완료
		try {
			dao.board_Update(session, vo); // dao에 SqlSession 전송

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close(); // connection.close()와 비슷, 모든 함수마다 닫기
		}
		return;
	}

	public void board_Update_Image(PicnicVO vo) {

		SqlSession session = MybatisSessionFactory.getSqlSession(); // 접속 완료
		try {
			dao.board_Update_Image(session, vo); // dao에 SqlSession 전송

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close(); // connection.close()와 비슷, 모든 함수마다 닫기
		}
		return;
	}

	public int count_picnic_comment() {
		SqlSession session = MybatisSessionFactory.getSqlSession();
		int rs = 0;
		try {
			rs = dao.count_picnic_comment(session); // dao에 SqlSession 전송
			if (rs > 0) {
				session.commit();
			} else {
				session.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close(); // connection.close()와 비슷, 모든 함수마다 닫기
		}
		return rs;
	}
}
