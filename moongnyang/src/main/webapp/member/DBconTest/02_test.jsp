
<%@ page import="java.sql.Connection"%>
<%@ page import="com.Login.dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DB연동 테스트2단계</title>
</head>
<body>
	<%
	MemberDAO memDao = MemberDAO.getInstance();
	Connection conn = memDao.getConnection();
	out.println("성공qwe");
	%>
</body>
</html>