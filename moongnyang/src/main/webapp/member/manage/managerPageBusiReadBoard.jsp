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
<title>ìì¸ë³´ê¸°</title>

<link rel="canonical"
	href="https://getbootstrap.com/docs/5.0/examples/starter-template/">



<!-- Bootstrap core CSS -->
<link href="../../assets/dist/css/bootstrap.min.css" rel="stylesheet">
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
<link href="../../css/starter-template.css" rel="stylesheet">
</head>
<body>
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
							<li class="nav-item"><a class="nav-link"
								href="mypageServlet?command=managerPageCus"> <span
									data-feather="file"></span> 고객소리함
							</a></li>
							<li class="nav-item"><a class="nav-link active"
								href="mypageServlet?command=managerPageBusi"> <span
									data-feather="shopping-cart"></span> 사업자신청관리
							</a></li>
							<li class="nav-item"><a class="nav-link"
								href="mypageServlet?command=managerPageQna"> <span
									data-feather="users"></span> QnA
							</a></li>
						</ul>
					</div>
				</nav>
				<h1>게시글 상세보기</h1>
				<h4>보낸이 : ${board.email}</h4>
				<p class="fs-5 col-md-8">${board.content}</p>

				<div class="mb-5">
					<a href="../examples/" class="btn btn-primary btn-lg px-4">사업자로
						등록하기</a> <a href="../examples/" class="btn btn-primary btn-lg px-4">거절하기</a>
					<a href="../examples/" class="btn btn-primary btn-lg px-4">목록으로
						돌아가기</a>
				</div>

				<hr class="col-3 col-md-2 mb-5">

				<div class="row g-5">
					<div class="col-md-6">
						<h2>Starter projects</h2>
						<p>Ready to beyond the starter template? Check out these open
							source projects that you can quickly duplicate to a new GitHub
							repository.</p>
						<ul class="icon-list">
							<li><a href="https://github.com/twbs/bootstrap-npm-starter"
								rel="noopener" target="_blank">Bootstrap npm starter</a></li>
							<li class="text-muted">Bootstrap Parcel starter (coming
								soon!)</li>
						</ul>
					</div>

					<div class="col-md-6">
						<h2>Guides</h2>
						<p>Read more detailed instructions and documentation on using
							or contributing to Bootstrap.</p>
						<ul class="icon-list">
							<li><a href="../getting-started/introduction/">Bootstrap
									quick start guide</a></li>
							<li><a href="../getting-started/webpack/">Bootstrap
									Webpack guide</a></li>
							<li><a href="../getting-started/parcel/">Bootstrap
									Parcel guide</a></li>
							<li><a href="../getting-started/build-tools/">Contributing
									to Bootstrap</a></li>
						</ul>
					</div>
				</div>
			</main>
			<footer class="pt-5 my-5 text-muted border-top"> Created by
				the Bootstrap team &middot; &copy; 2021 </footer>
		</div>


		<script src="../../assets/dist/js/bootstrap.bundle.min.js"></script>
		<script src="assets/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>