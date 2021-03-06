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
<title>☕관리자페이지</title>

<link rel="canonical"
	href="https://getbootstrap.com/docs/5.0/examples/dashboard/">




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
<link href="member/manage/dashboard.css" rel="stylesheet">
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
				<nav id="sidebarMenu"
					class="col-md-3 col-lg-2 d-md-block bg-Secondary sidebar collapse">
					<div class="position-sticky pt-3">
						<ul class="nav flex-column">
							<li class="nav-item"><a class="nav-link active"
								aria-current="page" href="mypageServlet?command=managerPage">
									<span data-feather="home"></span> Dashboard
							</a></li>
							<li class="nav-item"><a class="nav-link"
								href="mypageServlet?command=managerPageCus"> <span
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
				<hr>
				<h2>사이트 현황</h2>
				<div class="alert alert-secondary" role="alert">현재시간
					${nowdate}</div>
				<div class="table-responsive">
					<table class="table table-striped table-sm" align="center">
						<thead>
							<tr>
								<th scope="col">총 사용자수</th>
								<th scope="col">일반회원</th>
								<th scope="col">사업자회원</th>
								<th scope="col">총 게시글수</th>
								<th scope="col">미디어</th>
								<th scope="col">커뮤니티</th>
								<th scope="col">Health & Edu</th>
								<th scope="col">PICNIC</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="col">${totaluser}</th>
								<th scope="col">${enduser}</th>
								<th scope="col">${busiuser}</th>
								<th scope="col">${totalpost}</th>
								<th scope="col">${media}</th>
								<th scope="col">${community}</th>
								<th scope="col">${health}</th>
								<th scope="col">${picnic}</th>
							<tr>
						</tbody>
					</table>
				</div>
			</main>
		</div>
	</div>


	<script src="assets/dist/js/bootstrap.bundle.min.js"></script>

	<script
		src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js"
		integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js"
		integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha"
		crossorigin="anonymous"></script>
	<script src="member/manage/dashboard.js"></script>
</body>
</html>

<!--  차트 지하실에 처박기 -->
<!-- <div -->
<!-- 	class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom"> -->
<!-- 	<h1 class="h2">총 게시글 조회수</h1> -->
<!-- 	<div class="btn-toolbar mb-2 mb-md-0"> -->

<!-- 		<button type="button" -->
<!-- 			class="btn btn-sm btn-outline-secondary dropdown-toggle"> -->
<!-- 			<span data-feather="calendar"></span> This week -->
<!-- 		</button> -->
<!-- 	</div> -->
<!-- </div> -->

<!-- <canvas class="my-4 w-100" id="myChart" width="900" height="190"></canvas> -->

<!-- <div -->
<!-- 	class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom"> -->
<!-- 	<h1 class="h2">총 게시글 등록수</h1> -->
<!-- 	<div class="btn-toolbar mb-2 mb-md-0"></div> -->
<!-- </div> -->
<!-- <div class="graphBox"> -->
<!-- 	<canvas id="totalView" width="900" height="190"></canvas> -->
<!-- </div> -->
