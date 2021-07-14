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
						width="250" onclick="return loginCheck()" />
				</a></td>
			</tr>
			<tr>
				<td><a id="custom-login-btn" type="submit"> <img
						class="smallimg" src="img/naverlogin.png" width="222"
						onclick="return loginCheck()" />
				</a></td>
			</tr>
		</table>
	</form>
</body>

</html>
