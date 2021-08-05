package com.Login.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Login.controller.action.Action;
import com.Login.dao.BoardDAO;
import com.Login.dao.MemberDAO;
import com.Login.dto.boardVO;

public class userPageAnswerCheckAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		String num = request.getParameter("num");
		BoardDAO dao = BoardDAO.getInstance();
		MemberDAO mdao = MemberDAO.getInstance();
		dao.checkedAnswerBoard(num);
		String email = request.getParameter("email");
		int answerboard_check = mdao.count_answer(email);
		List<boardVO> boardList = dao.selectUserAnswerBoards(email);
		session.setAttribute("unchecked", answerboard_check);
		request.setAttribute("boardList", boardList);
		new userPageAction().execute(request, response);

	}

}
