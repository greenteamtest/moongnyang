<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../bootstrap/boot.jsp"%>
<%@ include file="../top&down/header.jsp"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="generator" content="Hugo 0.84.0">
<title>글 등록하기</title>

<link rel="canonical"
	href="https://getbootstrap.com/docs/5.0/examples/checkout/">


<!-- Bootstrap core CSS -->
<link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- 자바스크립트 추가하기 -->
<script type="text/javascript" src="board.js"></script>

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
<link href="community_board_write.css" rel="stylesheet">
</head>



<!-- body태그 시작! -->
<body class="bg-light">

	<div class="container">
		<main>
			<div class="py-5 text-center">
				<img class="d-block mx-auto mb-4"
					src="../assets/brand/bootstrap-logo.svg" alt="" width="72"
					height="57">
				<h2>게시글 상세보기</h2>
			</div>


			<section class="board_container">
				<div
					class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">

					<div class="row">
						<div class="col-auto">
							<div class="mb-1 text-muted">#애니멀 태그 ${board.animal_tag}</div>
						</div>
						<div class="col-auto">
							<div class="mb-1 text-muted">#보드 태그 ${board.board_tag}</div>
						</div>
					</div>

					<hr class="my-4">
					<!-- 구분 줄 -->
					
					<h3 class="mb-0">제목 ${board.title}</h3>
					<strong class="d-inline-block mb-2 text-primary">글쓴이
						${board.user_email}</strong>
					<div class="mb-1 text-muted">일시 ${board.write_date}</div>

					<hr class="my-4">
					<!-- 구분 줄 -->

					<p class="card-text mb-auto">내용 ${board.contents}</p>

					<hr class="my-4">
					<!-- 구분 줄 -->




					<!-- 글쓴 내용 전부 다 -->
					<div class="row">
						<div class="col">
							<div class="card shadow-sm">
								<svg class="bd-placeholder-img card-img-top" width="100%"
									height="225" xmlns="http://www.w3.org/2000/svg" role="img"
									aria-label="Placeholder: Thumbnail"
									preserveAspectRatio="xMidYMid slice" focusable="false">
								<title>Placeholder</title><rect width="100%" height="100%"
										fill="#55595c" />
								<text x="50%" y="50%" fill="#eceeef" dy=".3em">인기게시물 1</text></svg>
							</div>
						</div>
						<div class="col">
							<div class="card shadow-sm">
								<svg class="bd-placeholder-img card-img-top" width="100%"
									height="225" xmlns="http://www.w3.org/2000/svg" role="img"
									aria-label="Placeholder: Thumbnail"
									preserveAspectRatio="xMidYMid slice" focusable="false">
								<title>Placeholder</title><rect width="100%" height="100%"
										fill="#55595c" />
								<text x="50%" y="50%" fill="#eceeef" dy=".3em">인기게시물 2</text></svg>
							</div>
						</div>
						<div class="col">
							<div class="card shadow-sm">
								<svg class="bd-placeholder-img card-img-top" width="100%"
									height="225" xmlns="http://www.w3.org/2000/svg" role="img"
									aria-label="Placeholder: Thumbnail"
									preserveAspectRatio="xMidYMid slice" focusable="false">
								<title>Placeholder</title><rect width="100%" height="100%"
										fill="#55595c" />
								<text x="50%" y="50%" fill="#eceeef" dy=".3em">인기게시물 3</text></svg>
							</div>
						</div>
					</div>
				</div>
			</section>







			<div class="btn-group">
				<button type="button" class="btn btn-sm btn-outline-secondary">like_count
					:좋아요</button>
				<button type="button" class="btn btn-sm btn-outline-secondary">comment:
					댓글</button>
			</div>






		</main>

		<footer class="my-5 pt-5 text-muted text-center text-small">
			<p class="mb-1">&copy; 2017–2021 Company Name</p>
			<ul class="list-inline">
				<li class="list-inline-item"><a href="#">Privacy</a></li>
				<li class="list-inline-item"><a href="#">Terms</a></li>
				<li class="list-inline-item"><a href="#">Support</a></li>
			</ul>
		</footer>
	</div>


	<script src="../assets/dist/js/bootstrap.bundle.min.js"></script>

	<script src="form-validation.js"></script>
</body>
</html>
