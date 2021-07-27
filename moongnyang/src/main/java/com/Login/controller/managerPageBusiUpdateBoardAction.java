package com.Login.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Login.controller.action.Action;
import com.Login.dao.BoardDAO;

public class managerPageBusiUpdateBoardAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		String email = request.getParameter("email");
		BoardDAO dao = BoardDAO.getInstance();
		dao.updateUserAuthbusiness(email);
		dao.deleteUpdateListbusiness(email);

		new managerBusiChangeAction().execute(request, response);
	}

}
