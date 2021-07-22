<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../bootstrap/boot.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.*, java.text.*"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jstl/sql"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<%
response.setContentType("text/html");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
<script type="text/javascript" src="js/login/member.js"></script>
</head>
<body>
	<h2 align="center">(・ｗ・)별명 중복 결과는?!(・ｗ・)</h2>
	<form action="nicknameCheck.do" method="get" name="frm">
		<c:if test="${result == 1}">
			<%
			request.setCharacterEncoding("UTF-8");
			%>
			<div class="alert alert-danger" role="alert">현재 ${nickname}은 이미
				사용 중인 별명이에요(´･ω･`)</div>
			<div class="d-grid gap-2">
				<button class="btn btn-Danger" type="button" onclick="test()">다시작성할게요ㅠ</button>
			</div>
		</c:if>
		<c:if test="${result==-1}">
			<div class="alert alert-warning" role="alert">현재 ${nickname}은
				사용 가능한 별명입니다. (＾-＾)ノ</div>
			<div class="d-grid gap-2">
				<button class="btn btn-Warning" type="button" class="cancel"
					onclick="nickok('${nickname}')">사용할게요!</button>
			</div>
		</c:if>
	</form>
</body>
</html>