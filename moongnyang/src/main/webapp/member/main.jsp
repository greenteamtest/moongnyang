<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:if test="${empty loginUser}">
	<jsp:forward page="login.do" />
</c:if>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="js/login/member.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="logout.do">
		<h2>Hi, ${아이고 오타났네 ㅋㅋr.nickname}(${loginUser.nickname})님</h2>
		<h2>Hi, ${loginUser.nickname}(${loginUser.nickname})님</h2>
		<h2>Hi, ㅂㅈㄷ${loginUser.nickname}(${loginUser.nickname})님</h2>
		<h2>Hi, ${loginUser.nickname}(${loginUser.nickname})님</h2>
		<h2>Hi, ${loginUser.nickname}(${loginUser.nickname})님</h2>
		<h2>Hi, ${loginUser.nickname}(${loginUser.nickname})님</h2>
		<h2>Hi, ${loginUser.nickname}(${loginUser.nickname})님</h2>
		<h2>Hi, ${loginUser.nickname}(${loginUser.nickname})님</h2>
		<input type="submit" value="logout">&nbsp;&nbsp;
		<!-- 	<input type="button" value="회원정보변경" -->
		<%-- 		onclick="location.href='memberUpdate.do?user_email=${loginUser.user_email}'"> --%>
	</form>
</body>
</html>