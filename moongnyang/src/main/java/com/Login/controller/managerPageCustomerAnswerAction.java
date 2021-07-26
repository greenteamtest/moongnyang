package com.Login.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Login.controller.action.Action;
import com.Login.dao.BoardDAO;
import com.Login.dto.boardVO;

public class managerPageCustomerAnswerAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		boardVO vo = new boardVO();
		vo.setManageremail(request.getParameter("manageremail"));
		vo.setKeyword(request.getParameter("keyword"));
		vo.setEmail(request.getParameter("email"));
		vo.setContent(request.getParameter("answercontent"));
		BoardDAO dao = BoardDAO.getInstance();
		dao.insertAnswerboard(vo);

		new managerPageCustomer().execute(request, response);
	}

}
