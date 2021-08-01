
package com.Community.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Community.controller.action.Community_Action;

@WebServlet("/Community_BoardServlet")
public class Community_BoardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Community_BoardServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String command = request.getParameter("command");
		System.out.println("Community_BoardServlet에서 요청을 받음을 확인 : " + command);

		// Community_ActionFactory에서 만든 함수 추가
		Community_ActionFactory caf = Community_ActionFactory.getInstance();
		Community_Action action = caf.getAction(command);

		if (action != null) {
			action.execute(request, response);
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
	}

}