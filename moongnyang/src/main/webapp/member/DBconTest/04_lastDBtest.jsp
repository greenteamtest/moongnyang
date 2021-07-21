<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page import="javax.naming.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>테스트 4</title>
</head>
<body>
	<%
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String id = "scott", pwd = "tiger";
	String sql = "select * from user_info";
	Connection con = DriverManager.getConnection(url, id, pwd);
	PreparedStatement ps = con.prepareStatement(sql);
	ResultSet rs = ps.executeQuery();
	int cnt = 0;
	while (rs.next()) {
		cnt++;
		out.println(cnt+"번째 데이따~~"+"<br>");
		out.println("이멜 : " + rs.getString("user_email") + "<br>");
		out.println("닉넴 : " + rs.getString("user_nick") + "<br>");
		out.println("비번 :" + rs.getString("user_pwd") + "<br><br>");
	}
	%>
</body>
</html>