package com.Staff.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Login.controller.staffChangeAction;
import com.Staff.dto.StaffVO;

public class result_timeover_Action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		// TODO Auto-generated method stub
		System.out.println("시간외 근무 종료 액션");
//		String email = request.getParameter("email");
		StaffVO vo = new StaffVO();
		vo.setCheck_timeover(request.getParameter("result"));
		vo.setNum_timeover(Integer.parseInt(request.getParameter("num")));
		service.result_timeover(vo);

		new staffChangeAction().execute(request, response);
	}
}
