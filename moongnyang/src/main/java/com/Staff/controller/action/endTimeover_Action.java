package com.Staff.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Login.controller.staffChangeAction;
import com.Staff.dto.StaffVO;

public class endTimeover_Action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		StaffVO vo = new StaffVO();
		vo.setUser_email_timeover(request.getParameter("email"));

		System.out.println("gma : " +vo.getUser_email_timeover());
		service.end_timeover(vo);

		new staffChangeAction().execute(request, response);
	}
}
