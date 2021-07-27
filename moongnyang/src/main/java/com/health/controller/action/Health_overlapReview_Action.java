package com.health.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import com.health.dto.HealthReviewVo;

public class Health_overlapReview_Action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String jsonData = request.getParameter("jsonData");
		List<HealthReviewVo> review = null;

		if (jsonData != null && jsonData.trim().length() != 0) {
			try {
				JSONObject jo = (JSONObject) new JSONParser().parse(jsonData);

				HealthReviewVo vo = new HealthReviewVo();
				vo.setPlace_list_id(Integer.parseInt(jo.get("idx").toString()));
				vo.setUser_email(jo.get("email").toString());

				review = service.checkOverlapReview(vo);
				System.out.println(jo.get("idx").toString());
				System.out.println("review.size ? :" + review.size());

				if (review.size() > 0) {
					response.getWriter().write(String.valueOf(-1));
					System.out.println("딸기");
				} else {
					response.getWriter().write(String.valueOf(0));
				}
			} catch (ParseException e) {
				e.printStackTrace();
			}
		}
	}
}
