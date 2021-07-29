package com.Staff.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Staff.dto.StaffVO;

public class startTimeover_Action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String url = "member/manage/managerPageStaff.jsp";
		int rs = 0;

		StaffVO vo = new StaffVO();
		vo.setUser_nick_timeover(request.getParameter("user_email"));
		vo.setUser_email_timeover(request.getParameter("user_nick"));
		vo.setReason_timeover(request.getParameter("content"));

		System.out.println(vo.getUser_nick_timeover());
		System.out.println(vo.getUser_email_timeover());
		System.out.println(vo.getReason_timeover());
		try {
			rs = service.start_timeover(vo);

			if (rs > 0) {
				System.out.println("성공 ㅅㅅ");
			} else {
				System.out.println("실패 ㅠㅠ");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);

	}
}
