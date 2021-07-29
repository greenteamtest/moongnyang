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
import com.health.dto.HealthUserDipsVo;

public class Health_placeList_Action implements Action {

	@SuppressWarnings("null")
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String jsonData = request.getParameter("jsonData");
		List<HealthPlaceVo> placeList = null;
		List<HealthUserDipsVo> dipsList = null;

		if (jsonData != null && jsonData.trim().length() != 0) {
			try {
				JSONObject jo = (JSONObject) new JSONParser().parse(jsonData);
				placeList = service.selectPlace_List(jo.get("idx").toString());

				if (placeList.size() != 0) {
					String rs = JSONArray.toJSONString(placeList);
					response.getWriter().write(rs);
				}
			} catch (ParseException e) {
				e.printStackTrace();
			}
		} else {
			String key = request.getParameter("key");
			String email = request.getParameter("email");
			String url = "health&edu/place/place_list.jsp";
			System.out.println("key ? " + key);
			System.out.println("email ? " + email);

			placeList = service.selectPlace_List(key);

			if (placeList.size() != 0) {
				request.setAttribute("placeList", placeList);

				if (email != null && email.trim().length() != 0) {
					System.out.println("이메일 넘어감 ");
					dipsList = service.selectUser_dips(email);
					for (HealthUserDipsVo vo : dipsList) {
						System.out.println(vo.getUser_email());
						System.out.println(vo.getDips_place_list_id());
					}
					request.setAttribute("dipsList", dipsList);
				}

				RequestDispatcher disp = request.getRequestDispatcher(url);
				disp.forward(request, response);
			}

		}
	}
}
