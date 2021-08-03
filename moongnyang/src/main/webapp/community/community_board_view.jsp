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
<script type="text/javascript" src="community/script/board_view.js"></script>




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
						태그
						<div class="col-auto">
							#
							<div class="mb-1 text-muted" id="animal_tag">${board.animal_tag}</div>
						</div>
						<div class="col-auto">
							#
							<div class="mb-1 text-muted" id="board_tag">${board.board_tag}</div>
						</div>
					</div>
					<!-- animal_tag, board_tag 의 숫자 결과값을 정해진 게시판 태그로 바꿔줌 -->
					<script>
window.onload=function Change_animal_tag(x) {
	if (x == 0) {
		return "기타";
	}
	if (x == 1) {
		return "강아지";
	}
	if (x == 2) {
		return "고양이";
	}
}
window.onload=function Change_board_tag(x) {
	if (x == 0) {
		return "기타";
	}
	if (x == 1) {
		return "일상공유";
	}
	if (x == 2) {
		return "제품추천";
	}
	if (x == 3) {
		return "벼룩시장";
	}
	if (x == 4) {
		return "궁금해요";
	}
}
// window.alert( Change_animal_tag(${board.animal_tag})+"/"+Change_board_tag(${board.board_tag}));

var str = document.getElementById("animal_tag");
str.innerHTML = Change_animal_tag(${board.animal_tag});
var str1 = document.getElementById("board_tag");
str1.innerHTML = Change_board_tag(${board.board_tag});
</script>

					<hr class="my-4">
					<!-- 구분 줄 -->

					<h3 class="mb-0">${board.title}</h3>
					<strong class="d-inline-block mb-2 text-primary">
						${board.user_email}</strong>
					<div class="mb-1 text-muted">${board.write_date}</div>

					<hr class="my-4">
					<!-- 구분 줄 -->

					<p class="card-text mb-auto">${board.contents}</p>

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
								<text x="50%" y="50%" fill="#eceeef" dy=".3em">사진 1</text></svg>
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
								<text x="50%" y="50%" fill="#eceeef" dy=".3em">사진 2</text></svg>
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
								<text x="50%" y="50%" fill="#eceeef" dy=".3em">사진 3</text></svg>
							</div>
						</div>
					</div>
				</div>
			</section>


			<div class="btn-group">
				<button type="button" class="btn btn-sm btn-outline-secondary">
					좋아요 🧡 ${board.like_count}</button>
				<button type="button" class="btn btn-sm btn-outline-secondary">
					조회수 ${board.read_count}</button>
				<button type="button" class="btn btn-sm btn-outline-secondary">
					댓글</button>
			</div>

			<div class="comment_list container">
				<c:forEach var="comment" items="${commentList}">
					<div
						class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
						<div class="col p-4 d-flex flex-column position-static">
							<strong class="d-inline-block mb-2 text-primary">
								${comment.user_email}</strong>
							<p class="card-text mb-auto">${comment.comment_content}</p>
							<div class="mb-1 text-muted">${comment.write_date}</div>
						</div>
					</div>
				</c:forEach>
			</div>
			<button type="button" class="btn btn-warning"
							onclick="location.href='Community_BoardServlet?command=board_list'">목록으로 돌아가기</button>

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
