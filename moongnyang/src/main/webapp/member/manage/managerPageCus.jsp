<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/member/manage/bar/managerHaeder.jsp"%>
<%@ include file="/member/manage/bar/managerSidebar.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
							<li class="nav-item"><a class="nav-link "
								aria-current="page" href="mypageServlet?command=managerPage">
									<span data-feather="home"></span> Dashboard
							</a></li>
							<li class="nav-item"><a class="nav-link active"
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

				<div
					class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
					<div class="btn-toolbar mb-2 mb-md-0"></div>
				</div>
				<h6>#사용자들의 #소중한 #의견들 #소통</h6>
				<h1>고객소리함</h1>
				<div style="overflow: scroll; height: 400px;">
					<div class="table-responsive">
						<table class="table table-striped table-sm">
							<thead>
								<tr>
									<th scope="col">순번</th>
									<th scope="col">이메일</th>
									<th scope="col">키워드</th>
									<th scope="col">내용</th>
									<th scope="col">작성날짜</th>
									<th scope="col">읽음유무</th>
								</tr>
							</thead>
							<tbody>

								<c:forEach var="board" items="${boardList}">
									<tr>
										<td>${board.num}</td>
										<td><a
											href="mypageServlet?command=customerreadBoard&num=${board.num}">${board.email }</a></td>
										<td>${board.keyword }</td>
										<td>${board.content }</td>
										<td><fmt:formatDate value="${board.writedate}" /></td>
										<td><c:if test="${board.readval==0}">읽음</c:if> <c:if
												test="${board.readval==1}">읽지않음</c:if></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
				<div
					class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
					<div class="btn-toolbar mb-2 mb-md-0"></div>
				</div>
				<div class="row">

					<div class="col">
						<div>
							<h2>#사용자List #고마우신분들</h2>
						</div>
						<div style="overflow: scroll; height: 300px;">
							<table class="table table-dark table-hover">
								<tread>
								<tr>
									<th scope="col">별명</th>
									<th scopr="col">이메일</th>
								</tr>
								</tread>
								<tbody>
									<c:forEach var="user" items="${userList}">
										<tr>
											<td>${user.user_nick}</td>
											<td>${user.email}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>

					</div>

					<div class="col">
						<div>
							<h2>#사업자List #고마우신분들</h2>
						</div>
						<div style="overflow: scroll; height: 300px;">
							<table class="table table-success table-striped">

								<tread>
								<tr>
									<th scope="col">별명</th>
									<th scopr="col">이메일</th>
								</tr>
								</tread>
								<tbody>
									<c:forEach var="user" items="${busiList}">
										<tr>
											<td>${user.user_nick}</td>
											<td>${user.email}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>

					</div>
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




