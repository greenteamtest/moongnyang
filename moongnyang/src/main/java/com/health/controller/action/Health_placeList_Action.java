package com.health.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import com.health.dto.HealthPlaceVo;

public class Health_placeList_Action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String jsonData = request.getParameter("jsonData");
		List<HealthPlaceVo> place = null;

		if (jsonData != null && jsonData.trim().length() != 0) {
			try {
				JSONObject jo = (JSONObject) new JSONParser().parse(jsonData);
				place = service.selectPlace_List(jo.get("idx").toString());

				if (place.size() != 0) {
					String rs = JSONArray.toJSONString(place);
					response.getWriter().write(rs);
				}
			} catch (ParseException e) {
				e.printStackTrace();
			}
		} else {
			place = service.selectPlace_List(request.getParameter("key"));

			if (place.size() != 0) {
				String url = "health&edu/place/place_list.jsp";
				request.setAttribute("place", place);
				RequestDispatcher disp = request.getRequestDispatcher(url);
				disp.forward(request, response);
			}
		}
	}
}
