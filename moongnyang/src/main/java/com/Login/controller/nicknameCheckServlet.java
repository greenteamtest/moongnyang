package com.Login.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Login.dao.MemberDAO;

/**
 * Servlet implementation class idCheckServlet
 */
@WebServlet("/nicknameCheck.do")
public class nicknameCheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public nicknameCheckServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		request.setCharacterEncoding("UTF-8");

		String nickname = request.getParameter("nickname");
		System.out.println("서블릿 : " + nickname);
		MemberDAO mDao = MemberDAO.getInstance();
		int result = mDao.confirmNickname(nickname);
		request.setAttribute("nickname", nickname);
		request.setAttribute("result", result);
		RequestDispatcher dispatcher = request.getRequestDispatcher("member/nicknameCheck.jsp");
		dispatcher.forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);

//		String email_non = request.getParameter("userEmail");
//		String email_a = "@";
//		String site = request.getParameter("selectemail");
//		String email = email_non + email_a + site;
//		String email = request.getParameter("user_email");
//		System.out.println(email);
//		MemberDAO dao = MemberDAO.getInstance();
//
//		int result = dao.confirmEmail(email);
//		if (result == 1) {
//			request.setAttribute("message", "중복된 이메일이에요");
//		} else if (result == -1) {
//			request.setAttribute("message", "가입가능한 이메일이에요");
//		}
//
//		request.setAttribute("useremail", email);
//		RequestDispatcher dispatcher = request.getRequestDispatcher("member/emailCheck.jsp");
//		dispatcher.forward(request, response);
	}
}
