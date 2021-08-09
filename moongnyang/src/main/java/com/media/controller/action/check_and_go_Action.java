package com.media.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.media.dto.mediaVO;

public class check_and_go_Action extends HttpServlet implements Action {

	private static final long serialVersionUID = 1L;

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		mediaVO vo = new mediaVO();
		vo.setComment_email_media(request.getParameter("email"));
		vo.setNum_media(Integer.parseInt(request.getParameter("num")));
		service.check_comment(vo);

		new view_media_Action().execute(request, response);

	}
}
