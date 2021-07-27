package com.Login.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Login.controller.action.Action;
import com.Login.dao.BoardDAO;
import com.Login.dto.boardVO;

public class managerPageCustomerReadBoardAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = "member/manage/managerPageCustomerReadBoard.jsp";
		System.out.println("매니저페이지의 사업자 액션");
		String num = request.getParameter("num");
		BoardDAO dao = BoardDAO.getInstance();
		boardVO vo = dao.selectOneCustomerBoardByNum(num);
		dao.checkedcustomerBoard(num);
		request.setAttribute("board", vo);

		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}
