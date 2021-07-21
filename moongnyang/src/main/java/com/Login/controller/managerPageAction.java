package com.Login.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Login.controller.action.Action;

public class managerPageAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = "member/manage/managerPage.jsp";
//		String url = "member/managerPage.jsp";

		SimpleDateFormat format = new SimpleDateFormat("yyyy년 MM월dd일");

		Date time = new Date();

		String time1 = format.format(time);

		request.setAttribute("nowdate", time1);
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
