package com.Login.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Login.controller.action.Action;
import com.Login.dao.BoardDAO;
import com.Login.dto.boardVO;
import com.health.dto.HealthPlaceVo;

public class managerBusiChangeAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = "member/manage/managerPageBusi.jsp";

		BoardDAO dao = BoardDAO.getInstance();
		List<boardVO> boardList = dao.selectAllBoards();
		System.out.println("이건된건가??");

		request.setAttribute("boardList", boardList);
		System.out.println("요청된건가??");

		// 사업장 신청 현황 가져오기
		List<HealthPlaceVo> li = null;
		li = health_service.selectBuisnessRegStatus();
		request.setAttribute("reg_status", li);

		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
