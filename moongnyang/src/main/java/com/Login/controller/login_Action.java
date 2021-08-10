package com.Login.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Community.dao.CommunityDAO;
import com.Login.controller.action.Action;
import com.Login.dao.BoardDAO;
import com.Login.dao.MemberDAO;
import com.Login.dao.StaffDAO_org;
import com.Login.dto.MemberVO;
import com.Login.dto.StaffVO_org;
import com.Login.dto.boardVO;
import com.media.dto.mediaVO;

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
			String email = request.getParameter("email");
			String pwd = request.getParameter("pwd");
			MemberDAO dao = MemberDAO.getInstance();
			BoardDAO bdao = BoardDAO.getInstance();
			CommunityDAO cdao = new CommunityDAO();
			StaffDAO_org sdao = StaffDAO_org.getInstance();
			StaffVO_org svo = new StaffVO_org();
			int answerboard_check = dao.count_answer(email);
//			int community_check = cdao.count_community_comment(email);
			int media_check = media_service.count_media_comment(email);
			int unread = answerboard_check + media_check;
			System.out.println("댓글중 확인안된것  : " + media_check + "개");
			// 만약 안읽은게 있다면 리스트를 생성해서 알림에 뿌려주자
			List<mediaVO> unchecked_media_list = null;
			List<boardVO> unchecked_board_list = null;
			if (answerboard_check != 0) {
				unchecked_board_list = bdao.selectUserAnswerBoards(email);
			}
			if (media_check != 0) {
				unchecked_media_list = media_service.load_mypost_media(email);
			}

			int result = dao.userCheck(email, pwd);
			int val = sdao.find_timeover(svo);
			if (result == 1) {
				if (val == 1) {
					System.out.println("초과근무 신청기록이있음,불러오겠음");
					List<StaffVO_org> state = sdao.load_state(email);
					session = request.getSession();
					session.setAttribute("stateTimeover", state);
					System.out.println("세션저장완료, 로그인서블릿세션 저장단계 종료");
				}
				MemberVO vo = dao.getMeber(email);
				session = request.getSession();
				session.setAttribute("loginUser", vo);
				session.setAttribute("unchecked", unread);
				session.setAttribute("media_list", unchecked_media_list);
				session.setAttribute("board_list", unchecked_board_list);
				System.out.println("미확인 메세지 : " + unread);
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
