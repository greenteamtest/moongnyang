package com.Community.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.Community.dto.CommunityVO;
import com.Community.dto.Community_CommentVO;
import com.Community.dto.DBManager;

public class CommunityDAO {

	public CommunityDAO() {
	}

	private static CommunityDAO instance = new CommunityDAO();

	public static CommunityDAO getInstance() {
		return instance;
	}

	/* c Read u d -게시판 리스트 출력 */
	public List<CommunityVO> selectAllBoards() {
		// 최근 등록한 상품 먼저 출력하기
		String sql = "select * from community_board order by board_idx desc";
		List<CommunityVO> list = new ArrayList<CommunityVO>();

		Connection conn = null;
		Statement stmt = null;
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
	}// selectAllProducts() 끝

	/* Create r u d -게시글 등록 */
	public void insertBoard(CommunityVO cVO) {

		String sql = "INSERT INTO COMMUNITY_BOARD"
				+ "(BOARD_IDX, USER_EMAIL, TITLE, CONTENTS, ANIMAL_TAG, BOARD_TAG,READ_COUNT,LIKE_COUNT,WRITE_DATE,"
				+ "	PIC_URL_1,PIC_URL_2,PIC_URL_3,PIC_URL_4,PIC_URL_5)"
				+ "	values (seq_community_board.nextval,?,?,?,?,?,default,default,default,?,?,?,?,?)";

		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, cVO.getUser_email());
			pstmt.setString(2, cVO.getTitle());
			pstmt.setString(3, cVO.getContents());
			pstmt.setInt(4, cVO.getAnimal_tag());
			pstmt.setInt(5, cVO.getBoard_tag());
			pstmt.setString(6, cVO.getPic_url_1());
			pstmt.setString(7, cVO.getPic_url_2());
			pstmt.setString(8, cVO.getPic_url_3());
			pstmt.setString(9, cVO.getPic_url_4());
			pstmt.setString(10, cVO.getPic_url_5());

			pstmt.executeUpdate(); // 실행
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	} // insertBoard() 메쏘드 끝

	/* 게시글 조회수 +1 ! */
	public void updateReadCount(String num) {
		String sql = "update community_board set READ_COUNT=READ_COUNT+1 where BOARD_IDX=?";

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
	} // updateReadCount() 메쏘드 끝

	/* 게시글 좋아요 수 +1 ! */
	public void updateLikeCount(String num) {
		String sql = "update community_board set LIKE_COUNT=LIKE_COUNT+1 where BOARD_IDX=?";

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

	/* 게시판 글 상세보기 : 글번호 board_idx로 찾아온다. 실패-> null */
	public CommunityVO selectOneBoardByNum(String num) {
		String sql = "select * from community_board where BOARD_IDX=?";

		CommunityVO cVO = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, num);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				cVO = new CommunityVO();

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
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return cVO;
	}// selectOneBoardByNum() 끝

//////////////////[ 댓글 관련 method ]/////////////////////////////////	

	/* 게시글 상세보기 속 댓글들 */
	public List<Community_CommentVO> selectAllComments(String num) {

		String sql = "select * from community_board_comment where BOARD_IDX=" + num;

		List<Community_CommentVO> list = new ArrayList<Community_CommentVO>();

		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);

			while (rs.next()) { // 이동은 행(로우) 단위로
				Community_CommentVO ccVO = new Community_CommentVO();

				ccVO.setComment_idx(rs.getInt("COMMENT_IDX"));
				ccVO.setUser_email(rs.getString("USER_EMAIL"));
				ccVO.setComment_content(rs.getString("COMMENT_CONTENT"));
				ccVO.setBoard_idx(rs.getInt("BOARD_IDX"));
				ccVO.setWrite_date(rs.getString("WRITE_DATE"));

				list.add(ccVO);
			} // while문 끝
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, stmt, rs);
		}
		return list;
	}

	/* 댓글등록 */
	public void insertComment(Community_CommentVO ccVO) {

		String sql = "INSERT INTO community_board_comment"
				+ "	(COMMENT_IDX,USER_EMAIL,COMMENT_CONTENT,BOARD_IDX,WRITE_DATE,board_user_email)" + "	VALUES"
				+ "	(SEQ_COMMUNITY_BOARD_COMMENT.nextval,?,?,?,default,?)";

		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, ccVO.getUser_email());
			pstmt.setString(2, ccVO.getComment_content());
			pstmt.setInt(3, ccVO.getBoard_idx());
			pstmt.setString(4, ccVO.getBoard_user_email());

			pstmt.executeUpdate(); // 실행
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	} // insertComment() 메쏘드 끝

	/* 내가 지금까지 쓴 댓글 모두 출력하기 */
	public List<Community_CommentVO> selectAllComment(String email) {

		String sql = "select * from community_board_comment where USER_EMAIL='" + email + "' order by COMMENT_IDX desc";

		List<Community_CommentVO> list = new ArrayList<Community_CommentVO>();

		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);

			while (rs.next()) { // 이동은 행(로우) 단위로
				Community_CommentVO ccVO = new Community_CommentVO();

				ccVO.setComment_idx(rs.getInt("COMMENT_IDX"));
				ccVO.setUser_email(rs.getString("USER_EMAIL"));
				ccVO.setComment_content(rs.getString("COMMENT_CONTENT"));
				ccVO.setBoard_idx(rs.getInt("BOARD_IDX"));
				ccVO.setWrite_date(rs.getString("WRITE_DATE"));
				// CHECK_COMMENT 컬럼도 들어가야 함 (알림기능에 쓰일 것)

				list.add(ccVO);
			} // while문 끝
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, stmt, rs);
		}
		return list;
	}

	/* 댓글 삭제 */
	public void deleteComment(String num) {
		String sql = "delete community_board_comment where comment_idx=?";

		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, num);

			pstmt.executeUpdate(); // 실행
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

//////////////[게시글 수정 /삭제]///////////////////////////	

	/* 글 수정/삭제 페이지로 이동 : 이메일 값으로 유저가 쓴 글 찾아오기 - 글 수정,삭제 */
	public List<CommunityVO> selectAllbyUserEmail(String email) {
		String sql = "select * from community_board where USER_EMAIL='" + email + "' order by board_idx desc";

		List<CommunityVO> list = new ArrayList<CommunityVO>();

		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);

			while (rs.next()) { // 이동은 행(로우) 단위로
				CommunityVO cVO = new CommunityVO();
				// 모든 컬럼 다 가져올 필요는 없어서 화면에 표시되는것+값넘길때 필요한 값만 VO에 넣어줌
				cVO.setBoard_idx(rs.getInt("BOARD_IDX"));
				cVO.setUser_email(rs.getString("USER_EMAIL"));
				cVO.setTitle(rs.getString("TITLE"));
				cVO.setContents(rs.getString("CONTENTS"));
				cVO.setAnimal_tag(rs.getInt("ANIMAL_TAG"));
				cVO.setBoard_tag(rs.getInt("BOARD_TAG"));
				cVO.setWrite_date(rs.getString("WRITE_DATE"));

				list.add(cVO);
			} // while문 끝
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, stmt, rs);
		}
		return list;
	}// selectAllbyUserEmail() 끝

	/* 게시글 수정하기- 수정하기 버튼 눌렀을 때 */
	public void updateBoard(CommunityVO cVO) {

		String sql = "UPDATE COMMUNITY_BOARD SET" + " " + "TITLE=?, CONTENTS=?, ANIMAL_TAG=?, BOARD_TAG=?,"
				+ "PIC_URL_1=?,PIC_URL_2=?,PIC_URL_3=?,PIC_URL_4=?,PIC_URL_5=? " + "where BOARD_IDX=?"; // 총 ?가 10개

		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, cVO.getTitle());
			pstmt.setString(2, cVO.getContents());
			pstmt.setInt(3, cVO.getAnimal_tag());
			pstmt.setInt(4, cVO.getBoard_tag());
			pstmt.setString(5, cVO.getPic_url_1());
			pstmt.setString(6, cVO.getPic_url_2());
			pstmt.setString(7, cVO.getPic_url_3());
			pstmt.setString(8, cVO.getPic_url_4());
			pstmt.setString(9, cVO.getPic_url_5());
			pstmt.setInt(10, cVO.getBoard_idx());

			pstmt.executeUpdate(); // 실행
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	} // updateBoard()끝

	/* 게시물 삭제 */
	public void deleteBoard(String num) {
		String sql = "delete community_board where board_idx=?";

		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, num);

			pstmt.executeUpdate(); // 실행
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}// deleteBoard() 끝

	/* 게시물 삭제 할때 게시물에 달린 댓글도 삭제하기 */
	public void deleteCommentByBoard(String num) {
		String sql = "delete community_board_comment where board_idx=?";

		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, num);

			pstmt.executeUpdate(); // 실행
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	/* 게시글 리스트에서 필터 적용하여 검색 */
	// 수정 중 .... !!!
	public List<CommunityVO> selectFilteredBoards(String x, String y) {
		// x는 animal_tag=n 으로 이루어진 문자열,
		// y는 board_tag=n 으로 이루어진 문자열,

		String sql = "select * from community_board " + "where (" + x + ")" + "and (" + y + ")"
				+ "order by board_idx desc";

		////////////////////////////////////////////////
		List<CommunityVO> list = new ArrayList<CommunityVO>();

		Connection conn = null;
		Statement stmt = null;
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
	}
}// CommunityDAO{
