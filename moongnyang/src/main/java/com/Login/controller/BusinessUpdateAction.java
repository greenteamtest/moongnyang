package com.Login.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Login.controller.action.Action;
import com.Login.dao.BoardDAO;
import com.Login.dto.boardVO;

public class BusinessUpdateAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		boardVO vo = new boardVO();
		vo.setEmail(request.getParameter("email"));
		vo.setContent(request.getParameter("content"));
		BoardDAO dao = BoardDAO.getInstance();
		System.out.println("이건된건가??");
		dao.insertBusinessUpdateBoard(vo);
		new userPageAction().execute(request, response);
	}

}
