package com.Community.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Community.dao.CommunityDAO;
import com.Community.dto.CommunityVO;

public class Community_BoardDelete_Action implements Community_Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		String url = "/community/community_board_update.jsp";

		/*게시글 삭제*/
		String board_idx = request.getParameter("board_idx");
		String user_email = request.getParameter("user_email");

		CommunityDAO cDAO = CommunityDAO.getInstance();

		/* 게시글의 번호를 통해 게시글 삭제하는 메쏘드 */
		cDAO.deleteBoard(board_idx);

		
		/*게시글 삭제 한 것 반영해서 내가 쓴 글 리스트 화면으로 이동*/
		request.setCharacterEncoding("UTF-8");

		String url = "community/community_board_update&delete.jsp"; // 여기 경로 수정 필요할 수도 있음

		CommunityDAO cDao = CommunityDAO.getInstance();
		/* 로그인된 유저의 이메일을 통해 유저가 쓴 글들 출력하는 메쏘드 */
		List<CommunityVO> boardList = cDao.selectAllbyUserEmail(user_email);

		request.setAttribute("boardList", boardList);

		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);

	}
}
