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
		StaffVO vo = new StaffVO();

		vo.setUser_email_timeover(request.getParameter("user_email_timeover"));
		vo.setUser_nick_timeover(request.getParameter("user_nick_timeover"));
		vo.setReason_timeover(request.getParameter("reason_timeover"));
		StaffDAO dao = StaffDAO.getInstance();
		dao.start_timeover(vo);
		dao.check_timeover(vo);
		new staffChangeAction().execute(request, response);
	}

}
