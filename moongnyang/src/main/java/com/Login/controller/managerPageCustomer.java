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

public class managerPageCustomer implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = "member/manage/managerPageCus.jsp";
		BoardDAO bdao = BoardDAO.getInstance();
		List<boardVO> boardList = bdao.selectAllconversationBoards();
		bdao.select_user_list();
		request.setAttribute("boardList", boardList);
//		List<StaffVO> userList = null;
		bdao.select_user_list();
//		userList = service.All_member_List();
		List<boardVO> userList = bdao.select_user_list();
		request.setAttribute("userList", userList);
		List<boardVO> busiList = bdao.select_busi_list();
		request.setAttribute("busiList", busiList);

		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
