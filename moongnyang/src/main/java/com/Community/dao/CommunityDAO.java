package com.Community.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.Community.dto.DBManager;

import com.Community.dto.CommunityVO;

public class CommunityDAO {

	private CommunityDAO() {
	}

	private static CommunityDAO instance = new CommunityDAO();

	public static CommunityDAO getInstance() {
		return instance;
	}

	// c Read u d
	public List<CommunityVO> selectAllBoards() {
		// 최근 등록한 상품 먼저 출력하기
		String sql = "select * from community_board order by board_idx desc";
		List<CommunityVO> list = new ArrayList<CommunityVO>();

		Connection conn = null;
		Statement stmt=null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) { // 이동은 행(로우) 단위로
				CommunityVO cVO = new CommunityVO();
				cVO.setBoard_idx(rs.getInt("BOARD_IDX"));
				cVO.setUser_email(rs.getString("USER_EMAIL"));
				cVO.setTitle(rs.getString("TITLE"));
				cVO.setContents(rs.getString("CONTENTS"));
				cVO.setAnimal_tag(rs.getInt("ANIMAL_TAG"));
				cVO.setBoard_tag(rs.getInt("BOARD_TAG"));
				cVO.setRead_count(rs.getInt("READ_COUNT"));
				cVO.setLike_count(rs.getInt("LIKE_COUNT"));
				cVO.setWrite_date(rs.getString("WRITE_DATE"));
				// 사진 경로
				cVO.setPic_url_1(rs.getString("PIC_URL_1"));
				cVO.setPic_url_2(rs.getString("PIC_URL_2"));
				cVO.setPic_url_3(rs.getString("PIC_URL_3"));
				cVO.setPic_url_4(rs.getString("PIC_URL_4"));
				cVO.setPic_url_5(rs.getString("PIC_URL_5"));

				list.add(cVO);
			} // while문 끝
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, stmt, rs);
		}
		return list;
	}// selectAllProducts() {
}// CommunityDAO{
