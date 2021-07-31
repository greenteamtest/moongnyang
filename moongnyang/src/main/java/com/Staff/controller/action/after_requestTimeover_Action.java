package com.Staff.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Login.controller.staffChangeAction;
import com.Staff.dto.StaffVO;

public class after_requestTimeover_Action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		StaffVO vo = new StaffVO();
		vo.setUser_email_timeover(request.getParameter("user_email_timeover"));
		vo.setUser_nick_timeover(request.getParameter("user_nick_timeover"));
		vo.setDate_timeover(request.getParameter("date_timeover"));
		vo.setStart_timeover(request.getParameter("start_timeover"));
		vo.setEnd_timeover(request.getParameter("end_timeover"));
		vo.setReason_timeover(request.getParameter("reason_timeover"));
		System.out.println(vo.getUser_email_timeover());
		System.out.println(vo.getUser_nick_timeover());
		System.out.println(vo.getDate_timeover());
		System.out.println(vo.getStart_timeover());
		System.out.println(vo.getEnd_timeover());
		System.out.println(vo.getReason_timeover());

		service.after_request_timeover(vo);

		new staffChangeAction().execute(request, response);
	}
}
