package com.Staff.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Staff.dto.StaffVO;

public class view_vacation_Action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		// TODO Auto-generated method stub
		String url = "member/manage/vacationReadBoard.jsp";
		System.out.println("휴가보기 이동 액션");
		StaffVO vacation = service.select_vacation(Integer.parseInt(request.getParameter("num")));
		System.out.println(Integer.parseInt(request.getParameter("num")));
		request.setAttribute("vacation", vacation);

		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}
