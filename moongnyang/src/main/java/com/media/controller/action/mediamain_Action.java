package com.media.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.media.dto.mediaVO;

public class mediamain_Action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();

		String url = "media/mediamain.jsp";
		System.out.println("미디어 액션");

		List<mediaVO> vo = service.load_medialist();
		session.setAttribute("medialist", vo);
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
//		List<mediaVO> vo = service.load_comment();
//		session.setAttribute("medialist", vo);
	}
}
