package com.Staff.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Login.controller.staffChangeAction;
import com.Staff.dto.StaffVO;

public class insert_staff_Action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		StaffVO vo = new StaffVO();
		vo.setUser_email(request.getParameter("new_email"));
		vo.setUser_nick(request.getParameter("new_nick"));
		vo.setUser_auth(Integer.parseInt(request.getParameter("new_auth")));
		vo.setUser_pwd(request.getParameter("new_pwd"));
		service.insert_staff(vo);

		new staffChangeAction().execute(request, response);
	}
}
