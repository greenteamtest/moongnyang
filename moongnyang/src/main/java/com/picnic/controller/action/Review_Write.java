package com.picnic.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Review_Write implements Action{
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		service.picnic_Write();
	//	RequestDispatcher dispatcher = request.getRequestDispatcher(url);
	//	dispatcher.forward(request, response);
	}
}
