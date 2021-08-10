<%@ page import="java.net.URLEncoder"%>
<%@ page import="java.net.URL"%>
<%@ page import="java.net.HttpURLConnection"%>
<%@ page import="java.io.BufferedReader"%>
<%@ page import="java.io.InputStreamReader"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!doctype html>
<html lang="ko">
<head>
<script type="text/javascript"
	src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js"
	charset="utf-8"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
</head>
<body>
	<script type="text/javascript">
		// 		var naver_id_login = new naver_id_login("AO6MJLUwfRyG_NAC17cF",
		// 				"http://localhost:8092/moongnyang/member/sociallogin/naver_callback.jsp");
		var naver_id_login = new naver_id_login("AO6MJLUwfRyG_NAC17cF",
				"http://localhost:8092/moongnyang/mypageServlet?command=loginpage");
		// 접근 토큰 값 출력
		alert(naver_id_login.oauthParams.access_token);
		// 네이버 사용자 프로필 조회
		naver_id_login.get_naver_userprofile("naverSignInCallback()");
		// 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
		function naverSignInCallback() {
			alert(naver_id_login.getProfileData('email'));
			alert(naver_id_login.getProfileData('nickname'));
			const email = naver_id_login.getProfileData('email');
			const nickname = naver_id_login.getProfileData('nickname');
			alert(email);
			alert(nickname);
			// 			location.href = "../../mypageServlet?command=naver_login&email=" + email
			// 					+ "&nickname=" + nickname;
		}
	</script>
</body>
</html>