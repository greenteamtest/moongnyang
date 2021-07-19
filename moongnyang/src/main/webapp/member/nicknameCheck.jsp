<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.*, java.text.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
<script type="text/javascript" src="script/member.js"></script>
</head>
<body>
	<h2>별명 중복확인</h2>
	<form action="nicknameCheck.do" method="get" name="frm2">
		이메일 <input type="text" name="userid" value="${nickname}"> <input
			type="submit" value="중복 체크"> <br>
		<c:if test="${result == 1}">
			<script type="text/javascript">
				opener.document.frm2.nickname.value = "";
			</script>
		현재 ${nickname}은 이미 사용 중인 별명이에요(´･ω･`)
	</c:if>
		<c:if test="${result==-1}">
	현재 ${nickname}은 사용 가능한 별명입니다. (＾-＾)ノ
	<input type="button" value="사용" class="cancel"
				onclick="nickok('${nickname}')">
		</c:if>
	</form>
</body>

</html>