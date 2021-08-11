package com.health.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.health.dto.HealthPlaceVo;

public class Health_businessRegStatus_Action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String email = request.getParameter("email");
		System.out.println(email);
		List<HealthPlaceVo> list = null;

		list = service.selectMyRegStatus(email);

		request.setAttribute("status", list);

		RequestDispatcher disp = request.getRequestDispatcher("health&edu/business/business_reg_status.jsp");
		disp.forward(request, response);

	}

}
