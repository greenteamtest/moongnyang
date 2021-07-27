package com.Login.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Login.controller.action.Action;
import com.Login.dao.BoardDAO;
import com.Login.dto.boardVO;

public class userPageconversationUploadAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("고객의 소통 액션");

		boardVO vo = new boardVO();
		vo.setEmail(request.getParameter("email"));
		vo.setKeyword(request.getParameter("customerconversationSelect"));
		System.out.println(request.getParameter("customerconversationSelect"));
		vo.setContent(request.getParameter("customerconversationtextarea"));
		BoardDAO dao = BoardDAO.getInstance();
		dao.insertConversationUploadBoard(vo);
		new userPageAction().execute(request, response);
		System.out.println("success update conversation");

		new userPageAction();
	}

}
