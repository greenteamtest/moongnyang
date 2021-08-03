package com.media.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.media.dto.mediaVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class uploadmedia_Action extends HttpServlet implements Action {

	private static final long serialVersionUID = 1L;

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "media/mediamain.jsp";
		HttpSession session = request.getSession();
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		ServletContext context = getServletContext();
		String path = context.getRealPath("media/upload");
		String encType = "UTF-8";
		int sizeLimit = 50 * 1024 * 1024;
		mediaVO vo = new mediaVO();
		MultipartRequest multi = new MultipartRequest(request, path, sizeLimit, encType, new DefaultFileRenamePolicy());
		vo.setUser_email_media(multi.getParameter("email"));
		vo.setUser_nick(multi.getParameter("nick"));
		vo.setTitle_media(multi.getParameter("title"));
		vo.setHashtag_media(multi.getParameter("hashtag"));
		vo.setContent_media(multi.getParameter("content"));
		vo.setMediaurl(multi.getParameter("file"));
		service.upload_media(vo);
		List<mediaVO> mVO = service.load_medialist();
		session.setAttribute("medialist", mVO);
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}
