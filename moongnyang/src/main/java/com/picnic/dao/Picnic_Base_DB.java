package com.picnic.dao;

import org.apache.ibatis.session.SqlSession;
import com.picnic.dto.BoardVO;

public class Picnic_Base_DB {

	public int insert_Abandonment(SqlSession session, BoardVO bVo) { // select place list
		return session.selectOne("insert_Abandonment", bVo);
	}
	
	/*
	 * public void insertBoard(List<BoardVO> list) { String sql =
	 * "insert into Abandonment_sido(orgCd, orgdownNm)" + "values(? ,?)";
	 * 
	 * Connection conn = null; PreparedStatement pstmt = null; conn =
	 * DBManager.getConnection(); try { for(int i = 0; i < list.size(); i++) { pstmt
	 * = conn.prepareStatement(sql); BoardVO str = list.get(i); pstmt.setString(1,
	 * str.getOrgCd()); pstmt.setString(2, str.getOrgdownNm());
	 * 
	 * pstmt.executeUpdate(); } } catch (SQLException e) { e.printStackTrace(); }
	 * finally { DBManager.close(conn, pstmt); } }
	 */
	
}
