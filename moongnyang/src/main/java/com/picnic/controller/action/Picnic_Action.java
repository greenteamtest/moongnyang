package com.picnic.controller.action;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

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

import com.picnic.dto.BoardVO;

public class Picnic_Action implements Action{
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		
		String url = "picnic/picnic.jsp";
		
		String sKey = "=MHijCewxZVm%2F%2BYHcu%2BV4EPh3gx9YgCMkq7l6bp0y2j5kMNVUObecIzmLdQeU8uzx7p1vXbUyw%2BqXLCNFbJXL3g%3D%3D";
		StringBuilder urlBuilder = new StringBuilder(
				"http://openapi.animal.go.kr/openapi/service/rest/abandonmentPublicSrvc/sido"); /* URL */
		urlBuilder.append("?" + URLEncoder.encode("ServiceKey", "UTF-8") + sKey); /* Service Key */
		
		DocumentBuilderFactory dbFactoty = DocumentBuilderFactory.newInstance();
		List<BoardVO> list = new ArrayList<BoardVO>();
		try {
			DocumentBuilder dBuilder = dbFactoty.newDocumentBuilder();
			Document doc = dBuilder.parse(urlBuilder.toString());
			doc.getDocumentElement().normalize();
			NodeList nList = doc.getElementsByTagName("item");

			for (int temp = 0; temp < nList.getLength(); temp++) {
				Node nNode = nList.item(temp);
				if (nNode.getNodeType() == Node.ELEMENT_NODE) {
					Element eElement = (Element) nNode;
					BoardVO bVo = new BoardVO();	
					bVo.setOrgCd(getTagValue("orgCd",eElement));
					bVo.setOrgdownNm(getTagValue("orgdownNm",eElement));

					list.add(bVo); //시,도 리스트
					
					
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		request.setAttribute("list", list);
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

	private static String getTagValue(String tag, Element eElement) {
		NodeList nlList = eElement.getElementsByTagName(tag).item(0).getChildNodes();
		Node nValue = (Node) nlList.item(0);
		if (nValue == null)
			return null;
		return nValue.getNodeValue();
	}
}