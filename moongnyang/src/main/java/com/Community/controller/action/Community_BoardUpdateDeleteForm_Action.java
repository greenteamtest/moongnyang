package com.Community.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Community.dao.CommunityDAO;
import com.Community.dto.CommunityVO;

public class Community_BoardUpdateDeleteForm_Action implements Community_Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//////////////////////////////////////////////
		request.setCharacterEncoding("UTF-8");

		String url = "community/community_board_update&delete.jsp"; // 여기 경로 수정 필요할 수도 있음
		String user_email = request.getParameter("user_email");

		CommunityDAO cDao = CommunityDAO.getInstance();
		/* 로그인된 유저의 이메일을 통해 유저가 쓴 글들 출력하는 메쏘드 */
		List<CommunityVO> boardList = cDao.selectAllbyUserEmail(user_email);

		request.setAttribute("boardList", boardList);

		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}
