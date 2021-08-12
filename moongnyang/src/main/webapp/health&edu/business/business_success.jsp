<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/jQuery/jquery.jsp"%>
<%@ include file="/health&edu/bootstrap/getboot.jsp"%>
<%@ include file="/health&edu/bootstrap/boot.jsp"%>
<%@ include file="/semanticUI/semanticUI.jsp"%>
<%@ include file="/setting/setting.jsp"%>



<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="" />
<meta name="author" content="" />

<title>Document</title>
<style>
body {
	height: 100vh;
}

section {
	text-align: center;
}

.main-btn button {
	width: 28rem;
	height: 8rem;
}

.main-btn {
	display: inline-block;
}

#maincontainer>main {
	height: 100vh;
	display: flex;
	flex-direction: row;
	align-items: center;
	justify-content: center;
}

.ui.primary.button {
	font-size: 2rem;
}
</style>
</head>
<body>


	<header>
		<%@ include file="/top&down/header.jsp"%>
		<%@ include file="/health&edu/logo.jsp"%>
	</header>
	<div id="maincontainer">
		<%@ include file="/health&edu/nav.jsp"%>

		<main>
			<section>
				<h1 style="display: inline-block;">사업자 등록 신청이 완료되었습니다</h1>
				&ensp; <img alt="..." src="health&edu/img/certificate.png" style="width: 6rem; height: 6rem; display: inline-block;">
				<hr>
				<br>
				<br>
				<br>
				<div class="main-btn">
					<button class="ui primary button" onclick="location.href='${pageContext.request.contextPath}/index.jsp'" style="margin-bottom : 2rem;">홈으로</button>
					
					<form name="frm">
						<button class="ui primary button reg" style="margin-bottom : 1.5rem;">나의 사업장 신청 내역</button>
						<input type="hidden" name="email" value="${loginUser.getEmail()}" />
						<input type="hidden" name="auth" value="${loginUser.getAuth()}" />
						<input type="hidden" name="command" value="businessRegStatus" />
					</form>
					
					<button class="ui primary button" onclick="location.href='controller.do?command=main'">헬스 & 에듀 바로가기</button>
				</div>
			</section>
		</main>

		<footer>
			<%@ include file="../footer.jsp"%>
		</footer>

	</div>
	<script>
        $('.reg').click(()=>{
            
            const frm = document.frm ;
            if(frm.email.value == null || frm.email.value=""){
                alert('사업자 계정 로그인이 필요합니다');
                return;
            }

            if (Number(frm.auth.value) <2 ) {
                alert('사업자 계정 로그인이 필요합니다');
                return;
            }
            
            frm.method='post';
            frm.action='controller.do';
            frm.submit();
        })
    </script>
</body>
</html>
