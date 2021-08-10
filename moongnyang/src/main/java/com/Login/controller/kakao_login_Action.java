package com.Login.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Login.controller.action.Action;
import com.Login.dao.BoardDAO;
import com.Login.dao.MemberDAO;
import com.Login.dto.MemberVO;
import com.Login.dto.boardVO;
import com.media.dto.mediaVO;

public class kakao_login_Action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		if (session.getAttribute("loginUser") != null) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("member/login.jsp");
			dispatcher.forward(request, response);
		} else {
			String url = "member/login.jsp";
			MemberVO vo = new MemberVO();
			String email = request.getParameter("email");
			String nick = request.getParameter("nickname");

			vo.setEmail(email);
			vo.setNickname(nick);
			MemberDAO dao = MemberDAO.getInstance();
			dao.kakao_Member(vo);
			BoardDAO bdao = BoardDAO.getInstance();
			int answerboard_check = dao.count_answer(email);
//			int answerboard_check = dao.count_answer(userid);
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
			MemberVO vvo = dao.kakao_getMeber(email);
			session = request.getSession();
			session.setAttribute("loginUser", vvo);
			session.setAttribute("unchecked", unread);
			session.setAttribute("media_list", unchecked_media_list);
			session.setAttribute("board_list", unchecked_board_list);
			System.out.println("미확인 메세지 : " + unread);
			url = "index.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(url);
			dispatcher.forward(request, response);
		}

	}
}
