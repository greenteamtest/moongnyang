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

	public List<mediaVO> load_medialist(SqlSession session) {
		return session.selectList("load_medialist");
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
			pstmt.setString(4, vo.getUser_nick_media());
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