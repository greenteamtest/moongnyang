package com.picnic.controller.action;
import java.io.*;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;

import com.picnic.dto.BoardVO;

public class Cafe_Action_Naver implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String clientId = "AO6MJLUwfRyG_NAC17cF"; //애플리케이션 클라이언트 아이디값"
        String clientSecret = "s5Dhijk4AM"; //애플리케이션 클라이언트 시크릿값"
        String url = "picnic/cafe/cafe_naver.jsp";
        String text = null;
        try {
            text = URLEncoder.encode("애견", "UTF-8");
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("검색어 인코딩 실패",e);
        }

        String apiURL = "https://openapi.naver.com/v1/search/local.xml?query=" + text + "&display=5&start=1&sort=random";

        Map<String, String> requestHeaders = new HashMap<>();
        requestHeaders.put("X-Naver-Client-Id", clientId);
        requestHeaders.put("X-Naver-Client-Secret", clientSecret);
        String responseBody = get(apiURL,requestHeaders);
        System.out.println(responseBody);
        DocumentBuilderFactory dbFactoty = DocumentBuilderFactory.newInstance();
		List<BoardVO> list = new ArrayList<BoardVO>();
		try {
			DocumentBuilder dBuilder = dbFactoty.newDocumentBuilder();
			InputSource is = new InputSource(new StringReader(responseBody));
			Document doc = dBuilder.parse(is);
			doc.getDocumentElement().normalize();
				
			NodeList nList = doc.getElementsByTagName("item");

			for (int i = 0; i < nList.getLength(); i++) {
				BoardVO bVo = new BoardVO(); 	
				Node nNode = nList.item(i);
	
				if (nNode.getNodeType() == Node.ELEMENT_NODE) {
					Element eElement = (Element) nNode;
	
					bVo.setTitle(getTagValue("title", eElement));
					bVo.setLink(getTagValue("link", eElement));
					bVo.setCategory(getTagValue("category", eElement));
					bVo.setDescription(getTagValue("description", eElement));
					bVo.setTelephone(getTagValue("telephone", eElement));
					bVo.setAddress(getTagValue("address", eElement));
					bVo.setRoadAddress(getTagValue("roadAddress", eElement));
					bVo.setMapx(getTagValue("mapx", eElement));
					bVo.setMapy(getTagValue("mapy", eElement));
					
					list.add(bVo);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		request.setAttribute("list", list);		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);		
		dispatcher.forward(request, response);		
    }

    private static String get(String apiUrl, Map<String, String> requestHeaders){
        HttpURLConnection con = connect(apiUrl);
        try {
            con.setRequestMethod("GET");
            for(Map.Entry<String, String> header :requestHeaders.entrySet()) {
                con.setRequestProperty(header.getKey(), header.getValue());
            }

            int responseCode = con.getResponseCode();
            if (responseCode == HttpURLConnection.HTTP_OK) { // 정상 호출
                return readBody(con.getInputStream());
            } else { // 에러 발생
                return readBody(con.getErrorStream());
            }
        } catch (IOException e) {
            throw new RuntimeException("API 요청과 응답 실패", e);
        } finally {
          //  con.disconnect();
        }
    }

    private static HttpURLConnection connect(String apiUrl){
        try {
            URL url = new URL(apiUrl);
            return (HttpURLConnection)url.openConnection();
        } catch (MalformedURLException e) {
            throw new RuntimeException("API URL이 잘못되었습니다. : " + apiUrl, e);
        } catch (IOException e) {
            throw new RuntimeException("연결이 실패했습니다. : " + apiUrl, e);
        }
    }

    private static String readBody(InputStream body){
        InputStreamReader streamReader = new InputStreamReader(body);
        
        try (BufferedReader lineReader = new BufferedReader(streamReader)) {
            StringBuilder responseBody = new StringBuilder();

            String line;
            while ((line = lineReader.readLine()) != null) {
                responseBody.append(line);
            }

            return responseBody.toString();
        } catch (IOException e) {
            throw new RuntimeException("API 응답을 읽는데 실패했습니다.", e);
        }
    }
    
	private static String getTagValue(String tag, Element eElement) {
		NodeList nlList = eElement.getElementsByTagName(tag).item(0).getChildNodes();
		Node nValue = (Node) nlList.item(0);
		if (nValue == null)
			return null;
		return nValue.getNodeValue();
	}
}