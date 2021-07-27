<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../bootstrap/boot.jsp"%>
<%@ include file="../top&down/header.jsp"%>
<%@ page import="java.net.URLEncoder"%>
<%@ page import="java.security.SecureRandom"%>
<%@ page import="java.math.BigInteger"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,viewport-fit=cover">
<script>
	//61eaf0ccb670c71fede5ee3ff459092e
</script>
<script type="text/javascript" src="js/login/member.js"></script>
<title>로그인</title>
<style>
.gray {
	color: #C0C0C0
}

.smallimg {
	width: 250px
}
</style>
</head>
<body>
	<%
	String clientId = "AO6MJLUwfRyG_NAC17cF";//애플리케이션 클라이언트 아이디값";
	String redirectURI = URLEncoder.encode("http://localhost:8092/Hompage/member/sociallogin/naver_callback.jsp", "UTF-8");
	SecureRandom random = new SecureRandom();
	String state = new BigInteger(130, random).toString();
	String apiURL = "https://nid.naver.com/oauth2.0/authorize?response_type=code";
	apiURL += "&client_id=" + clientId;
	apiURL += "&redirect_uri=" + redirectURI;
	apiURL += "&state=" + state;
	session.setAttribute("state", state);
	%>
	<script src="http://developers.kakao.com/sdk/js/kakao.js"></script>
	<script>
	window.Kakao.init("61eaf0ccb670c71fede5ee3ff459092e"); 
	function kakaoLogin(){ 
		window.Kakao.Auth.login({
			scope:'profile_nickname,account_email',
			success : function(authObj){
			console.log(authObj); 
			window.Kakao.API.request({ 
				url:'/v2/user/me',
				success : res => {
					const kakao_account = res.kakao_account;
					console.log(kakao_account); } }); } }); }
	</script>
	<form action="login.do" method="post" name="frm">
		<table align="center">
			<tr>
				<td><br> <br> <br> <br> <br> <br>
					<br></td>
			</tr>
			<tr>
				<td>
					<h2 align="center" class="gray">뭉냥뭉냥</h2> <br> <br>
				</td>
			</tr>
			<tr>
				<td>
					<div class="input-group mb-3">
						<input type="text" class="form-control" placeholder="이메일"
							value="${user_email}" name="email" size="20" aria-label="이메일"
							aria-describedby="basic-addon1">
					</div>
				</td>
			</tr>
			<tr>
				<td>
					<div class="input-group mb-3">
						<input type="password" class="form-control" placeholder="비밀번호"
							value="${user_pwd}" name="pwd" size="20" aria-label="비밀번호"
							aria-describedby="basic-addon1"> <br> <br>
					</div>
				</td>
			</tr>
			<tr>
				<td><div class="alert alert-warning" role="alert">
						${message}</div></td>
			</tr>
			<tr>

				<td><input type="image" class="smallimg"
					src="img/loginbutton.png" type="submit"
					onclick="return loginCheck()" data-bs-toggle="tooltip"
					data-bs-placement="top" title="Tooltip on top"> <br></td>
			</tr>

			<tr>
				<td><a id="custom-login-btn" type="button"><img
						class="smallimg" src="img/registerbutton.png"
						onclick="location.href='join.do'"></a> <br> <br></td>
			</tr>
			<tr>
				<td><br></td>
			</tr>
			<tr>
				<td><a id="custom-login-btn" type="button"> <img
						src="//k.kakaocdn.net/14/dn/btqCn0WEmI3/nijroPfbpCa4at5EIsjyf0/o.jpg"
						width="250" onclick="return kakaoLogin();" /> <br> <br>
				</a></td>
			</tr>
			<tr>
				<td>
					<!-- 				<a id="naver_id_login" type="submit"> <img --> <!-- 						class="smallimg" src="img/naverlogin.png" width="222" -->
					<%-- 						onclick="<%=apiURL%>" /> --%> <!-- 				</a>  --> <a
					href="<%=apiURL%>"><img height="50" src="img/naverlogin.png" /></a>
				</td>
			</tr>

		</table>
	</form>
</body>

</html>
