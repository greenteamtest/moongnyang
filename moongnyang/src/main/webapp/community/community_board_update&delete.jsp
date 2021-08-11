<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../bootstrap/boot.jsp"%>
<%@ include file="../top&down/header.jsp"%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>



<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="generator" content="Hugo 0.84.0">
<title>내가 쓴 글 확인하기</title>

<link rel="canonical"
	href="https://getbootstrap.com/docs/5.0/examples/offcanvas-navbar/">



<!-- Bootstrap core CSS -->
<link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- 자바스크립트 추가하기 -->
<script type="text/javascript" src="community/script/board_delete.js"></script>


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
<link href="community_board_update&delete.css" rel="stylesheet">
</head>
<body class="bg-light">
	<main class="container">
		<div class="container px-4">
			<div class="row gx-5">
				<section class="col">
					<div
						class="d-flex align-items-center p-3 my-3 text-black bg-purple rounded shadow-sm">
						<img class="me-3" src="img/logo.png"
							alt="" width="60" height="40">
						<div class="lh-1">
							<strong class="d-block text-gray-dark">내가 쓴 게시글</strong>
						</div>
					</div>

					<div class="my-3 p-3 bg-body rounded shadow-sm">
						<h6 class="border-bottom pb-2 mb-0">게시물</h6>
						<!-- 여기서부터 개별 게시물 시작 !  -->
						<c:forEach var="board" items="${boardList}">
							<div class="d-flex text-muted pt-3">

								<div class="col">
									<strong class="d-block text-gray-dark"><a
										href="Community_BoardServlet?command=board_view&board_idx=${board.board_idx}">${board.title}</a></strong>
									<div>${board.contents}</div>
									<div>${board.write_date}</div>
								</div>
								<div class="col-sm-auto">
									<!-- 수정 버튼  -->
									<button type="button" class="btn btn-outline-secondary"
										onclick="location.href='Community_BoardServlet?command=board_update_form&board_idx=${board.board_idx}'">수정</button>
									<!-- 삭제 버튼 (Button trigger modal) -->
									<button type="button" class="btn btn-outline-secondary"
										data-bs-toggle="modal" data-bs-target="#exampleModal">
										삭제</button>
									<!-- Modal -->
									<div class="modal fade" id="exampleModal" tabindex="-1"
										aria-labelledby="exampleModalLabel" aria-hidden="true">
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="modal-header">
													<h5 class="modal-title" id="exampleModalLabel">알림</h5>
													<button type="button" class="btn-close"
														data-bs-dismiss="modal" aria-label="Close"></button>
												</div>
												<div class="modal-body">정말 삭제하시겠습니까?</div>
												<div class="modal-footer">
													<button type="button" class="btn btn-secondary"
														data-bs-dismiss="modal">아니오</button>
													<button type="button" class="btn btn-primary"
														onclick="location.href='Community_BoardServlet?command=board_delete&board_idx=${board.board_idx}&user_email=${board.user_email}'">예</button>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<hr class="my-6">
						</c:forEach>
						<!-- 내가 쓴 게시물 리스트 끝 -->
					</div>
				</section>
				<!-- 내가 단 댓글 리스트 시작 -->
				<section class="col">
					<div
						class="d-flex align-items-center p-3 my-3 text-black bg-purple rounded shadow-sm">
						<img class="me-3" src="img/logo.png"
							alt="" width="60" height="40">
						<div class="lh-1">
						<strong class="d-block text-gray-dark">내가 단 댓글 </strong>
						</div>
					</div>

					<div class="my-3 p-3 bg-body rounded shadow-sm">
						<h6 class="border-bottom pb-2 mb-0">댓글</h6>
						<!-- 여기서부터 개별 댓글리스트 항목 시작 !  -->
						<c:forEach var="comment" items="${commentList}">
							<div class="d-flex text-muted pt-3">

								<div class="col">
									<strong class="d-block text-gray-dark">${comment.comment_content}</strong>
									<div>
										<a
											href="Community_BoardServlet?command=board_view&board_idx=${comment.board_idx}">게시글확인하기</a>
									</div>
									<div>${comment.write_date}</div>
								</div>
								<div class="col-sm-auto">
									<!-- 삭제 버튼 (Button trigger modal) -->
									<button type="button" class="btn btn-outline-secondary"
										onclick="location.href='Community_BoardServlet?command=comment_delete&comment_idx=${comment.comment_idx}&user_email=${comment.user_email}'">삭제</button>

								</div>
							</div>

							<hr class="my-6">
						</c:forEach>
						<!-- 내가 쓴 게시물 리스트 끝 -->
					</div>
				</section>
			</div>
		</div>
	</main>


	<script src="../assets/dist/js/bootstrap.bundle.min.js"></script>

	<script src="offcanvas.js"></script>
</body>
</html>
