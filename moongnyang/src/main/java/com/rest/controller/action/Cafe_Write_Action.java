package com.rest.controller.action;

import java.io.File;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.rest.dto.BoardDAO;
import com.rest.vo.BoardVO;

public class Cafe_Write_Action extends HttpServlet implements Action {
	private static final long serialVersionUID = 1L;

	protected void forward(HttpServletRequest request, HttpServletResponse response, String url)
			throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher(url);
		rd.forward(request, response);
	}

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String cp = request.getContextPath();
		String uri = request.getRequestURI();
		String url;

		String root = getServletContext().getRealPath("/");
		String path = root + File.separator + "pds" + File.separator + "imageFile";
		File f = new File(path);
		if (!f.exists()) {
			f.mkdirs();
		}
		String encType = "UTF-8";
		int maxSize = 50 * 1024; // 50Kbyte
		MultipartRequest mr = new MultipartRequest(request, path, maxSize, encType, new DefaultFileRenamePolicy());
		if (mr.getFile("uploadFile") != null) {
			BoardVO bVo = new BoardVO();

			System.out.println(request.getParameter("id"));
			bVo.setId(request.getParameter("id"));
			bVo.setTitle(request.getParameter("title"));
			bVo.setSaveFileName(mr.getFilesystemName("uploadFile"));
			bVo.setContent(request.getParameter("content"));
			BoardDAO bDao = BoardDAO.getInstance();
			bDao.insertBoard(bVo);
		}

		new Cafe_List_Action().execute(request, response);
	}
}
