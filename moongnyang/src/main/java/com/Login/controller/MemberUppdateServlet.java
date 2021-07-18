package com.Login.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Login.dao.MemberDAO;
import com.Login.dto.MemberVO;

/**
 * Servlet implementation class MemberUppdateServlet
 */
@WebServlet("/memberUpdate.do")
public class MemberUppdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MemberUppdateServlet() {
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
		String userid = request.getParameter("userid");

		MemberDAO dao = MemberDAO.getInstance();
		MemberVO vo = dao.getMeber(userid);
		request.setAttribute("vo", vo);
		RequestDispatcher dispatcher = request.getRequestDispatcher("member/memberUpdate.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		String nickname = request.getParameter("nickname");
		String pwd = request.getParameter("pwd");
		String email = request.getParameter("email");
		String auth = request.getParameter("auth");

		MemberVO vo = new MemberVO();
		vo.setNickname(nickname);
		vo.setPwd(pwd);
		vo.setEmail(email);
		vo.setAuth(Integer.parseInt(auth));

		MemberDAO dao = MemberDAO.getInstance();

		dao.updateMember_userVer(vo);
		response.sendRedirect("login.do");
	}
}
