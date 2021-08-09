package com.media.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.media.dto.mediaVO;

public class add_comment_Action extends HttpServlet implements Action {

	private static final long serialVersionUID = 1L;

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		System.out.println("여긴접속함");
		mediaVO vo = new mediaVO();
		vo.setUser_email_media(request.getParameter("email"));
		vo.setNum_media(Integer.valueOf(request.getParameter("num")));
		vo.setComment_content(request.getParameter("comment_content"));
		System.out.println(request.getParameter("comment_content"));
		service.add_comment(vo);
		new view_media_Action().execute(request, response);
	}
}
