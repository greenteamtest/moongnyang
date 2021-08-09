<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/member/manage/bar/managerHaeder.jsp"%>
<%@ include file="/member/manage/bar/managerSidebar.jsp"%>
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.84.0">
<title>상세 보기</title>

<link rel="canonical"
	href="https://getbootstrap.com/docs/5.0/examples/starter-template/">



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
</style>
<!-- Custom styles for this template -->
<link href="css/starter-template.css" rel="stylesheet">
</head>
<body>
	<script type="text/javascript" src="js/login/member.js"></script>
	<div class="container-fluid">
		<div class="row">
			<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
				<nav id="sidebarMenu"
					class="col-md-3 col-lg-2 d-md-block bg-Secondary sidebar collapse">
					<div class="position-sticky pt-3">
						<ul class="nav flex-column">
							<li class="nav-item"><a class="nav-link "
								aria-current="page" href="mypageServlet?command=managerPage">
									<span data-feather="home"></span> Dashboard
							</a></li>
							<li class="nav-item"><a class="nav-link active"
								href="mypageServlet?command=managerPageCus "> <span
									data-feather="file"></span> 고객소리함 #소통 #고객
							</a></li>
							<li class="nav-item"><a class="nav-link"
								href="mypageServlet?command=managerPageBusi"> <span
									data-feather="shopping-cart"></span> 사업자신청관리
							</a></li>
							<li class="nav-item"><a class="nav-link"
								href="mypageServlet?command=managerPageStaff&email=${loginUser.email}">
									<span data-feather="users"></span>근태관리 #휴가
							</a></li>
						</ul>
					</div>
				</nav>


				<h1>시간외 근무내역 상세보기</h1>
				<h2>글번호 : ${vacation.num_vacation}</h2>
				<h4>신청자(별명) : ${vacation.user_nick_vacation}</h4>
				<h4>신청자(이메일) : ${vacation.user_email_vacation}</h4>
				<h4>신청일 : ${vacation.start_vacation} ~ ${vacation.end_vacation}</h4>
				<h4>근무 사유 : ${vacation.reason_vacation} *보상/보건휴가 이외는 사유 미기재</h4>

				<div class="mb-5">
					<a class="btn btn-primary btn-lg px-4" data-bs-toggle="modal"
						data-bs-target="#answerCustomer" data-bs-whatever="@mdo">처리하기</a>
					<a href="mypageServlet?command=managerPageCus"
						class="btn btn-primary btn-lg px-4">목록으로 돌아가기</a>
				</div>

				<hr class="col-3 col-md-2 mb-5">

			</main>

		</div>


		<script src="assets/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

<!-- 처리하기 모달 -->
<form action="staffServlet" method="post" name="answer">
	<input type="hidden" name="command" value="resultVacation"> <input
		type="hidden" name="num" value="${vacation.num_vacation}">
	<div class="modal fade" id="answerCustomer" tabindex="-1"
		aria-labelledby="answerCustomer" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-head er">
					<h5 class="modal-title" id="exampleModalLabel">처리하기</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<select class="form-select" aria-label="Default select example"
						name="result">
						<option selected value="승인">승인</option>
						<option value="반려">반려</option>
						<option value="보류">보류</option>
					</select>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">닫기</button>
					<button type="submit" class="btn btn-primary">처리하기</button>
				</div>
			</div>
		</div>
	</div>
</form>