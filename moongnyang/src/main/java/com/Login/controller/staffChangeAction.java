package com.Login.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Login.controller.action.Action;
import com.Login.dao.StaffDAO_org;
import com.Login.dto.StaffVO_org;
import com.Staff.dto.StaffVO;

public class staffChangeAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = "member/manage/managerPageStaff.jsp";
		StaffDAO_org dao = StaffDAO_org.getInstance();
		List<StaffVO_org> timeover = dao.load_state(request.getParameter("email"));
		HttpSession session = request.getSession();
		List<StaffVO> vacation = service.load_vacation(request.getParameter("email"));
		List<StaffVO> timeover_ma = service.load_timeover(request.getParameter("email"));
		
		System.out.println(timeover_ma);

		session.setAttribute("timeover", timeover);
		session.setAttribute("timeover_ma", timeover_ma);
		session.setAttribute("vacation", vacation);
		System.out.println("세션저장완료");

		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
