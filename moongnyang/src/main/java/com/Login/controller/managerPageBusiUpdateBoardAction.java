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
		System.out.println("매니저 업데이트 액션");
		String email = request.getParameter("email");
		System.out.println(request.getParameter("email"));
		BoardDAO dao = BoardDAO.getInstance();
		dao.updateUserAuthbusiness(email);
		System.out.println("success update auth");
		dao.deleteUpdateListbusiness(email);

		new businessChangeAction().execute(request, response);
	}

}
