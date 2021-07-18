package com.health.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.health.dto.HealthPlaceVo;

public class Health_placeList_Action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		List<HealthPlaceVo> place = service.selectPlace_List(request.getParameter("key"));

		request.setAttribute("place", place);

		RequestDispatcher disp = request.getRequestDispatcher("health&edu/place/place_list.jsp");
		disp.forward(request, response);

	}
}
