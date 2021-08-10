package com.health.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Health_businessRegistration_Action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String cpName = request.getParameter("company-name");
		String userAdd = request.getParameter("userAddress");
		String detAdd = request.getParameter("user-detail-address");
		String phNum = request.getParameter("phoneNumber");
		String date = request.getParameter("date");
		String op_t = request.getParameter("open_time");
		String ed_t = request.getParameter("end_time");
		String allD = request.getParameter("all-day");
		String pet = request.getParameter("pet_kind");
		String url = request.getParameter("link_url");
		String intro = request.getParameter("introduce");
		String[] st_pt = request.getParameterValues("store_photo");

		System.out.println(cpName);
		System.out.println(userAdd);
		System.out.println(detAdd);
		System.out.println(phNum);
		System.out.println(date);
		System.out.println(op_t);
		System.out.println(ed_t);
		System.out.println(allD);
		System.out.println(pet);
		System.out.println(url);
		System.out.println(intro);

		for (String string : st_pt) {
			System.out.println(string);
		}

		response.sendRedirect("controller.do?command=viewBusinessPage");

	}

}
