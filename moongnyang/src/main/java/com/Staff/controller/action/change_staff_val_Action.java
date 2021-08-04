package com.Staff.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Login.controller.staffChangeAction;
import com.Login.dto.MemberVO;

public class change_staff_val_Action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		MemberVO vo = new MemberVO();
		vo.setEmail(request.getParameter("email"));
		vo.setAuth(Integer.valueOf(request.getParameter("val")));
		System.out.println("val : " + vo.getAuth());
		service.change_staff_val(vo);
		new staffChangeAction().execute(request, response);
	}
}
