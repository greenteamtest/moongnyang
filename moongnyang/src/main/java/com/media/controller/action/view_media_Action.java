package com.media.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.media.dto.mediaVO;

public class view_media_Action extends HttpServlet implements Action {

	private static final long serialVersionUID = 1L;

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		HttpSession session = request.getSession();
		String url = "media/detail.jsp";
		System.out.println("상세보기진입");
		List<mediaVO> comment = service.load_comment(Integer.parseInt(request.getParameter("num")));
		mediaVO vo = service.select_media(Integer.parseInt(request.getParameter("num")));
		session.setAttribute("media", vo);
		session.setAttribute("comment", comment);
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}
