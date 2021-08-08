package com.Community.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.Community.dto.CommunityVO;
import com.Community.dto.Community_CommentVO;
import com.Community.dto.DBManager;
import com.media.dto.mediaVO;

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

	/* c r Update d -게시글 조회수 up! */
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

	/* c Read u d -게시판 글 상세보기 : 글번호 board_idx로 찾아온다. 실패-> null */
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

	/* 게시물 등록시 썼던 mybatis 코드 ,,, 모델 1으로 변경하면서 쓸일이 없어짐,, ㅠ */
//	public int insert_board(SqlSession session, CommunityVO vo) {
//		return session.insert("insert_board", vo);
//	}

//	/*은호씨 코드*/
//	public void write_board(mediaVO vo) {
//		String sql = "insert into media_upload values(media_upload_seq.nextval, ?, ?, ?, ?,?,?,0,0)";
//		Connection conn = null;
//		PreparedStatement pstmt = null;
//		try {
//			conn = DBManager.getConnection();
//			pstmt = conn.prepareStatement(sql);
//			pstmt.setString(1, vo.getTitle_media());
//			pstmt.setString(2, vo.getHashtag_media());
//			pstmt.setString(3, vo.getUser_email_media());
//			pstmt.setString(4, vo.getUser_nick());
//			pstmt.setString(5, vo.getMediaurl());
//			pstmt.setString(6, vo.getContent_media());
//			pstmt.executeUpdate(); // 실행
//		} catch (Exception e) {
//			e.printStackTrace();
//		} finally {
//			DBManager.close(conn, pstmt);
//		}
//	}

//	public int delete(SqlSession session, int num) {
//		return session.insert("insert_board", num);
//	}
//////////////////[ 댓글 관련 method ]/////////////////////////////////	
	/* c Read u d -게시판 상세보기 화면속 댓글 리스트 출력 */
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

				// DB Community_board_comment 속 칼럼명
//				COMMENT_IDX
//				USER_EMAIL
//				COMMENT_CONTENT
//				BOARD_IDX
//				WRITE_DATE

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
	}// selectAllComments() 끝

	/* 댓글 생성 - Create */
	public int insert_comment(SqlSession session, Community_CommentVO ccVO) {
		System.out.println("다오까지와쪙");
		return session.insert("insert_comment", ccVO);
	}

	/* 이메일 값으로 유저가 쓴 글 찾아오기 - 글 수정,삭제 */
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

	/*게시물 삭제*/
	public void deleteBoard(String num) {
		String sql="delete community_board where board_idx=?";
		
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
	}//deleteBoard() 끝
	
}// CommunityDAO{
