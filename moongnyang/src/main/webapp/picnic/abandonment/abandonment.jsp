<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유기견</title>
</head>
<body>
		<table >
		<c:forEach var="list" items="${list }">
			
			<tr>
				<td rowspan="13"><a href="BoardServlet_picnic?command=abandonment_view&num=${list.desertionNo }"> <img src="${list.popfile }" width="300" height="300"></a></td>
			</tr>
			<tr>
				<td>유기 번호 : ${list.desertionNo }</td>
			</tr>
			<tr>
				<td>접수일 : ${list.happenDt}</td>
			</tr>
			<tr>
				<td>발견장소 : ${list.happenPlace}</td>
			</tr>
			<tr>
				<td>품종 : ${list.kindCd}</td>
			</tr>
			<tr>
				<td>색상 : ${list.colorCd}</td>
			</tr>
			<tr>
				<td>나이 : ${list.age}</td>
			</tr>
			<tr>
				<td>체중 : ${list.weight}</td>
			</tr>
			<tr>
				<td>공고번호 : ${list.noticeNo}</td>
			</tr>
			<tr>
				<td>공고 시작일 : ${list.noticeSdt}</td>
			</tr>
			<tr>
				<td>공고 종료일 : ${list.noticeEdt}</td>
			</tr>
			<tr>
				<td>상태 : ${list.processState}</td>
			</tr>
			<tr>
				<td>성별 : ${list.sexCd}</td>
			</tr>
			
			</c:forEach>
		</table>
</body>
</html>