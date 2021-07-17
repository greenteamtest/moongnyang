<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../bootstrap/boot.jsp"%>
<%@ include file="../top&down/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,viewport-fit=cover">
<script>
	//61eaf0ccb670c71fede5ee3ff459092e
</script>
<title>로그인 화면</title>
<style>
.gray {
	color: #C0C0C0
}

.smallimg {
	width: 250px
}
</style>

<!-- <script type="text/javascript" src="script/member.js"></script> -->
<!-- <link -->
<!-- 	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" -->
<!-- 	rel="stylesheet" -->
<!-- 	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" -->
<!-- 	crossorigin="anonymous"> -->
</head>
<body>
	<script>
		//61eaf0ccb670c71fede5ee3ff459092e
	</script>
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


	<br>
	<br>
	<br>
	<br>
	<h2 align="center" class="gray">뭉냥뭉냥</h2>
	<form action="login.do" method="post" name="frm">
		<table align="center">
			<tr>
				<td>
					<div class="input-group mb-3">
						<input type="text" class="form-control" placeholder="이메일"
							name="userid" size="20" aria-label="이메일"
							aria-describedby="basic-addon1">
					</div>
				</td>
			</tr>
			<tr>
				<td>
					<div class="input-group mb-3">
						<input type="password" class="form-control" placeholder="비밀번호"
							name="pwd" size="20" aria-label="비밀번호"
							aria-describedby="basic-addon1">
					</div>
				</td>
			</tr>
			<tr>
				<td><a id="custom-login-btn" type="submit"><img
						class="smallimg" src="img/loginbutton.png"
						onclick="return loginCheck()"></a></td>
			</tr>
			<tr>
				<td><a id="custom-login-btn" type="submit"><img
						class="smallimg" src="img/registerbutton.png"
						onclick="location.href='join.do'"></a></td>
			</tr>
			<tr>
				<td><br></td>
			</tr>
			<tr>
				<td><a id="custom-login-btn" type="submit"> <img
						src="//k.kakaocdn.net/14/dn/btqCn0WEmI3/nijroPfbpCa4at5EIsjyf0/o.jpg"
						width="250" onclick="return kakaoLogin();" />
				</a></td>
			</tr>
			<tr>
				<td><a id="naver_id_login" type="submit"> <img
						class="smallimg" src="img/naverlogin.png" width="222"
						onclick="return loginCheck()" />
				</a></td>
			</tr>
		</table>
		<script type="text/javascript"
		src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js"
		charset="utf-8"></script>
	<script type="text/javascript"
		src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
		<script type="text/javascript">
  	var  naver_id_login = new naver_id_login("AO6MJLUwfRyG_NAC17cF", "http://localhost:8092/Hompage/member/sociallogin/naver_callback.jsp");
  	var state =  naver_id_login.getUniqState();
  	 naver_id_login.setDomain("http://localhost:8092/Hompage/login.do");
  	 naver_id_login.setState(state);
  	 naver_id_login.setPopup();
  	 naver_id_login.init_naver_id_login();
  </script>
	</form>
</body>

</html>
