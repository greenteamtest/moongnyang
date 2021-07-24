package com.health.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import com.health.dto.HealthReviewVo;

public class Health_insertReview_Action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String jsonData = request.getParameter("jsonData");

		int rs = 0;

		if (jsonData != null && jsonData.trim().length() != 0) {
			try {
				JSONObject jo = (JSONObject) new JSONParser().parse(jsonData);

				HealthReviewVo vo = new HealthReviewVo();
				vo.setPlace_list_id(Integer.parseInt(jo.get("idx").toString()));
				vo.setUser_email(jo.get("email").toString());
				vo.setContents(jo.get("contents").toString());
				vo.setMy_rating(Integer.parseInt(jo.get("my_rating").toString()));

				System.out.println(vo.getPlace_list_id());
				System.out.println(vo.getUser_email());
				System.out.println(vo.getContents());
				System.out.println(vo.getMy_rating());

				rs = service.insert_review(vo);

				if (rs > 0) {
					System.out.println("rs ? :" + rs);
					response.getWriter().write(rs);
				} else {
					response.getWriter().write("null");
				}
			} catch (ParseException e) {
				e.printStackTrace();
			}
		}
	}
}
