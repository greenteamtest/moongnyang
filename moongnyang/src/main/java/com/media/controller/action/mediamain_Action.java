package com.media.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.media.dto.mediaVO;

public class mediamain_Action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();

		String url = "media/mediamain.jsp";
		System.out.println("미디어 액션");
//
//		String email = request.getParameter("email");
//		MemberDAO dao = MemberDAO.getInstance();
//		CommunityDAO cdao = CommunityDAO.getInstance();
//		BoardDAO bdao = BoardDAO.getInstance();
//		int answerboard_check = dao.count_answer(email);
//		int community_check = cdao.count_community(email);
//		int media_check = service.count_media_comment(email);
//		int unread = answerboard_check + media_check + community_check;
//		System.out.println("댓글중 확인안된것  : " + media_check + "개");
//		// 만약 안읽은게 있다면 리스트를 생성해서 알림에 뿌려주자
//		List<mediaVO> unchecked_media_list = null;
//		List<boardVO> unchecked_board_list = null;
//		List<Community_CommentVO> unchecked_community_list = null;
//		if (answerboard_check != 0) {
//			unchecked_board_list = bdao.selectUserAnswerBoards(email);
//		}
//		if (media_check != 0) {
//			unchecked_media_list = service.load_mypost_media(email);
//		}
//		if (community_check != 0) {
//			unchecked_community_list = cdao.load_mypost_community(email);
//		}
//
//		MemberVO vvo = dao.kakao_getMeber(email);
//		session = request.getSession();
//		session.setAttribute("loginUser", vvo);
//		session.setAttribute("unchecked", unread);
//		session.setAttribute("media_list", unchecked_media_list);
//		session.setAttribute("board_list", unchecked_board_list);
//		session.setAttribute("community_list", unchecked_community_list);
//		System.out.println("미확인 메세지 : " + unread);

		List<mediaVO> vo = service.load_medialist();
		session.setAttribute("medialist", vo);
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}
