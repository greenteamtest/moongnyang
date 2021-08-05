
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../bootstrap/boot.jsp"%>
<%@ include file="../top&down/header.jsp"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.84.0">
<title>글 수정하기</title>

<link rel="canonical"
	href="https://getbootstrap.com/docs/5.0/examples/checkout/">



<!-- Bootstrap core CSS -->
<link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- 자바스크립트 추가하기 -->
<script type="text/javascript" src="community/script/board_write.js"></script>

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
				<h2>게시글 수정하기</h2>

			</div>
			<form name="frm" method="post" action="community_writeBoard.do"
				enctype="multipart/form-data">
				<!-- 			<form name="frm" method="post" action="Community_BoardServlet" enctype="multipart/form-data"> -->
				<!-- 				<input type="hidden" name="command" value="board_write">  -->
				<input type="hidden" name="user_email" value="${loginUser.email}">
				<div class="row g-5">
					<div class="col-md-5 col-lg-4 order-md-last">

						<ul class="list-group mb-3">

							<li class="list-group-item d-flex justify-content-between">

								<input class="w-100 btn btn-primary btn-lg" type="submit"
								value="등록하기" onclick="return boardCheck()">

							</li>


							<!-- Example single danger button -->
							<li class="list-group-item d-flex justify-content-between">
								<div class='row'>
									동물 태그
									<!-- name=animal_tag  -->
									<div class="form-check">
										<input class="form-check-input" type="radio" name="animal_tag"
											id="flexRadioDefault1" value="1"> <label
											class="form-check-label" for="flexRadioDefault1"> 강아지
										</label>
									</div>
									<div class="form-check">
										<input class="form-check-input" type="radio" name="animal_tag"
											id="flexRadioDefault2" value="2" checked> <label
											class="form-check-label" for="flexRadioDefault2"> 고양이
										</label>
									</div>
									<div class="form-check">
										<input class="form-check-input" type="radio" name="animal_tag"
											id="flexRadioDefault3" value="0" checked> <label
											class="form-check-label" for="flexRadioDefault2"> 기타
										</label>
									</div>
								</div>
							</li>
							<li class="list-group-item d-flex justify-content-between">
								<div class='row'>
									게시판 태그
									<!-- name=board_tag  -->
									<div class="form-check">
										<input class="form-check-input" type="radio" name="board_tag"
											id="flexRadioDefault1" value="1"> <label
											class="form-check-label" for="flexRadioDefault1">
											일상공유 </label>
									</div>
									<div class="form-check">
										<input class="form-check-input" type="radio" name="board_tag"
											id="flexRadioDefault1" value="2"> <label
											class="form-check-label" for="flexRadioDefault1">
											제품추천 </label>
									</div>
									<div class="form-check">
										<input class="form-check-input" type="radio" name="board_tag"
											id="flexRadioDefault1" value="3"> <label
											class="form-check-label" for="flexRadioDefault1">
											벼룩시장 </label>
									</div>
									<div class="form-check">
										<input class="form-check-input" type="radio" name="board_tag"
											id="flexRadioDefault1" value="4"> <label
											class="form-check-label" for="flexRadioDefault1">
											궁금해요 </label>
									</div>
									<div class="form-check">
										<input class="form-check-input" type="radio" name="board_tag"
											id="flexRadioDefault1" value="0"> <label
											class="form-check-label" for="flexRadioDefault1"> 기타
										</label>
									</div>

								</div>
							</li>
						</ul>

					</div>
					<div class="col-md-7 col-lg-8">

						<!-- <form class="needs-validation" novalidate> -->

						<div class="mb-3">
							<label for="exampleFormControlInput1" class="form-label">제목</label>
							<input type="text" class="form-control"
								id="exampleFormControlInput1" name="title"
								value="${board.title}">
							<!-- 제목 부분 !  -->
						</div>


						<hr class="my-4">
						<!-- 구분 줄 -->


						<div class="mb-3">
							<label for="exampleFormControlTextarea1" class="form-label">내용</label>
							<textarea class="form-control" id="exampleFormControlTextarea1"
								rows="10" name="contents" value="${board.contents}"></textarea>
						</div>


						<div class="mb-3">
							<label for="formFile" class="form-label">사진1</label> <input
								class="form-control" type="file" id="formFile" name="file1">
						</div>
						<div class="mb-3">
							<label for="formFile" class="form-label">사진2</label> <input
								class="form-control" type="file" id="formFile" name="file2">
						</div>
						<div class="mb-3">
							<label for="formFile" class="form-label">사진3</label> <input
								class="form-control" type="file" id="formFile" name="file3">
						</div>
						<div class="mb-3">
							<label for="formFile" class="form-label">사진4</label> <input
								class="form-control" type="file" id="formFile" name="file4">
						</div>
						<div class="mb-3">
							<label for="formFile" class="form-label">사진5</label> <input
								class="form-control" type="file" id="formFile" name="file5">
						</div>

						<hr class="my-4">

						<!-- </form> -->
					</div>
				</div>
			</form>
			<!-- 글쓴 내용 전부 다 -->
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
