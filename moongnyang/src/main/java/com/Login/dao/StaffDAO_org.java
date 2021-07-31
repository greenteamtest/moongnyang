package com.Login.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.Login.dto.DBManager;
import com.Login.dto.StaffVO_org;

public class StaffDAO_org {
	public StaffDAO_org() {

	}

	private static StaffDAO_org instance = new StaffDAO_org();

	public static StaffDAO_org getInstance() {
		return instance;
	}

//
	public int find_timeover(StaffVO_org vo) {
		String sql = "select check_timeover from request_timeover where user_email_timeover ='"
				+ vo.getUser_email_timeover() + "' and check_timeover='진행중'";
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		int val = 0;
		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			if (rs.next()) {
				if (rs.getString("check_timeover").equals("진행중")) {
					val = 1;
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, stmt, rs);
		}
		return val;
	}

	public List<StaffVO_org> load_state(String email) {
		String sql = "select * from  request_timeover where user_email_timeover='" + email
				+ "' and check_timeover = '진행중'";
		List<StaffVO_org> list = new ArrayList<StaffVO_org>();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			System.out.println("sql : " + sql);
			rs = stmt.executeQuery(sql);
			if (rs.next()) {
				StaffVO_org vo = new StaffVO_org();
				vo.setStart_timeover(rs.getString("start_timeover"));
				System.out.println("로드 스테이트의 스타트 타임을 저장이 되었는지 로깅하는 중 " + vo.getStart_timeover());
				vo.setDate_timeover(rs.getString("date_timeover"));
				System.out.println(vo.getDate_timeover() + vo.getDate_timeover().getClass());
				vo.setUser_nick_timeover(rs.getString("user_nick_timeover"));
				vo.setUser_email_timeover(rs.getString("user_email_timeover"));
				vo.setCheck_timeover(rs.getString("check_timeover"));
				list.add(vo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, stmt, rs);
		}
		System.out.println("dao end");
		return list;
	}

	public int start_timeover(StaffVO_org Vo) {
		String sql = "insert into request_timeover(NUM_TIMEOVER, USER_NICK_TIMEOVER, USER_EMAIL_TIMEOVER,START_TIMEOVER,END_TIMEOVER,DATE_TIMEOVER,REASON_TIMEOVER,CHECK_TIMEOVER) values(request_timeover_seq.NEXTVAL,?, ?, to_char(sysdate, 'hh24:mi'),to_char(sysdate, 'hh24:mi'),to_char(sysdate, 'yyyy.MM.dd'),?,'진행중')";

		Connection conn = null;
		PreparedStatement pstmt = null;
		int val = 0;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, Vo.getUser_nick_timeover());
			pstmt.setString(2, Vo.getUser_email_timeover());
			pstmt.setString(3, Vo.getReason_timeover());
			pstmt.executeUpdate();
			val = 1;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		return val;
	}

	public int check_timeover(StaffVO_org Vo) {
		String sql = "insert into timeover_now values(1,?, to_char(sysdate, 'hh24:mi'),to_char(sysdate, 'hh24:mi'))";
		Connection conn = null;
		PreparedStatement pstmt = null;
		int val = 0;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, Vo.getUser_nick_timeover());
			System.out.println("뭐가넘어왔을까~" + Vo.getUser_nick_timeover());
			pstmt.executeUpdate();
			val = 1;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		return val;
	}

}