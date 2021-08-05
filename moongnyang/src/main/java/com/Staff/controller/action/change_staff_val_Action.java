package com.Staff.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Login.controller.staffChangeAction;
import com.Staff.dto.StaffVO;

public class change_staff_val_Action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		StaffVO vo = new StaffVO();
		vo.setUser_email(request.getParameter("email"));
		vo.setUser_auth(Integer.valueOf(request.getParameter("val")));
		service.change_staff_val(vo);
		new staffChangeAction().execute(request, response);
	}
}
