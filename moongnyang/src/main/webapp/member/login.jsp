<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../bootstrap/boot.jsp"%>
<%@ include file="../top&down/header.jsp"%>
<%@ page import="java.net.URLEncoder"%>
<%@ page import="java.security.SecureRandom"%>
<%@ page import="java.math.BigInteger"%>

<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.84.0">
<title>🐶🐱귀중하신분 맞이화면🐶🐱</title>

<link rel="canonical"
	href="https://getbootstrap.com/docs/5.0/examples/sign-in/">



<!-- Bootstrap core CSS -->
<link href="assets/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}

.gray {
	color: #C0C0C0
}

.smallimg {
	width: 250px
}
</style>

<script type="text/javascript" src="js/login/member.js"></script>
<!-- Custom styles for this template -->
<link href="css/signin.css" rel="stylesheet">
</head>
<body class="text-center">
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

	<main class="form-signin">
		<form action="login.do" method="post" name="frm">

			<img class="mb-4" src="img/logo.png" alt="" width="100" width="72"
				height="57">
			<h1 class="h3 mb-3 fw-normal">뭉냥뭉냥</h1>

			<div class="form-floating">
				<input type="email" class="form-control" id="floatingInput"
					name="email" value="${user_email}"
					placeholder="name@example.com"> <label for="floatingInput">🐶이메일
					주소를 입력해주세용🐱</label>
			</div>
			<div class="form-floating">
				<input type="password" class="form-control" id="floatingPassword"
					value="${user_pwd}" name="pwd" placeholder="Password">
				<label for="floatingPassword">🐶비밀번호를 입력해주세용🐱</label>
			</div>

			<div class="alert alert-warning" role="alert">${message}</div>
			<button class="w-100 btn btn-lg btn-warning" type="submit"
				onclick="return loginCheck()">입장하겠소!</button>
			<div>
				<br>
			</div>
			<button class="w-100 btn btn-lg btn-warning" type="button"
				onclick="location.href='join.do'">함께하겠소!</button>
			<div>
				<br>
			</div>
			<a id="custom-login-btn" type="button"> <img
				src="//k.kakaocdn.net/14/dn/btqCn0WEmI3/nijroPfbpCa4at5EIsjyf0/o.jpg"
				width="250" onclick="return kakaoLogin();" />
			</a> <a href="<%=apiURL%>"><img height="50" src="img/naverlogin.png" /></a>
			<p class="mt-5 mb-3 text-muted">&copy;2021</p>
		</form>
	</main>

</body>
</html>
