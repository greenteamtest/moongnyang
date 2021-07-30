package com.Login.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

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
	public int find_timeover(StaffVO vo) {
		String sql = "select count(*) from request_timeover where user_email_timeover ='" + vo.getUser_email_timeover()
				+ "'";
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		int val = 0;
		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			rs.next();
			System.out.println("rs : " + rs.getString(1));
			if (rs.getString(1).equals("0")) {
				System.out.println("이 이메일로 초과근무 시작한기록 없음");
				val = 1;
			} else if (rs.getString(1).equals("1")) {
				System.out.println("초과근무 중복신청 불가함");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, stmt, rs);
		}
		return val;
	}

	public List<StaffVO> load_state(String email) {
		String sql = "select * from  request_timeover where user_email_timeover='" + email + "'";
		List<StaffVO> list = new ArrayList<StaffVO>();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			System.out.println("sql : " + sql);
			rs = stmt.executeQuery(sql);
			rs.next();
			StaffVO vo = new StaffVO();
			vo.setStart_timeover(rs.getString("start_timeover"));
			System.out.println("로드 스테이트의 스타트 타임을 저장이 되었는지 로깅하는 중 " + vo.getStart_timeover());
			vo.setDate_timeover(rs.getString("date_timeover"));
			System.out.println(vo.getDate_timeover() + vo.getDate_timeover().getClass());
			vo.setUser_nick_timeover(rs.getString("user_nick_timeover"));
			vo.setUser_email_timeover(rs.getString("user_email_timeover"));
			vo.setCheck_timeover(rs.getString("check_timeover"));
			list.add(vo);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, stmt, rs);
		}
		System.out.println("dao end");
		return list;
	}

	public int start_timeover(StaffVO Vo) {
		String sql = "insert into request_timeover(NUM_TIMEOVER, USER_NICK_TIMEOVER, USER_EMAIL_TIMEOVER,START_TIMEOVER,END_TIMEOVER,DATE_TIMEOVER,REASON_TIMEOVER,CHECK_TIMEOVER) values(request_timeover_seq.NEXTVAL,?, ?, to_char(sysdate, 'hh24:mi'),to_char(sysdate, 'hh24:mi'),to_char(sysdate, 'yyyy.MM.dd'),?,'대기')";

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

	public int check_timeover(StaffVO Vo) {
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