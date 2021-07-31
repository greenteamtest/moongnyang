package com.Staff.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Login.controller.staffChangeAction;
import com.Staff.dto.StaffVO;

public class requestVaction_Action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		StaffVO vo = new StaffVO();
		vo.setUser_email_vacation(request.getParameter("user_email_vacation"));
		vo.setUser_nick_vacation(request.getParameter("user_nick_vacation"));
		vo.setVal_vacation(request.getParameter("val_vacation"));
		vo.setReason_vacation(request.getParameter("reason_vacation"));
		if (vo.getReason_vacation().length() < 1) {
			vo.setReason_vacation("해당없음");
		}
		vo.setStart_vacation(request.getParameter("start_vacation"));
		vo.setEnd_vacation(request.getParameter("end_vacation"));
		System.out.println("eu : " + request.getParameter("reason_vacation"));
		service.request_vacation(vo);

		new staffChangeAction().execute(request, response);
	}
}
