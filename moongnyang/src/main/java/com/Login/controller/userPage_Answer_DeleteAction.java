package com.Login.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Login.controller.action.Action;
import com.Login.dao.BoardDAO;
import com.Login.dto.boardVO;

public class userPage_Answer_DeleteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("고객의 소통 액션");

		String num = request.getParameter("num");
		BoardDAO dao = BoardDAO.getInstance();
		dao.deleteAnswer(num);
		String email = request.getParameter("email");
		List<boardVO> boardList = dao.selectUserAnswerBoards(email);
		request.setAttribute("boardList", boardList);
		new userPageAction().execute(request, response);

	}

}
