<<<<<<< HEAD
package com.Team.dao;
=======
package com.picnic.dao;
>>>>>>> refs/heads/Ho

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.Team.dto.BoardVO;

public class Picnic_Base_DB {

	private Picnic_Base_DB() {

	}
	private static Picnic_Base_DB instance = new Picnic_Base_DB();

	public static Picnic_Base_DB getInstance() {
		return instance;
	}


	public void insertBoard(List<BoardVO> list) {
		String sql = "insert into Abandonment_sido(orgCd, orgdownNm)"
				+ "values(? ,?)";

		Connection conn = null;
		PreparedStatement pstmt = null;
		conn = DBManager.getConnection();
		try {
			for(int i = 0; i < list.size(); i++) {
				pstmt = conn.prepareStatement(sql);
				BoardVO str = list.get(i);
				pstmt.setString(1, str.getOrgCd());
				pstmt.setString(2, str.getOrgdownNm());
			
				pstmt.executeUpdate();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}
	
}
