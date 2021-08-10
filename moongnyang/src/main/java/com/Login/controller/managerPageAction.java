package com.Login.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Login.controller.action.Action;

public class managerPageAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = "member/manage/managerPage.jsp";

		service.count_total_user(); // 총인원 합산(직원 + 회원 + 카카오유저)
		service.count_end_user(); // 회원합산 + 카카오유저
		service.count_busi_user(); // 사업자수
//		service.count_total_post(); // 총글수 (미디어, 커뮤니티, 헬스앤에듀, 피크닉 리뷰)
		service.count_total_media(); // 미디어 글 수
		service.count_total_community(); // 커퓨미니 글 수
		service.count_total_community(); // 커퓨미니 글 수
		picnic_service.count_picnic_comment(); // 커퓨미니 글 수
		health_service.selectCntTotReview(); // 커퓨미니 글 수

		request.setAttribute("nowdate", new SimpleDateFormat("yyyy년 MM월dd일").format(new Date()));

		request.setAttribute("totaluser", service.count_total_user());
		request.setAttribute("enduser", service.count_end_user());
		request.setAttribute("busiuser", service.count_busi_user());
		request.setAttribute("totalpost", service.count_total_media() + service.count_total_community()
				+ picnic_service.count_picnic_comment() + health_service.selectCntTotReview());
		request.setAttribute("media", service.count_total_media());
		request.setAttribute("community", service.count_total_community());
		request.setAttribute("picnic", picnic_service.count_picnic_comment());
		request.setAttribute("health", health_service.selectCntTotReview());
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
