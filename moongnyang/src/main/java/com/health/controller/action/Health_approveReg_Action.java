package com.health.controller.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Health_approveReg_Action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String[] arr = request.getParameterValues("param");
		String key = request.getParameter("key");
		int[] arrInt;
		int rs = 0;

		System.out.println("key ? " + key);
		System.out.println(arr[0]);

		arr = arr[0].split(",");
		arrInt = new int[arr.length];

		for (int i = 0; i < arr.length; i++) {
			arrInt[i] = Integer.parseInt(arr[i]);
			System.out.println(arrInt[i]);
		}

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("arrIdx", arrInt);
		map.put("key", key);
		rs = service.apprRegApplication(map);

		if (rs > 0) {
			out.print(
					"<script> alert('사업장 신청 업데이트 완료'); location.href='mypageServlet?command=managerPageBusi'; </script>  ");
		} else {
			out.print(
					"<script> alert('사업자 신청 업데이트 실패');  location.href='mypageServlet?command=managerPageBusi'; </script>  ");
		}

	}

}
