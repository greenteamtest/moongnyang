package com.media.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.Login.dto.DBManager;
import com.media.dto.mediaVO;

public class mediaDAO {
	public mediaDAO() {

	}

	public List<mediaVO> load_mypost_media(SqlSession session, String email) {
		return session.selectList("load_mypost_media", email);
	}

	public List<mediaVO> load_comment(SqlSession session, int num) {
		return session.selectList("load_comment", num);
	}

	public mediaVO most_recent_media(SqlSession session) {
		return session.selectOne("most_recent_media");
	}

	public mediaVO select_media(SqlSession session, int num) {
		return session.selectOne("select_media", num);
	}

	public List<mediaVO> search_media(SqlSession session, String s) {
		return session.selectList("search_media", s);
	}

	public List<mediaVO> load_medialist(SqlSession session) {
		return session.selectList("load_medialist");
	}

	public int count_media_comment(SqlSession session, String email) {
		return session.selectOne("count_media_comment", email);
	}

	public int check_comment(SqlSession session, mediaVO vo) {
		return session.update("check_comment", vo);
	}

	public int add_comment(SqlSession session, mediaVO vo) {
		return session.insert("add_comment", vo);
	}

	public int update_like(SqlSession session, mediaVO vo) {
		return session.update("update_like", vo);
	}

	public int click_like(SqlSession session, mediaVO vo) {
		return session.insert("click_like", vo);
	}

	public int upload_media(SqlSession session, mediaVO vo) {
		return session.insert("upload_media", vo);
	}

	private static mediaDAO instance = new mediaDAO();

	public static mediaDAO getInstance() {
		return instance;
	}

	public void insert_media(mediaVO vo) {
		String sql = "insert into media_upload values(media_upload_seq.nextval, ?, ?, ?, ?,?,?,0,0)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getTitle_media());
			pstmt.setString(2, vo.getHashtag_media());
			pstmt.setString(3, vo.getUser_email_media());
			pstmt.setString(4, vo.getUser_nick());
			pstmt.setString(5, vo.getMediaurl());
			pstmt.setString(6, vo.getContent_media());
			pstmt.executeUpdate(); // 실행
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}

}