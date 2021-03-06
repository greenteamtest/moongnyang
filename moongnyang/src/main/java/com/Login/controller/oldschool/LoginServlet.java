package com.Login.controller.oldschool;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Login.dao.MemberDAO;
import com.Login.dao.StaffDAO_org;
import com.Login.dto.MemberVO;
import com.Login.dto.StaffVO_org;

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
		String url = "member/login.jsp";
		HttpSession session = request.getSession();
		if (session.getAttribute("loginUser") != null) {
			url = "index.jsp";
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
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
		String url = "member/login.jsp";
		String userid = request.getParameter("email");
		String pwd = request.getParameter("pwd");
		MemberDAO dao = MemberDAO.getInstance();
		StaffDAO_org sdao = StaffDAO_org.getInstance();
		StaffVO_org svo = new StaffVO_org();
		int result = dao.userCheck(userid, pwd);
		int val = sdao.find_timeover(svo);
		if (result == 1) {
			if (val == 1) {
				System.out.println("???????????? ?????????????????????,???????????????");
				List<StaffVO_org> state = sdao.load_state(userid);
				HttpSession session = request.getSession();
				session.setAttribute("stateTimeover", state);
				System.out.println("??????????????????, ???????????????????????? ???????????? ??????");
			}
			MemberVO vo = dao.getMeber(userid);
			HttpSession session = request.getSession();
			session.setAttribute("loginUser", vo);
			request.setAttribute("message", "???????????? ??????????????????!");
			url = "index.jsp";
		} else if (result == 0) {
			request.setAttribute("message", "??????, ??????????????? ??????????????? ???");

		} else if (result == -1) {
			request.setAttribute("message", "?????? ???????????????. ??????????????????!");
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
