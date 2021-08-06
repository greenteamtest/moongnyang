package com.picnic.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.picnic.dto.PicnicVO;

public class Modify_Action implements Action {
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "picnic/cafe/board_write.jsp";
		String key = request.getParameter("key");


		PicnicVO vo = service.picnic_Select(key);
		PicnicVO voF = service.image_Select(key);
		if (voF != null) {
			if (voF.getFile_name1() != null) {
				vo.setFile_name1(voF.getFile_name1());
			}
			if (voF.getFile_name2() != null) {
				vo.setFile_name2(voF.getFile_name2());
			}
			if (voF.getFile_name3() != null) {
				vo.setFile_name3(voF.getFile_name3());
			}
			if (voF.getFile_name4() != null) {
				vo.setFile_name4(voF.getFile_name4());
			}
		}

		request.setAttribute("vo", vo);

		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}
