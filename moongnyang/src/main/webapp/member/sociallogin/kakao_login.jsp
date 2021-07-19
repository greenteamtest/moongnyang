<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<a href="javascript:kakaoLogin();"></a>
	<script>
	//61eaf0ccb670c71fede5ee3ff459092e
</script>
	<script src="http://developers.kakao.com/sdk/js/kakao.js">
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
					console.log(kakao_account);
				}
			});
		}
	});
}
</script>
</body>
</html>