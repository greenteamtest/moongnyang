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
	<h2 align="center">(・ｗ・)이메일 중복 결과는?!(・ｗ・)</h2>

	<form action="emailCheck.do" method="get" name="frm1">
		<c:if test="${result == 1}">
		현재 ${user_email}은 이미 사용 중인 이메일이에요(´･ω･`)
		<input type="button" value="다시작성할게요ㅠ" onclick="test()">
		</c:if>
		<c:if test="${result==-1}">
	현재 ${user_email}이메일은 사용 가능한 아이디입니다<br>ヾ(＾-＾)ノ
			<input type="button" value="사용할게요!" class="cancel"
				onclick="emailok()">
		</c:if>
	</form>
</body>

</html>