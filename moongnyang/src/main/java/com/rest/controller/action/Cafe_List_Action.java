package com.rest.controller.action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Team.dto.BoardVO;

public class Cafe_List_Action implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "rest/cafe/cafe_list.jsp";

//		BoardDAO bDao = BoardDAO.getInstance();
//		List<BoardVO> cafeList=bDao.selectAllBoards("cafe");

		int num[] = { 1, 2, 3, 4 };
		String id[] = { "hodori", "hodori3", "hodori33", "hodori333" };
		String title[] = { "첫번째", "두번째", "세번째", "네번째" };
		String place[] = { "첫번째 지역", "두번째 지역", "세번째 지역", "네번째 지역" };
		String phone[] = { "첫번째 연락처", "두번째 연락처", "세번째 연락처", "네번째 연락처" };
		String email[] = { "첫번째 이메일", "두번째 이메일", "세번째 이메일", "네번째 이메일" };
		String content[] = { "첫번째 내용", "두번째 내용", "세번째 내용", "네번째 내용" };

		List<BoardVO> list = new ArrayList<BoardVO>();

		for (int i = 0; i < id.length; i++) {
			BoardVO bVo = new BoardVO();
			bVo.setNum(num[i]);
			bVo.setId(id[i]);
			bVo.setReadcount(10);
			bVo.setTitle(title[i]);
			bVo.setPlace(place[i]);
			bVo.setPhone(phone[i]);
			bVo.setEmail(email[i]);
			bVo.setContent(content[i]);
			bVo.setReadcount(0);

			list.add(bVo);
		}

		request.setAttribute("list", list);

		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}
