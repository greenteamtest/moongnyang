<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../bootstrap/boot.jsp"%>
<%@ include file="../top&down/header.jsp"%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>뭉냥 커뮤니티</title>

<link rel="canonical"
	href="https://getbootstrap.com/docs/5.0/examples/blog/">



<!-- Bootstrap core CSS -->
<link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">

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
<link
	href="https://fonts.googleapis.com/css?family=Playfair&#43;Display:700,900&amp;display=swap"
	rel="stylesheet">
<!-- Custom styles for this template -->

<link href="community_board_list.css" rel="stylesheet">
<!-- 자바스크립트 연결 -->
<script type="text/javascript" src="community/script/filter.js"></script>


</head>
<body>
	<div>
		<br> <br> <br> <br>
	</div>
	<div class="container"></div>
	<!-- 메인 화면 시작 -->
	<main class="container">
		<!-- Carousel 로 3개씩 묶어서 한 9개정도 보여주고 싶,,,,, -->
		<div class="row">
			<div class="col">
				<section class="p-4 p-md-5 mb-4 text-white rounded bg-dark">
					<div class="container">
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

									<div class="card-body">
										<p class="card-text">눈누난나</p>
										<div class="d-flex justify-content-between align-items-center">
											<div class="btn-group">
												<button type="button"
													class="btn btn-sm btn-outline-secondary">View</button>
												<button type="button"
													class="btn btn-sm btn-outline-secondary">Edit</button>
											</div>
											<small class="text-muted">9 mins</small>
										</div>
									</div>
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

									<div class="card-body">
										<p class="card-text">눈누난나</p>
										<div class="d-flex justify-content-between align-items-center">
											<div class="btn-group">
												<button type="button"
													class="btn btn-sm btn-outline-secondary">View</button>
												<button type="button"
													class="btn btn-sm btn-outline-secondary">Edit</button>
											</div>
											<small class="text-muted">9 mins</small>
										</div>
									</div>
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

									<div class="card-body">
										<p class="card-text">눈누난나</p>
										<div class="d-flex justify-content-between align-items-center">
											<div class="btn-group">
												<button type="button"
													class="btn btn-sm btn-outline-secondary">View</button>
												<button type="button"
													class="btn btn-sm btn-outline-secondary">Edit</button>
											</div>
											<small class="text-muted">9 mins</small>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>


			</div>
			<div class="col-md-auto">
				<div class="row">
					<c:if test="${!empty loginUser}">
						<input type="button" class="btn btn-warning"
							href="Community_BoardServlet?command=board_write_form">게시글
							쓰러가기</button>
					</c:if>
					<c:if test="${empty loginUser}">
						<button type="button" class="btn btn-warning"
							onclick="location.href='login.do' ">게시글 쓰러가기</button>
					</c:if>
					<a href="Community_BoardServlet?command=board_write_form">게시글
						등록</a> <a href="Community_BoardServlet?command=board_list">Community</a>
				</div>
			</div>
		</div>
		<!-- 필터 고르는 부분 -->
		<section class="filter">
			<!-- 			<section class=".container-sm"> -->
			<div class="p-4 p-md-5 mb-4 text-white rounded bg-dark">
				<div class="container">
					<div class="row">동물 필터</div>
					<div class="row">
						<div class="col">
							<input class="w-100 btn btn-primary btn-lg" type="submit"
								value="예시- 아직 누르지 말것" onclick="return boardCheck()">

							<button type="button" class="btn btn-outline-primary" onclick="">강아지</button>
							<button type="button" class="btn btn-outline-secondary">고양이</button>
							<button type="button" class="btn btn-outline-success">기타</button>
						</div>
					</div>
					<div class="row">게시판 필터</div>
					<div class="row">
						<div class="col">
							<button type="button" class="btn btn-outline-primary">일상공유</button>
							<button type="button" class="btn btn-outline-secondary">제품추천</button>
							<button type="button" class="btn btn-outline-success">벼룩시장</button>
							<button type="button" class="btn btn-outline-danger">궁금해요</button>
							<button type="button" class="btn btn-outline-warning">기타</button>

						</div>
					</div>
					<div class="row">
						<button type="button" class="btn btn-primary">적용</button>
					</div>
				</div>
			</div>
			<!-- 			</section> -->
		</section>
		<!-- 개별 게시글 나오는 구간 ! -->
		<section class="item_list">
			<c:forEach var="board" items="${boardList}">

				<div
					class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">

					<div class="col p-4 d-flex flex-column position-static">
						<strong class="d-inline-block mb-2 text-primary">${board.user_email}</strong>
						<h3>
							<a
								href="Community_BoardServlet?command=board_view&board_idx=${board.board_idx}">${board.title}</a>
						</h3>
						<div class="mb-1 text-muted">${board.write_date}</div>
						<p class="card-text mb-auto">${board.contents}</p>
						<div class="btn-group">
							<button type="button" class="btn btn-sm btn-outline-secondary">like_count
								:좋아요</button>
							<button type="button" class="btn btn-sm btn-outline-secondary">comment:
								댓글</button>
						</div>
						<a
							href="Community_BoardServlet?command=board_view&board_idx=${board.board_idx} ">바로가기</a>
					</div>
					<div class="col-auto d-none d-lg-block">
						<svg class="bd-placeholder-img" width="200" height="250"
							xmlns="http://www.w3.org/2000/svg" role="img"
							aria-label="Placeholder: Thumbnail"
							preserveAspectRatio="xMidYMid slice" focusable="false">
							<title>Placeholder</title><rect width="100%" height="100%"
								fill="#55595c" />
							<text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>
					</div>
				</div>
			</c:forEach>





		</section>

		<div class="position-relative">
			<div class="position-absolute top-0 start-50 translate-middle">
				<nav aria-label="Page navigation example">
					<ul class="pagination">
						<li class="page-item"><a class="page-link" href="#"
							aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
						</a></li>
						<li class="page-item"><a class="page-link" href="#">1</a></li>
						<li class="page-item"><a class="page-link" href="#">2</a></li>
						<li class="page-item"><a class="page-link" href="#">3</a></li>
						<li class="page-item"><a class="page-link" href="#"
							aria-label="Next"> <span aria-hidden="true">&raquo;</span>
						</a></li>
					</ul>
				</nav>
			</div>

		</div>



	</main>

	<footer class="blog-footer">
		<p>
			Blog template built for <a href="https://getbootstrap.com/">Bootstrap</a>
			by <a href="https://twitter.com/mdo">@mdo</a>.
		</p>
		<p>
			<a href="#">Back to top</a>
		</p>
	</footer>



</body>
</html>