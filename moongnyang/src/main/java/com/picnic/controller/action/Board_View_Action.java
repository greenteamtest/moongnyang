package com.picnic.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.picnic.dto.PicnicVO;

public class Board_View_Action implements Action {
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "picnic/cafe/board_view.jsp";
		String key = null;

		PicnicVO pVo = new PicnicVO();
		pVo.setName(request.getParameter("place_name"));
		pVo.setPlace(request.getParameter("address_name"));
		pVo.setRoad_place(request.getParameter("road_address_name"));
		pVo.setPhone(request.getParameter("phone"));
		pVo.setX(request.getParameter("x"));
		pVo.setY(request.getParameter("y"));
		pVo.setKey(request.getParameter("id"));
		key = request.getParameter("id");
		pVo.setCategory(request.getParameter("category_group_code"));
		service.picnic_Update_Insert(pVo);

		PicnicVO vo = service.picnic_Select(key);
		PicnicVO voF = service.image_Select(key);
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
				vo.setFile_name2("test1.jpg");
			}
			if (voF.getFile_name3() != null) {
				vo.setFile_name3(voF.getFile_name3());
			} else {
				vo.setFile_name3("test2.jpg");
			}
			if (voF.getFile_name4() != null) {
				vo.setFile_name4(voF.getFile_name4());
			} else {
				vo.setFile_name4("test3.jpg");
			}
		}else {
			vo.setFile_name1("test.jpg");
			vo.setFile_name2("test1.jpg");
			vo.setFile_name3("test2.jpg");
			vo.setFile_name4("test3.jpg");
		}
		List<PicnicVO> list = service.picnic_Select2(key);

		request.setAttribute("vo", vo);
		request.setAttribute("list", list);

		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}