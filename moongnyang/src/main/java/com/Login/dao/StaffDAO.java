package com.Login.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.Login.dto.DBManager;
import com.Login.dto.StaffVO;

public class StaffDAO {
	public StaffDAO() {

	}

	private static StaffDAO instance = new StaffDAO();

	public static StaffDAO getInstance() {
		return instance;
	}
//
//	public List<StaffVO> selectAllBoards() {
//		String sql = "select * from businessboard order by businessnum desc";
//		List<StaffVO> list = new ArrayList<StaffVO>();
//		Connection conn = null;
//		Statement stmt = null;
//		ResultSet rs = null;
//		System.out.println("DB접속은된듯?");
//		try {
//			conn = DBManager.getConnection();
//			stmt = conn.createStatement();
//			rs = stmt.executeQuery(sql);
//			while (rs.next()) {
//				StaffVO Vo = new StaffVO();
//				Vo.set(rs.getInt("businessnum"));
//				Vo.setEmail(rs.getString("user_email"));
//				Vo.setContent(rs.getString("businesscontent"));
//				Vo.setReadval(rs.getInt("businessread"));
//				Vo.setWritedate(rs.getTimestamp("writedate"));
//				list.add(Vo);
//			}
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} finally {
//			DBManager.close(conn, stmt, rs);
//		}
//		return list;
//	}

	public void start_timeover(StaffVO Vo) {
		String sql = "insert into request_timeover(NUM_TIMEOVER, USER_NICK_TIMEOVER, USER_EMAIL_TIMEOVER,START_TIMEOVER,END_TIMEOVER,DATE_TIMEOVER,REASON_TIMEOVER,CHECK_TIMEOVER) values(request_timeover_seq.NEXTVAL,?, ?, to_char(sysdate, 'hh24:mi'),to_char(sysdate, 'hh24:mi'),to_char(sysdate, 'yyyy.MM.dd'),?,'대기')";
		String sql2 = "insert into timeover value(1,?,to_char(sysdate, 'hh24:mi'),to_char(sysdate, 'hh24:mi')";

		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, Vo.getUser_nick_timeover());
			pstmt.setString(2, Vo.getUser_email_timeover());
			pstmt.setString(3, Vo.getReason_timeover());
			pstmt.executeUpdate();
			pstmt.setString(1, V)
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}

}