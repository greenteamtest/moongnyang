package com.Staff.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Staff.dto.StaffVO;

public class view_timeover_Action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		// TODO Auto-generated method stub
		String url = "member/manage/timeoverReadBoard.jsp";
		System.out.println("시간외 근무 이동 액션");
		StaffVO timeover = service.select_timeover(Integer.parseInt(request.getParameter("num")));
		System.out.println(Integer.parseInt(request.getParameter("num")));
		request.setAttribute("timeover", timeover);

		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
