package com.Login.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.Login.dto.DBManager;
import com.Login.dto.boardVO;
import com.community.dao.CommunityDAO;

public class BoardDAO {
	private BoardDAO() {

	}

	private static BoardDAO instance = new BoardDAO();
	private PreparedStatement pstmt;

	public static BoardDAO getInstance() {
		return instance;
	}

	public List<boardVO> selectAllBoards() {
		String sql = "select * from businessboard order by businessnum desc";
		List<boardVO> list = new ArrayList<boardVO>();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		System.out.println("DB접속은된듯?");
		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				boardVO bVo = new boardVO();
				bVo.setNum(rs.getInt("businessnum"));
				bVo.setEmail(rs.getString("user_email"));
				bVo.setContent(rs.getString("businesscontent"));
				bVo.setReadval(rs.getInt("businessread"));
				bVo.setWritedate(rs.getTimestamp("writedate"));
				list.add(bVo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, stmt, rs);
		}
		return list;
	}

	public List<boardVO> selectAllconversationBoards() {
		String sql = "select * from conversationBoard order by conversationBoardnum desc";
		List<boardVO> list = new ArrayList<boardVO>();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				boardVO bVo = new boardVO();
				bVo.setNum(rs.getInt("conversationBoardnum"));
				bVo.setKeyword(rs.getString("conversationBoardkeyword"));
				bVo.setEmail(rs.getString("user_email"));
				bVo.setContent(rs.getString("conversationBoardcontent"));
				bVo.setReadval(rs.getInt("conversationBoardread"));
				bVo.setWritedate(rs.getTimestamp("conversationBoardwritedate"));
				list.add(bVo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, stmt, rs);
		}
		return list;
	}

	public List<boardVO> selectUserAnswerBoards(String email) {
		String sql = "select * from answerboard where user_email='" + email + "'";
		List<boardVO> list = new ArrayList<boardVO>();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				boardVO bVo = new boardVO();
				bVo.setNum(rs.getInt("answerBoardnum"));
				bVo.setKeyword(rs.getString("answerkeyword"));
				bVo.setEmail(rs.getString("user_email"));
				bVo.setManageremail(rs.getString("manager_email"));
				bVo.setContent(rs.getString("answercontent"));
				bVo.setReadval(rs.getInt("answerread"));
				bVo.setWritedate(rs.getTimestamp("answerredwritedate"));
				list.add(bVo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, stmt, rs);
		}
		return list;
	}

	public void insertBusinessUpdateBoard(boardVO bVo) {
		String sql = "insert into businessboard(" + "businessnum, user_email, businesscontent) "
				+ "values(board_seq.nextval, ?, ?)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bVo.getEmail());
			pstmt.setString(2, bVo.getContent());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}

	public void insertConversationUploadBoard(boardVO bVo) {
		String sql = "insert into conversationBoard("
				+ "conversationBoardnum,conversationBoardkeyword, user_email, conversationBoardcontent)"
				+ "values(board_seq.nextval,?, ?, ?)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bVo.getKeyword());
			pstmt.setString(2, bVo.getEmail());
			pstmt.setString(3, bVo.getContent());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}

	public void insertAnswerboard(boardVO bVo) {
		String sql = "insert into answerBoard("
				+ "answerBoardnum, answerkeyword,user_email, manager_email, answercontent, usercontent)"
				+ "values(answerBoard_seq.nextval,?,?,?,?,?)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, bVo.getKeyword());
			pstmt.setString(2, bVo.getEmail());
			pstmt.setString(3, bVo.getManageremail());
			pstmt.setString(4, bVo.getContent());
			pstmt.setString(5, bVo.getContent());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}

	// 게시판 글 상세 내용 보기 :글번호로 찾아온다. : 실패 null,
	public boardVO selectOneBoardByNum(String email) {
		String sql = "select * from businessboard where user_email = ?";
		boardVO bVo = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, email);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				bVo = new boardVO();
				bVo.setNum(rs.getInt("businessnum"));
				bVo.setEmail(rs.getString("user_email"));
				bVo.setContent(rs.getString("businesscontent"));
				bVo.setWritedate(rs.getTimestamp("writedate"));
				bVo.setReadval(rs.getInt("businessread"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return bVo;
	}

	public boardVO selectOneCustomerBoardByNum(String num) {
		String sql = "select * from conversationBoard where conversationBoardnum = ?";
		boardVO bVo = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, num);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				bVo = new boardVO();
				bVo.setNum(rs.getInt("conversationBoardnum"));
				bVo.setKeyword(rs.getString("conversationBoardkeyword"));
				bVo.setEmail(rs.getString("USER_EMAIL"));
				bVo.setContent(rs.getString("conversationBoardcontent"));
				bVo.setWritedate(rs.getTimestamp("conversationBoardWRITEDATE"));
				bVo.setReadval(rs.getInt("conversationBoardread"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return bVo;
	}

	public void checkedBoard(String email) {
		String sql = "update businessboard set businessread=? where user_email=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, 0);
			pstmt.setString(2, email);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}

	public void checkedcustomerBoard(String num) {
		String sql = "update conversationBoard set conversationBoardread=? where conversationBoardnum=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, 0);
			pstmt.setString(2, num);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}

	public void checkedAnswerBoard(String num) {
		String sql = "update answerboard set answerread=? where answerboardnum=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, 0);
			pstmt.setString(2, num);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}

	public void updateUserAuthbusiness(String email) {
		String sql = "update user_info set user_auth=? where user_email=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, 1);
			pstmt.setString(2, email);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}

	public void deleteUpdateListbusiness(String email) {
		String sql = "delete businessboard where user_email=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, email);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}

	public void deleteAnswer(String num) {
		String sql = "delete answerboard where answerboardnum=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, num);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}

}