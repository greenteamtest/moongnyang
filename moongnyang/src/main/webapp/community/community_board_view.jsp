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
							<c:choose>
								<c:when test="${empty board.pic_url_1}
								">
									<img src="community/upload/noImage.jpg">
								</c:when>
								<c:otherwise>
									<img src="community/upload/${board.pic_url_1}"
										class="img-thumbnail" alt="...">
								</c:otherwise>
							</c:choose>

						</div>



						<div class="col">
							<img src="community/upload/${board.pic_url_2}"
								class="img-thumbnail" alt="noImage.jpg">
						</div>
						<div class="col">
							<img src="community/upload/${board.pic_url_3}"
								class="img-thumbnail" alt="...">
						</div>
						<div class="col">
							<img src="community/upload/${board.pic_url_4}"
								class="img-thumbnail" alt="...">
						</div>
						<div class="col">
							<img src="community/upload/${board.pic_url_5}"
								class="img-thumbnail" alt="...">
						</div>
					</div>
				</div>
			</section>

			<!-- 좋아요/ 조회수/ 댓글 표시하는 부분 -->
			<div class="btn-group">
				<button type="button" class="btn btn-sm btn-outline-secondary">
					좋아요 🧡 ${board.like_count}</button>
				<button type="button" class="btn btn-sm btn-outline-secondary">
					조회수 ${board.read_count}</button>
				<button type="button" class="btn btn-sm btn-outline-secondary">
					댓글</button>
			</div>

			<!-- ////////////////////////////////////////////////////////////////////////////////////////////////// -->
			<section class="comment container">
				<!-- 댓글 리스트 부분 -->
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

				<!-- 댓글 쓰기 부분 -->
				<div class="row">
					<c:if test="${!empty loginUser}">
						<!-- 로그인 되어 있을 때  -->
						<form name="frm" method="post" action="Community_BoardServlet">
							<input type="hidden" name="command" value="comment_write">
							 <input type="hidden" name="board_user_email" value="${board.user_email}">
							<input type="hidden" name="board_idx" value="${board.board_idx}">
							<input type="hidden" name="user_email" value="${loginUser.email}">
							<b>${loginUser.email}</b>
							<div class="row g-0">
								<div class="col-sm-6 col-md-8">
									<!-- Text Area -->
									<textarea class="form-control" id="exampleFormControlTextarea1"
										rows="3" placeholder="댓글을 적어주세요" name="comment_content"></textarea>
								</div>
								<div class="col -auto">
									<!-- 등록버튼 -->
									<input class="w-100 btn btn-primary btn-lg" type="submit"
										value="등록" onclick="return commentCheck()">
									<!-- 여기 js 함수 수정해야할듯.... -->
								</div>
							</div>
						</form>
					</c:if>
					<c:if test="${empty loginUser}">
						<!-- 로그인 안 되어 있을 때  -->
						<div class="comment_list container">
							<a href="login.do"> 로그인</a> 후 댓글을 작성할 수 있어요
						</div>
					</c:if>
				</div>
			</section>
			<button type="button" class="btn btn-warning"
				onclick="location.href='Community_BoardServlet?command=board_list'">목록으로
				돌아가기</button>
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
