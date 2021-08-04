package com.picnic.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.picnic.dto.PicnicVO;

public class Review_Delete implements Action{
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		String url = "picnic/cafe/cafe_view.jsp";
		int num = Integer.parseInt(request.getParameter("num"));
		service.picnic_Delete(num);
		
		PicnicVO pVo = service.picnic_Select(request.getParameter("key"));
		List<PicnicVO> list =  service.picnic_Select2(request.getParameter("key"));
		request.setAttribute("vo", pVo);
		request.setAttribute("list", list);
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}
