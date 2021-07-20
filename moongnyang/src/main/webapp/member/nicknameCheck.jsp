<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.*, java.text.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
<script type="text/javascript" src="js/login/member.js"></script>
</head>
<body>
	<h2 align="center">(・ｗ・)별명 중복 결과는?!(・ｗ・)</h2>
	<form action="nicknameCheck.do" method="get" name="frm2">
		<c:if test="${result == 1}">
			현재 ${nickname}은 이미 사용 중인 이메일이에요(´･ω･`)
			<input type="button" value="다시작성할게요ㅠ" onclick="test()">
		</c:if>
		<c:if test="${result==-1}">
			현재 ${nickname}은 사용 가능한 별명입니다. (＾-＾)ノ
			<input type="button" value="사용" class="cancel"
				onclick="nickok('${nickname}')">
		</c:if>
	</form>
</body>
</html>