package com.picnic.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.picnic.dto.PicnicVO;

public class Review_Write_Action implements Action{
	public void execute(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException{
		String url = "picnic/cafe/board_view.jsp";
		
		PicnicVO vo = new PicnicVO();
		vo.setKey(request.getParameter("key"));
		vo.setUser_email(request.getParameter("email"));
		vo.setComment_content(request.getParameter("content_re"));
		System.out.println(vo.getKey());
		System.out.println(vo.getUser_email());
		System.out.println(vo.getComment_content());
		service.picnic_Write(vo);
		
		PicnicVO pVo = service.picnic_Select(request.getParameter("key"));
		List<PicnicVO> list =  service.picnic_Select2(request.getParameter("key"));
		request.setAttribute("vo", pVo);
		request.setAttribute("list", list);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}
