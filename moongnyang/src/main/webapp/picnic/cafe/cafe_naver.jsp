<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:include page="../../top&down/header.jsp" flush="ture" />
<jsp:include page="../../bootstrap/boot.jsp" flush="ture" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"/>
<title>카페</title>
<script type="text/javascript"></script>
</head>
<body>
	<c:set var="i" value="0" />
	<c:set var="j" value="1" />
	
	<br>
	<br>
	<br>
	<br>
	<br>
	<table border="1">
		
		<c:forEach var="list" items="${list }" >
			<c:if test="${i%j == 0 }">
				<tr>
			</c:if>
			<td>
				&nbsp;제목 : ${list.title}<br> 
				&nbsp;주소 : ${list.link}<br>
				&nbsp;카테고리 : ${list.category}<br> 
				&nbsp;주소 : ${list.address}<br>
				&nbsp;도로명 : ${list.roadAddress}<br> 
				&nbsp;x : ${list.mapx}<br> 
				&nbsp;y : ${list.mapy}<br><br>
				
			</td>
			
			<c:if test="${i%j == j-1 }">
			</c:if>
			<c:set var="i" value="${i+1 }" />
		</c:forEach>			
	</table>
</body>
</html>