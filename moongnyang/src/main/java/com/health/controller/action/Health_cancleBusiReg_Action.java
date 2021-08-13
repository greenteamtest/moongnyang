package com.health.controller.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import com.health.dto.HealthPlaceVo;

public class Health_cancleBusiReg_Action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		String jsonData = request.getParameter("jsonData");

		try {
			JSONObject jo = (JSONObject) new JSONParser().parse(jsonData);

			HealthPlaceVo vo = new HealthPlaceVo();

			vo.setPlace_list_idx(Integer.parseInt(jo.get("idx").toString()));
			vo.setUser_email(jo.get("email").toString());

			System.out.println(vo.getPlace_list_idx());
			System.out.println(vo.getUser_email());

			int rs1 = service.cancleBusiReg_INFO(vo);
			int rs2 = service.cancleBusiReg_LIST(vo);

			if (rs1 > 0 && rs2 > 0) {
				response.getWriter().write(String.valueOf(rs1));
			} else {
				response.getWriter().write("null");
			}

		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
