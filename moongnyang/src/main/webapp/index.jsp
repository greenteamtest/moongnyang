<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="bootstrap/boot.jsp"%>
<%@ include file="top&down/header.jsp"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />

<title>뭉냥뭉냥-반려동물과의 즐거운 하루 !</title>
<!-- Favicon-->
<!-- Custom styles for this template -->
<link href="navbar.css" rel="stylesheet">
<!-- Javascript -->
<script src="../assets/dist/js/bootstrap.bundle.min.js"></script>

</head>
<body id="page-top">
	<br>
	<br>
	<br>
	<br>
	<!-- Navigation-->
	<div class="container">
			<header
				class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 "><!-- mb-4 border-bottom -->
				<div
					class="d-flex align-items-center col-md-3 mb-2 mb-md-0 text-dark text-decoration-none">
					<!--         <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap"/></svg> -->
				</div>

				<ul
					class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
					<li><a href="BoardServlet_picnic?command=picnic" class="nav-link px-2 link-dark">Picnic</a></li>
					<li><a href="controller.do?command=main" class="nav-link px-2 link-dark">Health & Edu</a></li>
					<li><a href="Community_BoardServlet?command=board_list" class="nav-link px-2 link-dark">Community</a></li>
					<li><a href="mediaServlet?command=mediamain" class="nav-link px-2 link-dark">Media</a></li>
					<li><a href="BoardServlet_picnic?command=abandonment_search" class="nav-link px-2 link-dark">Abandoned
							Pets</a></li>
				</ul>

				<div class="col-md-3 text-end">
					<!-- 간격 맞춰주기 위한 div -->
				</div>
			</header>
		</div>
		<!-- 네비게이션 -->
	<header class="masthead">
		<div class="container">
			<div class="masthead-subheading">강아지 고양이 반려동물 커뮤니티</div>
			<div class="masthead-heading text-uppercase">뭉냥뭉냥</div>
		</div>
	</header>

	<!-- Services-->
	<section class="page-section" id="services">

		<div class="container">
			<div class="text-center">
				<h2 class="section-heading text-uppercase">Services</h2>
				<h3 class="section-subheading text-muted">뭉냥뭉냥에서는...</h3>
			</div>
			<div class="row text-center">
				<div class="col-md-4">
					<span class="fa-stack fa-4x"> <i
						class="fas fa-circle fa-stack-2x text-primary"></i> <i
						class="fas fa-tree fa-stack-1x fa-inverse"></i>
					</span>
					<h4 class="my-3">여행</h4>
					<p class="text-muted">
						반려동물과 함께 갈 수 있는 <br> 식당, 카페, 편의시설을 추천해드려요 !
					</p>
				</div>
				<div class="col-md-4">
					<span class="fa-stack fa-4x"> <i
						class="fas fa-circle fa-stack-2x text-primary"></i> <i
						class="fas fa-notes-medical fa-stack-1x fa-inverse"></i>
					</span>
					<h4 class="my-3">건강</h4>
					<p class="text-muted">
						반려동물의 병원예약, 미용실 예약, <br> 유치원 및 호텔 예약을 도와드려요 !
					</p>
				</div>
				<div class="col-md-4">
					<span class="fa-stack fa-4x"> <i
						class="fas fa-circle fa-stack-2x text-primary"></i> <i
						class="fas fa-comments fa-stack-1x fa-inverse"></i>
					</span>
					<h4 class="my-3">커뮤니티</h4>
					<p class="text-muted">
						반려동물의 사랑스러운 사진을 올려 <br>다른 반려인들과 소통해보세요 !
					</p>
				</div>
			</div>
		</div>
	</section>
	<!-- Team-->
	<section class="page-section bg-light" id="team">
		<div class="container">
			<div class="text-center">
				<h2 class="section-heading text-uppercase">Our Amazing Team</h2>
				<h3 class="section-subheading text-muted">미래의 아들딸들아 기다려라 훌륭한
					개발자가 될테니.</h3>
			</div>
			<div class="row">
				<div class="col-lg-3">
					<div class="team-member">
						<img class="mx-auto rounded-circle"
							src="assets/img/team/UNOKIMPIC.png" alt="..." />
						<h4>Kim Eun Ho</h4>
						<p class="text-muted">Lead Developer</p>
						<a class="btn btn-dark btn-social mx-2"
							href="https://github.com/uno-km" target="_blank"><i
							class="fab fa-github"></i></a> <a
							class="btn btn-dark btn-social mx-2" data-bs-toggle="modal"
							data-bs-target="#kim"><i class="fab fa-diaspora"></i></a>
					</div>
				</div>
				<div class="col-lg-3">
					<div class="team-member">
						<img class="mx-auto rounded-circle"
							src="assets/img/team/MINPIC.png" alt="..." />
						<h4>Min Seung Jun</h4>
						<p class="text-muted">Developer</p>
						<a class="btn btn-dark btn-social mx-2"
							href="https://github.com/tmdwns0531" target="_blank"><i
							class="fab fa-github"></i></a> <a
							class="btn btn-dark btn-social mx-2" data-bs-toggle="modal"
							data-bs-target="#min"><i class="fab fa-diaspora"></i></a>
					</div>
				</div>
				<div class="col-lg-3">
					<div class="team-member">
						<img class="mx-auto rounded-circle"
							src="assets/img/team/PARKPIC.png" alt="..." />
						<h4>Park Ji Su</h4>
						<p class="text-muted">Developer</p>
						<a class="btn btn-dark btn-social mx-2"
							href="https://github.com/junglegym999" target="_blank"><i
							class="fab fa-github"></i></a> <a
							class="btn btn-dark btn-social mx-2" data-bs-toggle="modal"
							data-bs-target="#park"><i class="fab fa-diaspora"></i></a>
					</div>
				</div>
				<div class="col-lg-3">
					<div class="team-member">
						<img class="mx-auto rounded-circle"
							src="assets/img/team/BAEKPIC.png" alt="..." />
						<h4>Baek Chan Ho</h4>
						<p class="text-muted">Developer</p>
						<a class="btn btn-dark btn-social mx-2"
							href="https://github.com/hodori33" target="_blank"><i
							class="fab fa-github"></i></a> <a
							class="btn btn-dark btn-social mx-2" data-bs-toggle="modal"
							data-bs-target="#baek"><i class="fab fa-diaspora"></i></a>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-8 mx-auto text-center">
					<p class="large text-muted">산을 움직이려 하는 이는 작은 돌을 들어내는 일로 시작한다.
						-공자-</p>
				</div>
			</div>
		</div>
	</section>
	<!-- Footer-->
	<footer class="footer py-4">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-4 text-lg-start">Copyright &copy; Our First
					Team Project by green A.C 2021</div>
				<div class="col-lg-4 my-3 my-lg-0">
					<a class="btn btn-dark btn-social mx-2"
						href="https://github.com/greenteamtest"><i
						class="fab fa-github"></i></a>
				</div>
				<div class="col-lg-4 text-lg-end">
					<a class="link-dark text-decoration-none me-3" href="#!">약관보기</a> <a
						class="link-dark text-decoration-none"
						href="mypageServlet?command=memberLounge">고객센터</a>
				</div>
			</div>
		</div>
	</footer>
	<!-- 김은호 모달 -->
	<div class="modal fade" id="kim" data-bs-backdrop="static"
		data-bs-keyboard="false" tabindex="-1"
		aria-labelledby="staticBackdropLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="staticBackdropLabel">Modal title</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">...</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	<!-- 민승준 모달 -->
	<div class="modal fade" id="min" data-bs-backdrop="static"
		data-bs-keyboard="false" tabindex="-1"
		aria-labelledby="staticBackdropLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<!-- 내용채워넣는곳  -->
				<div class="modal-header">
					<h5 class="modal-title" id="staticBackdropLabel">제목을 입력하는곳</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">민승준)본인이 작업한 내용이라던가 본인 설명</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	<!--  박지수 모달 -->
	<div class="modal fade" id="park" data-bs-backdrop="static"
		data-bs-keyboard="false" tabindex="-1"
		aria-labelledby="staticBackdropLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<!-- 내용채워넣는곳  -->
				<div class="modal-header">
					<h5 class="modal-title" id="staticBackdropLabel">소개</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">늘 Next Level을 꿈꾸는, 광야의 뉴비 개발자 박지수 입니다 <br>
				(주특기: ... )</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	<!--  백찬호 모달 -->
	<div class="modal fade" id="baek" data-bs-backdrop="static"
		data-bs-keyboard="false" tabindex="-1"
		aria-labelledby="staticBackdropLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<!-- 내용채워넣는곳  -->
				<div class="modal-header">
					ㅎ
					<h5 class="modal-title" id="staticBackdropLabel">제목을 입력하는곳</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div cl0ass="modal-body">백찬호)본인이 작업한 내용이라던가 본인 설명</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
