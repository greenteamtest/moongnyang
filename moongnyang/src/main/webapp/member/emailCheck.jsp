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
	<h2>이메일 중복확인</h2>
	<form action="emailCheck.do" method="get" name="frm1">
		이메일 <input type="text" name="userid" value="${user_email}"> <input
			type="submit" value="중복 체크"> <br>
		<c:if test="${result == 1}">
			<script type="text/javascript">
				opener.document.frm1.userEmail.value= "";
			</script>
		현재 이메일은 이미 사용 중인 이메일이에요(´･ω･`)
	</c:if>
		<c:if test="${result==-1}">
	현재 이메일은 사용 가능한 아이디입니다ヾ(＾-＾)ノ
	<script type="text/javascript">
				opener.document.frm1.emailtest.text= ${user_email};
			</script>
	<input type="button" value="사용" class="cancel" onclick="emailok('${user_email}')">
		</c:if>
	</form>
</body>

</html>