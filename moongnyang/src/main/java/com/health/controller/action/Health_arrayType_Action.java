package com.health.controller.action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import com.health.dto.HealthPlaceVo;

public class Health_arrayType_Action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String jsonData = request.getParameter("jsonData");
		List<HealthPlaceVo> place = new ArrayList<HealthPlaceVo>();

		if (jsonData != null && jsonData.trim().length() != 0) {
			try {
				JSONObject jo = (JSONObject) new JSONParser().parse(jsonData);

				String type = jo.get("type").toString();
				
				place = service.selectPlaceListForArrayType(type);

				response.getWriter().write(JSONArray.toJSONString(place));
			} catch (ParseException e) {
				e.printStackTrace();
			}
		}
	}
}
