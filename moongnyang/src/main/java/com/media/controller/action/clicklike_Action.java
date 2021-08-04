package com.media.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.media.dto.mediaVO;

public class clicklike_Action extends HttpServlet implements Action {

	private static final long serialVersionUID = 1L;

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("여긴접속함");
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		mediaVO vo = new mediaVO();
		vo.setUser_email_media(request.getParameter("email"));
		vo.setNum_media(Integer.valueOf(request.getParameter("num")));
		int rs = service.click_like(vo);
		System.out.println("rs : " + rs);
		if (rs != 0) {
			service.update_like(vo);
		} else {
			System.out.println("이미 좋아요눌렀음!");
		}
		new mediamain_Action().execute(request, response);
	}
}
