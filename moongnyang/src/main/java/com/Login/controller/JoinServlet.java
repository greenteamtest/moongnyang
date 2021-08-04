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
 * Servlet implementation class JoinServlet
 */
@WebServlet("/join.do")
public class JoinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public JoinServlet() {
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
//        response.getWriter().append("Served at: ").append(request.getContextPath());

		RequestDispatcher dispatcher = request.getRequestDispatcher("member/join.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
//        doGet(request, response);
		request.setCharacterEncoding("UTF-8");

		String userEmail = request.getParameter("userEmail");
		String a = "@";
		String selectemail = request.getParameter("selectemail");
		String email = userEmail + a + selectemail;
		String nickname = request.getParameter("nickname");
		String pwd = request.getParameter("pwd");
		System.out.println(email);
		System.out.println(pwd);
		System.out.println(nickname);
		String auth = "0";

		MemberVO vo = new MemberVO();
		vo.setEmail(email);
		vo.setNickname(nickname);
		vo.setPwd(pwd);
		vo.setAuth(Integer.parseInt(auth));

		MemberDAO dao = MemberDAO.getInstance();
		int result = dao.insertMember(vo);

		HttpSession session = request.getSession();

		if (result == 1) {
			session.setAttribute("user_email", vo.getEmail());
			request.setAttribute("message", "회원가입성공!");
		} else {
			request.setAttribute("mesaage", "회원가입실패ㅠ");
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher("member/login.jsp");
		dispatcher.forward(request, response);
	}
}