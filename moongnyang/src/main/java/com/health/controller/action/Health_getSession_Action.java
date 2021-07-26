package com.health.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Login.dto.MemberVO;

public class Health_getSession_Action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession();

		MemberVO vo = (MemberVO) session.getAttribute("loginUser");
		if (vo != null) {
			response.getWriter().write(vo.getEmail());
		} else {
			response.getWriter().write("null");
		}
	}

}
