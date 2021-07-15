package com.Login.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Team.dao.BoardDAO;
import com.Team.dto.BoardVO;

public class BoardViewAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url ="/board/boardView.jsp";
		String num = request.getParameter("num");
		
		BoardDAO dao = BoardDAO.getInstance();
		
		dao.updateReadCount(num);
		BoardVO vo = dao.selectOneBoardByNum(num);
		
		request.setAttribute("board", vo);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}