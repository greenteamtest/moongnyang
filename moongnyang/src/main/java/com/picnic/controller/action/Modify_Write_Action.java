package com.picnic.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.picnic.dto.PicnicVO;

public class Modify_Write_Action implements Action {
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "picnic/cafe/search_kakao.jsp";
		
		PicnicVO vo = new PicnicVO();
		vo.setName(request.getParameter("name"));
		vo.setPlace(request.getParameter("address"));
		vo.setRoad_place(request.getParameter("RAddress"));
		vo.setPhone(request.getParameter("phone"));
		vo.setList_content(request.getParameter("list_content"));
		vo.setFileNm1(request.getParameter("file1"));
		vo.setFileNm2(request.getParameter("file2"));
		vo.setFileNm3(request.getParameter("file3"));
		vo.setFileNm4(request.getParameter("file4"));
		vo.setKey(request.getParameter("key"));
		service.board_Update(vo);
		

		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}
