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
							<li class="nav-item"><a class="nav-link "
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
							<li class="nav-item"><a class="nav-link active"
								href="mypageServlet?command=managerPageStaff"> <span
									data-feather="users"></span>근태관리 #휴가
							</a></li>
							<li class="nav-item"><a class="nav-link"
								href="mypageServlet?command=managerPageStaff"> <span
									data-feather="layers"></span>업무연동
							</a></li>

						</ul>
					</div>
				</nav>
				<div
					class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
					<div class="btn-toolbar mb-2 mb-md-0"></div>
				</div>
				<div class="row">
					<h2>#근태관리 #휴가</h2>
				</div>
				<div
					class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
					<div class="btn-toolbar mb-2 mb-md-0"></div>
				</div>
				<div class="container">
					<div class="row">
						<div class="col">
							<div class="d-grid gap-3">
								<button type="button" class="btn btn-primary btn-lg"
									data-bs-toggle="modal" data-bs-target="#requestOvertime">
									시간외근무 신청하기</button>
								<button type="button" class="btn btn-primary btn-lg"
									data-bs-toggle="modal" data-bs-target="#viewOvertime">
									시간외근무 내역보기</button>
							</div>
						</div>
						<div class="col"></div>
						<div class="col">
							<div class="d-grid gap-3">
								<button type="button" class="btn btn-primary btn-lg"
									data-bs-toggle="modal" data-bs-target="#requestVacation">
									휴가신청하기</button>
								<button type="button" class="btn btn-primary btn-lg"
									data-bs-toggle="modal" data-bs-target="#viewVacation">
									휴가신청내역보기</button>
							</div>
						</div>
					</div>
				</div>
				<div
					class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
					<div class="btn-toolbar mb-2 mb-md-0"></div>
				</div>
				<div class="table-responsive">
					<table class="table table-striped table-sm">
						<thead>
							<tr>
								<th scope="col">#</th>
								<th scope="col">Header</th>
								<th scope="col">Header</th>
								<th scope="col">Header</th>
								<th scope="col">Header</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1,001</td>
								<td>random</td>
								<td>data</td>
								<td>placeholder</td>
								<td>text</td>
							</tr>
							<tr>
								<td>1,002</td>
								<td>placeholder</td>
								<td>irrelevant</td>
								<td>visual</td>
								<td>layout</td>
							</tr>
							<tr>
								<td>1,003</td>
								<td>data</td>
								<td>rich</td>
								<td>dashboard</td>
								<td>tabular</td>
							</tr>
							<tr>
								<td>1,003</td>
								<td>information</td>
								<td>placeholder</td>
								<td>illustrative</td>
								<td>data</td>
							</tr>
							<tr>
								<td>1,004</td>
								<td>text</td>
								<td>random</td>
								<td>layout</td>
								<td>dashboard</td>
							</tr>
							<tr>
								<td>1,005</td>
								<td>dashboard</td>
								<td>irrelevant</td>
								<td>text</td>
								<td>placeholder</td>
							</tr>
							<tr>
								<td>1,006</td>
								<td>dashboard</td>
								<td>illustrative</td>
								<td>rich</td>
								<td>data</td>
							</tr>
							<tr>
								<td>1,007</td>
								<td>placeholder</td>
								<td>tabular</td>
								<td>information</td>
								<td>irrelevant</td>
							</tr>
							<tr>
								<td>1,008</td>
								<td>random</td>
								<td>data</td>
								<td>placeholder</td>
								<td>text</td>
							</tr>
							<tr>
								<td>1,009</td>
								<td>placeholder</td>
								<td>irrelevant</td>
								<td>visual</td>
								<td>layout</td>
							</tr>
							<tr>
								<td>1,010</td>
								<td>data</td>
								<td>rich</td>
								<td>dashboard</td>
								<td>tabular</td>
							</tr>
							<tr>
								<td>1,011</td>
								<td>information</td>
								<td>placeholder</td>
								<td>illustrative</td>
								<td>data</td>
							</tr>
							<tr>
								<td>1,012</td>
								<td>text</td>
								<td>placeholder</td>
								<td>layout</td>
								<td>dashboard</td>
							</tr>
							<tr>
								<td>1,013</td>
								<td>dashboard</td>
								<td>irrelevant</td>
								<td>text</td>
								<td>visual</td>
							</tr>
							<tr>
								<td>1,014</td>
								<td>dashboard</td>
								<td>illustrative</td>
								<td>rich</td>
								<td>data</td>
							</tr>
							<tr>
								<td>1,015</td>
								<td>random</td>
								<td>tabular</td>
								<td>information</td>
								<td>text</td>
							</tr>
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

<!-- 모달 초과근무 신청 -->
<form>
<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static"
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
				<button type="button" class="btn btn-primary">Understood</button>
			</div>
		</div>
	</div>
</div>
</form>
