package com.picnic.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.picnic.dto.PicnicVO;


public class Cafe_View_Action implements Action {
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "picnic/cafe/cafe_view.jsp";
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
		List<PicnicVO> list =  service.picnic_Select2(key);

		request.setAttribute("vo", vo);
		request.setAttribute("list", list);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}