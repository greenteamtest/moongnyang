package com.Login.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Login.controller.action.Action;
import com.Login.dao.MemberDAO;
import com.Login.dao.StaffDAO_org;
import com.Login.dto.MemberVO;
import com.Login.dto.StaffVO_org;

public class login_Action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		if (session.getAttribute("loginUser") != null) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("member/login.jsp");
			dispatcher.forward(request, response);
		} else {
			String url = "member/login.jsp";
			String userid = request.getParameter("email");
			String pwd = request.getParameter("pwd");
			MemberDAO dao = MemberDAO.getInstance();
			StaffDAO_org sdao = StaffDAO_org.getInstance();
			StaffVO_org svo = new StaffVO_org();
			int answerboard_check = dao.count_answer(userid);

			int result = dao.userCheck(userid, pwd);
			int val = sdao.find_timeover(svo);
			if (result == 1) {
				if (val == 1) {
					System.out.println("초과근무 신청기록이있음,불러오겠음");
					List<StaffVO_org> state = sdao.load_state(userid);
					session = request.getSession();
					session.setAttribute("stateTimeover", state);
					System.out.println("세션저장완료, 로그인서블릿세션 저장단계 종료");
					System.out.println("미확인 메세지 : " + answerboard_check);

				}
				MemberVO vo = dao.getMeber(userid);
				session = request.getSession();
				session.setAttribute("loginUser", vo);

				session.setAttribute("unchecked", answerboard_check);
				System.out.println("미확인 메세지 : " + answerboard_check);
				url = "index.jsp";
			} else if (result == 0) {
				request.setAttribute("message", "이런, 회원정보가 맞지않아요 ㅠ");

			} else if (result == -1) {
				request.setAttribute("message", "없는 계정입니다. 확인해주세요!");
			}
			RequestDispatcher dispatcher = request.getRequestDispatcher(url);
			dispatcher.forward(request, response);
		}

	}
}
