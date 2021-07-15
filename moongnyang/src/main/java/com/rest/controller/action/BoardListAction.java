package com.rest.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.OracleMyBatisService;
import vo.VisitVo;

public class BoardListAction implements Action {

	private static OracleMyBatisService service = new OracleMyBatisService();

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		List<VisitVo> list = service.selectList_board();
		request.setAttribute("list", list);

	}

	public static void main(String[] args) {

		List<VisitVo> list = service.selectList_board();

		for (VisitVo item : list) {
			System.out.println("-------------------------------");
			System.out.println("유저 id : " + item.getUser_id());
			System.out.println("유저 name : " + item.getUser_name());
			System.out.println("게시판 제목 : " + item.getB_title());
			System.out.println("게시글 내용 : " + item.getB_content());
			System.out.println("-------------------------------");
		}
	}

}
