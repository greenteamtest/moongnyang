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
	border: 2px solid red;
	height: 100vh;
}

section {
	text-align: center;
}

.main-btn button {
	width: 25rem;
	height: 8rem;
	margin-left : 5rem;
	margin-right : 5rem;
}

.main-btn {
	display: inline-block;
}
#maincontainer > main{
	border : 2px solid red;
	height : 100vh;
	display : flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
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
				<h1> 사업자 등록 신청이 완료되었습니다 </h1> 
				<hr>
				<br>
				<br>
				<div class="main-btn">
					<button class="ui primary button">홈으로</button>
					<button class="ui primary button">나의 사업장 신청 내역</button>
					<button class="ui primary button">헬스 & 에듀 바로가기</button>
				</div>
			</section>
		</main>

		<footer>
			<%@ include file="../footer.jsp"%>
		</footer>
		<div id="sidebar">
			<%@ include file="../sidebar.jsp"%>
		</div>
	</div>

</body>
</html>
