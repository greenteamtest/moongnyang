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
			if (voF.getFileNm1() != null) {
				vo.setFileNm1(voF.getFileNm1());
			}
			if (voF.getFileNm2() != null) {
				vo.setFileNm2(voF.getFileNm2());
			}
			if (voF.getFileNm3() != null) {
				vo.setFileNm3(voF.getFileNm3());
			}
			if (voF.getFileNm4() != null) {
				vo.setFileNm4(voF.getFileNm4());
			}
		}

		request.setAttribute("vo", vo);

		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}
