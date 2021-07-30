package com.Login.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Login.controller.action.Action;
import com.Login.dao.StaffDAO;
import com.Login.dto.StaffVO;

public class start_timeover_action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		StaffVO vo = new StaffVO();
		int val = 0;
		vo.setUser_email_timeover(request.getParameter("user_email_timeover"));
		vo.setUser_nick_timeover(request.getParameter("user_nick_timeover"));
		vo.setReason_timeover(request.getParameter("reason_timeover"));
		StaffDAO dao = StaffDAO.getInstance();
		val = dao.find_timeover(vo);
		System.out.println("스타트 타임오버 액션 val : " + val);
		if (val == 1) {
			dao.start_timeover(vo);
		}

		new staffChangeAction().execute(request, response);
	}

}
