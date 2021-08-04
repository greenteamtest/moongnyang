package com.Staff.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Login.dao.StaffDAO_org;
import com.Login.dto.StaffVO_org;
import com.Staff.dto.StaffVO;

public class search_staff_Action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "member/manage/managerPageStaff.jsp";
		StaffDAO_org dao = StaffDAO_org.getInstance();
		List<StaffVO_org> timeover = dao.load_state(request.getParameter("email"));
		HttpSession session = request.getSession();
		List<StaffVO> vacation = service.load_vacation(request.getParameter("email"));
		List<StaffVO> timeover_ma = service.load_timeover(request.getParameter("email"));
		List<StaffVO> staffmember = service.search_staff(request.getParameter("search_timeover"));
		System.out.println(request.getParameter("search_timeover"));
		List<StaffVO> total_timeover = service.load_total_timeover();
		List<StaffVO> total_vacation = service.load_total_vacation();
		session.setAttribute("timeover", timeover);
		session.setAttribute("timeover_ma", timeover_ma);
		session.setAttribute("vacation", vacation);
		session.setAttribute("staffmember", staffmember);
		session.setAttribute("total_timeover", total_timeover);
		session.setAttribute("total_vacation", total_vacation);
		System.out.println("세션저장완료");

		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}
