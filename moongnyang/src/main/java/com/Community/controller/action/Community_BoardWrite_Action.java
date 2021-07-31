package com.Community.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Community.dao.CommunityDAO;
import com.Community.dto.CommunityVO;

public class Community_BoardWrite_Action implements Community_Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		CommunityVO cVO = new CommunityVO();

		/* 수정해야함 !!! 이메일 세션값! */
		cVO.setUser_email("email테스트용"); // 유저 이메일 - 글쓴이

		cVO.setTitle(request.getParameter("title")); // 제목
		cVO.setContents(request.getParameter("contents")); // 내용

		// animal_tag와 board_tag는 숫자로 변환 과정 거쳐야 함....
		// animal_tag의 스트링 값 integer로 변환하기
		if (request.getParameter("animal_tag") == "강아지") {// 강아지 값 선택했을 경우
			cVO.setAnimal_tag(1);
		} else if (request.getParameter("animal_tag") == "고양이") { // 강아지 값 선택했을 경우
			cVO.setAnimal_tag(2);
		} else { // 기타 선택했을 경우
			cVO.setAnimal_tag(0);
		}
	
		// board_tag의 스트링 값 integer로 변환하기 - 이 중에 하나로 저장 됨
		if (request.getParameter("board_tag") == "일상공유") {// 강아지 값 선택했을 경우
			cVO.setBoard_tag(1);
		} else if (request.getParameter("board_tag") == "제품추천") { // 강아지 값 선택했을 경우
			cVO.setBoard_tag(2);
		} else if (request.getParameter("board_tag") == "벼룩시장") { // 강아지 값 선택했을 경우
			cVO.setBoard_tag(3);
		} else if (request.getParameter("board_tag") == "궁금해요") { // 강아지 값 선택했을 경우
			cVO.setBoard_tag(4);
		} else { // 기타 선택했을 경우
			cVO.setBoard_tag(0);
		}

		CommunityDAO cDAO = CommunityDAO.getInstance();
		cDAO.insertBoard(cVO);

		new Community_BoardList_Action().execute(request, response);

	}

}
