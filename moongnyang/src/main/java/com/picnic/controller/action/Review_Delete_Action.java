package com.picnic.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.picnic.dto.PicnicVO;

public class Review_Delete_Action implements Action{
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		String url = "picnic/cafe/board_view.jsp";
		int num = Integer.parseInt(request.getParameter("num"));
		service.picnic_Delete(num);
		
		PicnicVO vo = service.picnic_Select(request.getParameter("key"));
		PicnicVO voF = service.image_Select(request.getParameter("key"));
		//String savePath = request.getSession().getServletContext().getRealPath("/upload");
		if (voF != null) {
			if (voF.getFile_name1() != null) {
				vo.setFile_name1(voF.getFile_name1());
			} else {
				vo.setFile_name1("test.jpg");
			}
			if (voF.getFile_name2() != null) {
				vo.setFile_name2(voF.getFile_name2());
			} else {
				vo.setFile_name2("test.jpg");
			}
			if (voF.getFile_name3() != null) {
				vo.setFile_name3(voF.getFile_name3());
			} else {
				vo.setFile_name3("test.jpg");
			}
			if (voF.getFile_name4() != null) {
				vo.setFile_name4(voF.getFile_name4());
			} else {
				vo.setFile_name4("test.jpg");
			}
		}else {
			vo.setFile_name1("test.jpg");
			vo.setFile_name2("test.jpg");
			vo.setFile_name3("test.jpg");
			vo.setFile_name4("test.jpg");
		}
		List<PicnicVO> list =  service.picnic_Select2(request.getParameter("key"));
		request.setAttribute("vo", vo);
		request.setAttribute("list", list);
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}
