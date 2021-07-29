package com.Staff.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.parser.ParseException;

import com.Staff.dto.StaffVO;

public class Staff_startTimeover_Action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String jsonData = request.getParameter("jsonData");

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
				response.getWriter().write(String.valueOf(rs));
			} else {
				response.getWriter().write("null");
			}
		} catch (ParseException e) {
			e.printStackTrace();
		}
	}
}
