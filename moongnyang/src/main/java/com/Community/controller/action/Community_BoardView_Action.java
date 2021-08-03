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

public class Community_BoardView_Action implements Community_Action {

	@Override
	public void execute
	(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
		String url="/community/community_board_view.jsp";
		
		String board_idx=request.getParameter("board_idx");
		
		CommunityDAO cDAO=CommunityDAO.getInstance();
		
		/*조회수 + 1 해주는 메쏘드*/
		cDAO.updateReadCount(board_idx);
		/*클릭한 게시글의 번호를 통해 데이터 출력하는 메쏘드*/
		CommunityVO cVO=cDAO.selectOneBoardByNum(board_idx);
		
		request.setAttribute("board", cVO);
		
		
		//댓글............................................
		List<Community_CommentVO> commentList = cDAO.selectAllComments(board_idx);

		request.setAttribute("commentList", commentList);
	

		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
		/////////////////////////
	
		
	}
}
