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

public class Community_BoardUpdateLike_Action implements Community_Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String board_idx = request.getParameter("board_idx");

		CommunityDAO cDAO = CommunityDAO.getInstance();

		/* 좋아요 + 1 해주는 메쏘드 */
		cDAO.updateLikeCount(board_idx);

		// 게시글 리스트 화면 출력
		String url = "community/community_board_list.jsp"; // 여기 경로 수정 필요할 수도 있음
		CommunityDAO cDao = CommunityDAO.getInstance();
		List<CommunityVO> boardList = cDao.selectAllBoards();

		request.setAttribute("boardList", boardList);

		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);

		/////////////////////////

	}

}
