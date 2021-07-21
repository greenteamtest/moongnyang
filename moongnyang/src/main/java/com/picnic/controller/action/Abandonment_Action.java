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

public class Abandonment_Action implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "picnic/abandonment/abandonment.jsp";
		String sKey = "=MHijCewxZVm%2F%2BYHcu%2BV4EPh3gx9YgCMkq7l6bp0y2j5kMNVUObecIzmLdQeU8uzx7p1vXbUyw%2BqXLCNFbJXL3g%3D%3D";

		String temp = null;
		StringBuilder urlBuilder = new StringBuilder(
				"http://openapi.animal.go.kr/openapi/service/rest/abandonmentPublicSrvc/abandonmentPublic"); /* URL */

		if (request.getParameter("pageNo") != null) {
			temp = request.getParameter("pageNo");
			urlBuilder.append("?pageNo=" + temp); /* 페이지 번호 */
			System.out.println(urlBuilder.toString());
		} else {
			temp = "1";
			urlBuilder.append("?pageNo=" + temp); /* 페이지 번호 */
			System.out.println(urlBuilder.toString());
		}

		// 시,군,구 코드가 있을시 시,군,구 만 넣고 없으면 시, 도 코드 확인
		if (request.getParameter("org_cd") != null) {
			temp = request.getParameter("org_cd");
			urlBuilder.append("&org_cd=" + temp); /* 시,군,구 */
			System.out.println(urlBuilder.toString());
		} else if (request.getParameter("upr_cd") != null) {
			temp = request.getParameter("upr_cd");
			urlBuilder.append("&upr_cd=" + temp); /* 시,도 */
			System.out.println(urlBuilder.toString());
		}

		// 품종 코드가 있을시 품종코드만 넣고 없으면 축종코드 있는지 확인 축종->개,고양이 등등 품종->도베르만,골든 리트리버 등등
		System.out.println("---"+request.getParameter("kind")+"---");
		if (request.getParameter("kind") != null) {
			System.out.println(urlBuilder.toString());
			temp = request.getParameter("kind");
			urlBuilder.append("&kind=" + temp); /* 품종 코드 */
			System.out.println(urlBuilder.toString());
		} else if (request.getParameter("upkind") != null) {			
			temp = request.getParameter("upkind");
			urlBuilder.append("&upkind=" + temp); /* 축종코드 */
			System.out.println(urlBuilder.toString());
		}

		urlBuilder.append("&" + URLEncoder.encode("ServiceKey", "UTF-8") + sKey); /* Service Key */
		System.out.println(urlBuilder.toString());
		DocumentBuilderFactory dbFactoty = DocumentBuilderFactory.newInstance();
		List<BoardVO> list = new ArrayList<BoardVO>();
		try {
			DocumentBuilder dBuilder = dbFactoty.newDocumentBuilder();
			Document doc = dBuilder.parse(urlBuilder.toString());
			doc.getDocumentElement().normalize();
			NodeList nList = doc.getElementsByTagName("item");

			for (int i = 0; i < nList.getLength(); i++) {
				Node nNode = nList.item(i);
				if (nNode.getNodeType() == Node.ELEMENT_NODE) {
					Element eElement = (Element) nNode;

					BoardVO bVo = new BoardVO();

					bVo.setDesertionNo(getTagValue("desertionNo", eElement));
					bVo.setFilename(getTagValue("filename", eElement));
					bVo.setHappenDt(getTagValue("happenDt", eElement));
					bVo.setHappenPlace(getTagValue("happenPlace", eElement));
					bVo.setKindCd(getTagValue("kindCd", eElement));
					bVo.setColorCd(getTagValue("colorCd", eElement));
					bVo.setAge(getTagValue("age", eElement));
					bVo.setWeight(getTagValue("weight", eElement));
					bVo.setNoticeNo(getTagValue("noticeNo", eElement));
					bVo.setNoticeSdt(getTagValue("noticeSdt", eElement));
					bVo.setNoticeEdt(getTagValue("noticeEdt", eElement));
					bVo.setPopfile(getTagValue("popfile", eElement));
					bVo.setProcessState(getTagValue("processState", eElement));
					bVo.setSexCd(getTagValue("sexCd", eElement));

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

	private static String getTagValue(String tag, Element eElement) {
		NodeList nlList = eElement.getElementsByTagName(tag).item(0).getChildNodes();
		Node nValue = (Node) nlList.item(0);
		if (nValue == null)
			return null;
		return nValue.getNodeValue();
	}
}
