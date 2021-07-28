package com.health.controller.action;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

public class Health_placeDips_Action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String jsonData = request.getParameter("jsonData");

		if (jsonData != null && jsonData.trim().length() != 0) {
			try {
				JSONObject jo = (JSONObject) new JSONParser().parse(jsonData);

				Map<String, Object> map = new HashMap<String, Object>();
				map.put("email", jo.get("email").toString());
				map.put("idx", Integer.parseInt(jo.get("idx").toString()));
				map.put("state", jo.get("state").toString());

				System.out.println(jo.get("email").toString());
				System.out.println(Integer.parseInt(jo.get("idx").toString()));
				System.out.println(jo.get("state").toString());

				int placedips = service.updatePlaceDips(map); // 장소에 찜 cnt
				int userdips = service.controlUserDips(map); // 유저별 장소 찜 추가

				if (placedips > 0 && userdips > 0) { // 업뎃 완료

					int rs = service.getPlaceDips(map);
					response.getWriter().write(String.valueOf(rs));
				} else {
					response.getWriter().write("null");
				}
			} catch (ParseException e) {
				e.printStackTrace();
			}
		}
	}
}
