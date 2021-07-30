package com.picnic.controller.action;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.picnic.dto.PicnicVO;


public class Cafe_View_Action implements Action {
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "picnic/cafe/cafe_view.jsp";
		
		PicnicVO pVo = new PicnicVO();
		pVo.setPlace_name(request.getParameter("place_name"));
		pVo.setAddress_name(request.getParameter("address_name"));
		pVo.setRoad_address_name(request.getParameter("road_address_name"));
		pVo.setPhone(request.getParameter("phone"));
		pVo.setX(request.getParameter("x"));
		pVo.setY(request.getParameter("y"));
		pVo.setKey(request.getParameter("id"));
		pVo.setCategory_code(request.getParameter("category_group_code"));
		
		System.out.println("view1");
		System.out.println(pVo.getKey());
		System.out.println("view2");
		service.picnic_Update_Insert(pVo);
		System.out.println("view3");
		PicnicVO rs = service.picnic_Select(pVo.getKey());
		System.out.println("view4");
		request.setAttribute("rs", rs);
		

		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}