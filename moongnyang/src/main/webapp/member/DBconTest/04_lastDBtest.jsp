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
	out.println("user_email user_nick user_pwd");
	while (rs.next()) {
		out.println(rs.getString("user_email"));
		out.println(rs.getString("user_nick"));
		out.println(rs.getString("user_pwd"));
	}
	%>
</body>
</html>