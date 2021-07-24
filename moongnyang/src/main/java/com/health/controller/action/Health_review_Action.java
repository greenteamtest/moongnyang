package com.health.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import com.health.dto.HealthPlaceVo;

public class Health_review_Action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String jsonData = request.getParameter("jsonData");
		List<HealthPlaceVo> review = null;

		if (jsonData != null && jsonData.trim().length() != 0) {
			try {
				JSONObject jo = (JSONObject) new JSONParser().parse(jsonData);
				System.out.println("idx ? : " + jo.get("idx").toString());
				review = service.selectUser_Review(jo.get("idx").toString());

				if (review.size() != 0) {
					String rs = JSONArray.toJSONString(review);
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
