package com.Staff.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Login.controller.staffChangeAction;
import com.Staff.dto.StaffVO;

public class startTimeover_Action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		StaffVO vo = new StaffVO();
		vo.setUser_email_timeover(request.getParameter("user_email_timeover"));
		vo.setUser_nick_timeover(request.getParameter("user_nick_timeover"));
		vo.setReason_timeover(request.getParameter("reason_timeover"));
		service.start_timeover(vo);

		new staffChangeAction().execute(request, response);
	}
}
