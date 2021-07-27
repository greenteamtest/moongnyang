package com.health.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import com.health.dto.HealthReviewVo;

public class Health_reviseReview_Action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String jsonData = request.getParameter("jsonData");
		int result = 0;

		if (jsonData != null && jsonData.trim().length() != 0) {
			try {
				JSONObject jo = (JSONObject) new JSONParser().parse(jsonData);

				HealthReviewVo vo = new HealthReviewVo();
				vo.setPlace_list_id(Integer.parseInt(jo.get("idx").toString()));
				vo.setUser_email(jo.get("email").toString());
				vo.setContents(jo.get("contents").toString());
				vo.setMy_rating(Integer.valueOf(jo.get("my_rating").toString()));

				result = service.reviseReview(vo);

				if (result > 0) {
					response.getWriter().write(String.valueOf(0));
				} else {
					response.getWriter().write(String.valueOf(-1));
				}
			} catch (ParseException e) {
				e.printStackTrace();
			}
		}
	}
}
