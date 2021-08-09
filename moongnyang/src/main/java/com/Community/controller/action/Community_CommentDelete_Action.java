package com.Community.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Community.dao.CommunityDAO;
import com.Community.dto.CommunityVO;
import com.Community.dto.Community_CommentVO;

public class Community_CommentDelete_Action implements Community_Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		/* 댓글 삭제 */
		String comment_idx = request.getParameter("comment_idx");
		String user_email = request.getParameter("user_email");

		CommunityDAO cDAO = CommunityDAO.getInstance();

		/* 댓글의 번호를 통해 댓글 삭제하는 메쏘드 */
		cDAO.deleteComment(comment_idx);

//////////////////////////////////////////////
		request.setCharacterEncoding("UTF-8");

		String url = "community/community_board_update&delete.jsp"; // 여기 경로 수정 필요할 수도 있음
		
//내가 쓴 게시글 확인하기
		CommunityDAO cDao = CommunityDAO.getInstance();
		List<CommunityVO> boardList = cDao.selectAllbyUserEmail(user_email);

//내가 쓴 댓글 확인하기
		CommunityDAO cDao1 = CommunityDAO.getInstance();
		List<Community_CommentVO> commentList = cDao1.selectAllComment(user_email);

//게시물 리스트, 댓글 리스트 두개 request에 담아 보내기
		request.setAttribute("boardList", boardList);
		request.setAttribute("commentList", commentList);

		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);

	}

}
