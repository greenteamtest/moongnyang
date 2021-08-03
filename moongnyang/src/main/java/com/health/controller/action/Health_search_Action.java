package com.health.controller.action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import com.health.dto.HealthPlaceVo;

public class Health_search_Action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String jsonData = request.getParameter("jsonData");
		List<HealthPlaceVo> searchContainer = new ArrayList<HealthPlaceVo>();
		List<HealthPlaceVo> searchingFeild = null;

		if (jsonData != null && jsonData.trim().length() != 0) {
			try {
				JSONObject jo = (JSONObject) new JSONParser().parse(jsonData);
				Map<String, String> map = new HashMap<String, String>();
				map.put("keyword", jo.get("keyword").toString());
				map.put("field", "place");
				searchingFeild = service.selectIdxForSearchingKeyword(map);

				for (HealthPlaceVo vo : searchingFeild) { // place field idx container (first)
					searchContainer.add(vo); // place_list_idx
				}

				map.replace("field", "place", "address");
				searchingFeild = service.selectIdxForSearchingKeyword(map);
				searchContainer = getIdxPerSearching(searchContainer, searchingFeild);

				map.replace("field", "address", "introduce");
				searchingFeild = service.selectIdxForSearchingKeyword(map);
				searchContainer = getIdxPerSearching(searchContainer, searchingFeild);

				map.replace("field", "introduce", "pet_kind");
				searchingFeild = service.selectIdxForSearchingKeyword(map);
				searchContainer = getIdxPerSearching(searchContainer, searchingFeild);

				response.getWriter().write(JSONArray.toJSONString(searchContainer));

			} catch (ParseException e) {
				e.printStackTrace();
			}
		}
	}

	List<HealthPlaceVo> getIdxPerSearching(List<HealthPlaceVo> searchContainer, List<HealthPlaceVo> searchingFeild) {
		for (HealthPlaceVo vo : searchingFeild) {
			boolean flag = false;
			for (HealthPlaceVo item : searchContainer) {
				if (item.getIdx() == vo.getIdx()) {
					flag = !flag;
				}
			}
			if (!flag) {
				searchContainer.add(vo);
			}
		}
		return searchContainer;
	}

}
