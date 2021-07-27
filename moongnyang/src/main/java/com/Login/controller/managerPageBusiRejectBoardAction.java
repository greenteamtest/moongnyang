package com.Login.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Login.controller.action.Action;
import com.Login.dao.BoardDAO;

public class managerPageBusiRejectBoardAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("매니저 리젝트 액션");
		String email = request.getParameter("email");
		System.out.println(request.getParameter("email"));
		BoardDAO dao = BoardDAO.getInstance();
		dao.deleteUpdateListbusiness(email);

		new managerBusiChangeAction().execute(request, response);
	}

}
