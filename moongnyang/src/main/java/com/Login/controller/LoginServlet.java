package com.Login.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Login.dao.MemberDAO;
import com.Login.dto.MemberVO;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login.do")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginServlet() {
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
		String url = "/member/login.jsp";
		HttpSession session = request.getSession();
		if (session.getAttribute("loginUser") != null) {
			url = "/member/main.jsp";
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
	

	/**F
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		String url = "/member/login.jsp";

		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");
		MemberDAO dao = MemberDAO.getInstance();
		int result = dao.userCheck(email, pwd);

		if (result == 1) {
			MemberVO vo = dao.getMeber(email);
			HttpSession session = request.getSession(true);
			session.setAttribute("loginUser", vo);
			request.setAttribute("message", "회원가입에 성공했습니다.");
			url = "/member/main.jsp";
		} else if (result == 0) {
			request.setAttribute("message", "이런.. 비밀번호가 맞지않네요 ㅠ");

		} else if (result == -1) {
			request.setAttribute("message", "앗, 존재하지 않는 회원이라네요. 다시 한번 확인부탁드려용");
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
