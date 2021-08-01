package com.Community.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Community.dao.CommunityDAO;
import com.Community.dto.CommunityVO;

public class Community_BoardView_Action implements Community_Action {

	@Override
	public void execute
	(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
		String url="/community/community_board_view.jsp";
		
		String board_idx=request.getParameter("board_idx");
		
		CommunityDAO cDAO=CommunityDAO.getInstance();
		
		cDAO.updateReadCount(board_idx);
		
		CommunityVO cVO=cDAO.selectOneBoardByNum(board_idx);
		
		request.setAttribute("board", cVO);

		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}
