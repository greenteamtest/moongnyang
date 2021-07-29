<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file="/setting/setting.jsp"%>
<%@ include file="/top&down/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript"></script>
</head>
<body>
<br><br><br><br>
	<table>
	<tr>
		<td>1111111111111111111111111</td>
	</tr>
		<c:forEach var="rs" items="${rs }">
		<td>${rs.key }</td>
		
		</c:forEach>
		<tr>
		<td>1111111111111111111111111</td>
		<tr>
	</table>
</body>
</html>