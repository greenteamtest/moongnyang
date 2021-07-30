package com.Login.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Login.controller.action.Action;
import com.Login.dao.StaffDAO;
import com.Login.dto.StaffVO;

public class staffChangeAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = "member/manage/managerPageStaff.jsp";
		StaffDAO dao = StaffDAO.getInstance();
		List<StaffVO> state = dao.load_state(request.getParameter("email"));
		HttpSession session = request.getSession();

		session.setAttribute("stateTimeover", state);
		System.out.println("세션저장완료");

		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
