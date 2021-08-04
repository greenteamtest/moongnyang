package com.media.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.media.dao.mediaDAO;
import com.media.dto.mediaVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

/**
 * Servlet implementation class ProductWriteServlet
 */
@WebServlet("/uploadmedia.do")
public class uploadmediaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public uploadmediaServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("product/productWrite.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		ServletContext context = getServletContext();
		String path = context.getRealPath("media/upload");
		String encType = "UTF-8";
		int sizeLimit = 20 * 1024 * 1024;
		MultipartRequest multi = new MultipartRequest(request, path, sizeLimit, encType, new DefaultFileRenamePolicy());
		mediaVO vo = new mediaVO();
		vo.setUser_email_media(multi.getParameter("email"));
		vo.setUser_nick(multi.getParameter("nick"));
		vo.setTitle_media(multi.getParameter("title"));
		vo.setHashtag_media(multi.getParameter("hashtag"));
		vo.setContent_media(multi.getParameter("content"));
		vo.setMediaurl(multi.getFilesystemName("file"));
		System.out.println(multi.getFilesystemName("file"));
		mediaDAO dao = mediaDAO.getInstance();
		dao.insert_media(vo);

		new mediamain_Action().execute(request, response);

	}

}
