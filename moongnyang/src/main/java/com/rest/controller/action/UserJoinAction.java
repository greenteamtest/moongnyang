package com.rest.controller.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.OracleMyBatisService;

public class UserJoinAction implements Action {

	private static OracleMyBatisService service = new OracleMyBatisService();

	private String user_id;
	private String user_pw;
	private String user_name;

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		String url = "visit/join/join.jsp";

		user_id = request.getParameter("user_ID");

		System.out.println("UserJoinAction");

		if (user_id != null) {
			user_pw = request.getParameter("user_PW1");
			user_name = request.getParameter("user_name");

			Map<String, Object> map = new HashMap<String, Object>();
			map.put("user_id", user_id);
			map.put("user_pw", user_pw);
			map.put("user_name", user_name);

			int rs = service.insert_info(map);

			if (rs > 0) {
				System.out.println("회원가입완료");
				out.print(
						"<script> alert('회원가입 완료 !'); location.href='controller.do?command=BoardListAction'; </script>  ");
			} else {
				System.out.println("회원가입실패");
				out.print(
						"<script> alert('회원가입 실패 !'); location.href='controller.do?command=UserJoinAction'; </script>  ");
			}
		} else {
			RequestDispatcher disp = request.getRequestDispatcher(url);
			disp.forward(request, response);
		}

	}

	public static void main(String[] args) {

		String user_id = "chl123";
		String user_pw = "1234";
		String user_name = "최반장";

		System.out.println("딸기");

		Map<String, Object> map = new HashMap<String, Object>();

		map.put("user_id", user_id);
		map.put("user_pw", user_pw);
		map.put("user_name", user_name);

		System.out.println("사과");

		int rs = service.insert_info(map);

		System.out.println("포도");
		System.out.println(rs);

		if (rs > 0) {
			System.out.println("회원가입 완료 ! ");
		} else {
			System.out.println("회원가입 완료 ! ");
		}

	}
}
