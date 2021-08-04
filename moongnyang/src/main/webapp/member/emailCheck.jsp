<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../bootstrap/boot.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.*, java.text.*"%>
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
<script type="text/javascript" src="js/login/member.js"></script>
<script type="text/javascript" src="js/login/member.js"></script>
</head>
<body>
	<c:if test="${result == 1}">
		<%
		request.setCharacterEncoding("UTF-8");
		%>

	</c:if>
	<c:if test="${result==-1}">

	</c:if>

	<form action="emailCheck.do" method="get" name="frm1">

		<div>
			<br> <br>
		</div>
		<div class="container">
			<c:if test="${result == 1}">
				<div class="alert alert-danger" role="alert">현재 ${user_email}은
					이미 사용 중인 이메일이에요(´･ω･`)</div>
				<div class="d-grid gap-2">
					<button class="btn btn-Danger" type="button" onclick="test_modal()">다시작성할게요ㅠ</button>
				</div>

			</c:if>
			<c:if test="${result==-1}">
				<div class="alert alert-warning" role="alert">현재
					${user_email}이메일은 사용 가능한 아이디입니다 ヾ(＾-＾)ノ</div>
				<div class="d-grid gap-2">
					<button class="btn btn-Warning" type="button" class="cancel"
						onclick="emailok_modal()">사용할게요!</button>
				</div>
			</c:if>
		</div>
	</form>

</body>

</html>