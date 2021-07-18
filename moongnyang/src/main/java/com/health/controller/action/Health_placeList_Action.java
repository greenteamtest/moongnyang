package com.health.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.health.dto.HealthVo;

public class Health_placeList_Action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		// List<VisitVo> list = VisitTestDao.getInstence().selectList_board();

		List<HealthVo> list = service.selectList_board();
		request.setAttribute("list", list);

		RequestDispatcher disp = request.getRequestDispatcher("visit/list/list.jsp");
		disp.forward(request, response);
	}
}
