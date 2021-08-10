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
		String str = request.getParameter("select_picnicList");
		String[] result = str.split(",");
		vo.setPlace_key(result[0]);		//업체키값
		vo.setPlace_name(result[1]);	//업체명
		BoardDAO dao = BoardDAO.getInstance();
		dao.insertBusinessUpdateBoard(vo);
		new userPageAction().execute(request, response);
	}

}
