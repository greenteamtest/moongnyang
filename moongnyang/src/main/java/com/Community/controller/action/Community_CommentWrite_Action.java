package com.Community.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Community.dao.CommunityDAO;
import com.Community.dto.Community_CommentVO;

public class Community_CommentWrite_Action implements Community_Action{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		String board_idx=request.getParameter("board_idx");
		String user_email = request.getParameter("user_email");
		String comment_content = request.getParameter("comment_content");
		
		Community_CommentVO ccVO=new Community_CommentVO();
		
		ccVO.setBoard_idx(Integer.parseInt(board_idx));
		ccVO.setUser_email(user_email);
		ccVO.setComment_content(comment_content);
		/* comment_idx, write_date 는 디폴트 값 넣을 것임 - (시퀀스값, 오늘 일시) */
		
		/*Dao클래스 */
		CommunityDAO cDAO=CommunityDAO.getInstance();
		cDAO.insertComment(ccVO);
		
		new Community_BoardView_Action().execute(request, response);
	}
}
