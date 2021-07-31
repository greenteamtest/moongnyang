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

public class start_timeover_action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		StaffVO_org vo = new StaffVO_org();
		int val = 0;
		vo.setUser_email_timeover(request.getParameter("user_email_timeover"));
		vo.setUser_nick_timeover(request.getParameter("user_nick_timeover"));
		vo.setReason_timeover(request.getParameter("reason_timeover"));
		StaffDAO_org dao = StaffDAO_org.getInstance();
		val = dao.find_timeover(vo);
		System.out.println("스타트 타임오버 액션 val : " + val + "// 0=이미 초과근무 신청되었다는것임 1= 기록없음");
		if (val == 1) {
			System.out.println("기록없음, 추가하겠음");
			dao.start_timeover(vo);
			System.out.println("결과 : 추가완료");
		} else {
			System.out.println("신청기록이있음,불러오겠엄");
		}
		List<StaffVO_org> state = dao.load_state(vo.getUser_email_timeover());
		HttpSession session = request.getSession();

		session.setAttribute("stateTimeover", state);
		System.out.println("세션저장완료");
		String url = "member/manage/managerPageStaff.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
//		new staffChangeAction().execute(request, response);
	}

}
