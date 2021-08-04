package com.picnic.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Review_Delete implements Action{
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		String url = "picnic/cafe/cafe_view.jsp";
		int num = Integer.parseInt(request.getParameter("num"));
		service.picnic_Delete(num);
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}
