package com.health.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

public class Health_reflectEachAvgRating_Action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String jsonData = request.getParameter("jsonData");
		double avgRating = 0;

		if (jsonData != null && jsonData.trim().length() != 0) {
			try {
				JSONObject jo = (JSONObject) new JSONParser().parse(jsonData);

				avgRating = service.selectPlaceAvgRating(Integer.parseInt(jo.get("idx").toString()));

				response.getWriter().write(String.valueOf(avgRating));
			} catch (ParseException e) {
				e.printStackTrace();
			}
		}
	}
}
