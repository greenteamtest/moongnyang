package com.Login.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Login.controller.action.Action;
import com.Login.dao.StaffDAO;
import com.Login.dto.StaffVO;

public class staffChangeAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		String url = "member/manage/managerPageStaff.jsp";
		StaffDAO dao = StaffDAO.getInstance();
		StaffVO vo = new StaffVO();
		vo.setUser_email_timeover(request.getParameter("email"));
		System.out.println(request.getParameter("email"));
		int reasult = dao.find_timeover(vo);
		System.out.println("스타트 체인지 액션 결과값rs : " + reasult + " // 0=이미 초과근무 신청되었다는것임 1= 기록없음");
		if (reasult == 0) {
			System.out.println("신청기록이있음,불러오겠엄");
			List<StaffVO> state = dao.load_state(vo.getUser_email_timeover());
			HttpSession session = request.getSession();
			
			session.setAttribute("stateTimeover", state);
			System.out.println("세션저장완료");
		} else {
			System.out.println("없음");
		}

		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
