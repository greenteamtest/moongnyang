package com.Login.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Community.dao.CommunityDAO;
import com.Community.dto.CommunityVO;
import com.Login.controller.action.Action;
import com.Login.dao.BoardDAO;
import com.Login.dto.boardVO;
import com.media.dto.mediaVO;
import com.picnic.dto.PicnicVO;

public class userPageAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = "member/manage/userPage.jsp";
		String email = request.getParameter("email");
		BoardDAO dao = BoardDAO.getInstance();
		List<mediaVO> media = media_service.load_mypost_media(email);
		mediaVO recent_media = media_service.most_recent_media();
		CommunityDAO cdao = new CommunityDAO();
		CommunityVO recent_community = cdao.most_recent_community();
		List<boardVO> boardList = dao.selectUserAnswerBoards(email);
		List<PicnicVO> picnicList = dao.selectPicnic();

		request.setAttribute("picnicList", picnicList);
		request.setAttribute("recent_media", recent_media);
		request.setAttribute("recent_community", recent_community);
		request.setAttribute("boardList", boardList);
		request.setAttribute("media", media);

		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}
