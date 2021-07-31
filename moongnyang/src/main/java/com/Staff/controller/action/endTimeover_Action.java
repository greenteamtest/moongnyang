package com.Staff.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Login.controller.start_timeover_action;
import com.Staff.dto.StaffVO;

public class endTimeover_Action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		StaffVO vo = new StaffVO();
		vo.setUser_email_timeover(request.getParameter("email"));

		System.out.println(vo.getUser_email_timeover());
		service.end_timeover(vo);

		new start_timeover_action().execute(request, response);
	}
}
