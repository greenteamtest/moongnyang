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
		String str = "";
		
		PicnicVO pVo = new PicnicVO();
		pVo.setPlace_name(request.getParameter("place_name"));
		pVo.setAddress_name(request.getParameter("address_name"));
		pVo.setRoad_address_name(request.getParameter("road_address_name"));
		pVo.setPhone(request.getParameter("phone"));
		pVo.setX(request.getParameter("x"));
		pVo.setY(request.getParameter("y"));
		pVo.setKey(request.getParameter("id"));
		pVo.setCategori_code(request.getParameter("categori_group_code"));
		System.out.println(pVo.getKey());
		PicnicVO rs = service.picnic_Select(pVo.getKey());
		if(rs == null) {
			int rs2 = service.picnic_Update_Insert(pVo);
			if(rs2 > 0) {
				System.out.println("DB저장");
			}else {
				System.out.println("DB저장 실패");
			}
			rs = service.picnic_Select(str);
		}	
		request.setAttribute("rs", rs);
		

		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}