package com.health.RestAPI;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

import org.json.JSONArray;
import org.json.JSONObject;

public class PlaceImgAPI {
	static String imgURL = "";

	public static String requestAPI(String place) throws MalformedURLException {

		String clientId = "18TT4JPUGKktkUbZYO7C"; // 애플리케이션 클라이언트 아이디
		String clientSecret = "kwOL_4cXih"; // 애플리케이션 클라이언트 시크릿

		String text = null;
		try {
			text = URLEncoder.encode(place, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			throw new RuntimeException("검색어 인코딩 실패", e);
		}

		String apiURL = "https://openapi.naver.com/v1/search/image.json?query=" + text; // json 결과
		// String apiURL = "https://openapi.naver.com/v1/search/blog.xml?query="+ text;
		// // xml 결과

		Map<String, String> requestHeaders = new HashMap<>();
		requestHeaders.put("X-Naver-Client-Id", clientId);
		requestHeaders.put("X-Naver-Client-Secret", clientSecret);

		get(apiURL, requestHeaders);

		return imgURL;
	}

	private static void get(String apiUrl, Map<String, String> requestHeaders) {
		HttpURLConnection con = connect(apiUrl);
		try {
			con.setRequestMethod("GET");

			// 키 값 노출막기위함 get 방식 x -> 쿼리문은 get param (영화명)
			for (Map.Entry<String, String> header : requestHeaders.entrySet()) {
				con.setRequestProperty(header.getKey(), header.getValue());
			}

			int responseCode = con.getResponseCode();
			if (responseCode == HttpURLConnection.HTTP_OK) { // 정상 호출
				readBody(con.getInputStream());
			} else { // 에러 발생
				readBody(con.getErrorStream());
			}
		} catch (IOException e) {
			throw new RuntimeException("API 요청과 응답 실패", e);
		} finally {
			con.disconnect();
		}
	}

	private static HttpURLConnection connect(String apiUrl) {
		try {
			URL url = new URL(apiUrl);
			return (HttpURLConnection) url.openConnection();
		} catch (MalformedURLException e) {
			throw new RuntimeException("API URL이 잘못되었습니다. : " + apiUrl, e);
		} catch (IOException e) {
			throw new RuntimeException("연결이 실패했습니다. : " + apiUrl, e);
		}
	}

	private static void readBody(InputStream body) {
		InputStreamReader streamReader = new InputStreamReader(body);

		try (BufferedReader lineReader = new BufferedReader(streamReader)) {
			StringBuilder response = new StringBuilder();

			String line;
			while ((line = lineReader.readLine()) != null) {
				response.append(line);
			}

			JSONObject responseBody = new JSONObject(response.toString());
			JSONArray items = null;

			try {
				// 배열 item
				items = responseBody.getJSONArray("items");
				try {
					// 객체 item[0]
					JSONObject itemObj = (JSONObject) items.get(0);
					imgURL = itemObj.get("link").toString();
				} catch (Exception e) {
					// TODO: handle exception
					imgURL = "https://scontent-ssn1-1.xx.fbcdn.net/v/t1.6435-9/42903831_432309343963474_6413044088903303168_n.png?_nc_cat=100&ccb=1-4&_nc_sid=09cbfe&_nc_ohc=UDIgoHuPZO4AX_7uynE&_nc_ht=scontent-ssn1-1.xx&oh=747407ed2904254ff3019013cf8a588e&oe=61385DC8";
				}

			} catch (Exception e) {
				// TODO: handle exception
				imgURL = "https://scontent-ssn1-1.xx.fbcdn.net/v/t1.6435-9/42903831_432309343963474_6413044088903303168_n.png?_nc_cat=100&ccb=1-4&_nc_sid=09cbfe&_nc_ohc=UDIgoHuPZO4AX_7uynE&_nc_ht=scontent-ssn1-1.xx&oh=747407ed2904254ff3019013cf8a588e&oe=61385DC8";
			}

		} catch (IOException e) {
			throw new RuntimeException("API 응답을 읽는데 실패했습니다.", e);
		}
	}

}
