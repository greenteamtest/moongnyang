package com.Login.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Login.controller.action.Action;
import com.Login.dao.BoardDAO;
import com.Login.dto.boardVO;
import com.media.dto.mediaVO;

public class userPageAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = "member/manage/userPage.jsp";
		String email = request.getParameter("email");
		BoardDAO dao = BoardDAO.getInstance();
		List<mediaVO> media = media_service.load_mypost_media(email);
		List<boardVO> boardList = dao.selectUserAnswerBoards(email);
		request.setAttribute("boardList", boardList);
		request.setAttribute("media", media);

		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}
