package com.health.controller.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.health.dto.HealthPlaceVo;

public class Health_businessRegistration_Action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		PrintWriter out = response.getWriter();

		String category = request.getParameter("category");
		String cpName = request.getParameter("company-name");
		String userAdd = request.getParameter("userAddress") + " " + request.getParameter("user-detail-address");
		String phNum = request.getParameter("phoneNumber");
		String[] date = request.getParameterValues("date");
		String pet = request.getParameter("pet_kind");
		String url = request.getParameter("link_url");
		String intro = request.getParameter("introduce");
		String[] st_pt = request.getParameterValues("store_photo");

		String op_t;

		HealthPlaceVo vo = new HealthPlaceVo();
		int rs = 0;
		int result = 0;

		// date 형식
		StringBuilder sb = new StringBuilder();

		switch (date.length) {
		case 3:
			for (int i = 0; i < date.length; i++) {
				sb.append(i == 0 ? date[i] + " " : date[i] + ":00 - ");
			}
			sb.replace(16, sb.length(), "");
			break;

		case 2:
			for (String value : date) {
				sb.append(value + " ");
			}
			break;
		default:
			sb.append(date[0]);
			break;
		}

		op_t = sb.toString();

		for (String string : st_pt) {
			System.out.println("사진 : " + string);
		}

		// -> db
		vo.setCategory_id(category);
		vo.setPlace(cpName);
		vo.setAddress(userAdd);
		vo.setPhone_num(phNum);
		vo.setOpen_time(op_t);
		vo.setPet_kind(pet);
		vo.setSharing_url(url);
		vo.setIntroduce(intro);

		result = service.insert_place_list(vo); // 사업장 신청 -> insert place_list table

		if (result > 0) {
			System.out.println(vo.getPlace_list_idx());
			rs = service.insert_place_info(vo); // -> insert place_info table (with . approve_state = 0 )

			if (rs > 0) {
				System.out.println("사업장 신청 완료");
				out.print(
						"<script> alert('사업자 신청 완료'); location.href='controller.do?command=viewSuccessPage'; </script>  ");
			} else {
				out.print(
						"<script> alert('사업자 신청 실패');  location.href='controller.do?command=viewBusinessPage'; </script>  ");
			}
		}
	}

}
