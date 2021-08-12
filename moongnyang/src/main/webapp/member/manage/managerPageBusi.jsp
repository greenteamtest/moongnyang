<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/member/manage/bar/managerHaeder.jsp"%>
<%@ include file="/member/manage/bar/managerSidebar.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ include file="/semanticUI/semanticUI.jsp"%>
<%@ include file="/jQuery/jquery.jsp"%>

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
<script defer src="member/manage/reg_approve.js" type="text/javascript"></script>



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

#sidebarMenu a {
	font-size: 1.1rem;
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
							<li class="nav-item"><a class="nav-link active"
								href="mypageServlet?command=managerPageBusi "> <span
									data-feather="shopping-cart"></span> 사업자신청관리
							</a></li>
							<li class="nav-item"><a class="nav-link"
								href="mypageServlet?command=managerPageStaff&email=${loginUser.email}">
									<span data-feather="users"></span> 근태관리 #휴가
							</a></li>
						</ul>
					</div>
				</nav>


				<div
					class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
					<div class="btn-toolbar mb-2 mb-md-0"></div>
				</div>
				<h2 style="font-size: 2rem;">사업자신청관리</h2>
				<div style="overflow: scroll; height: 200px;">
					<div class="table-responsive">
						<table class="table table-striped table-sm">
							<thead style="font-size: 1.2rem">
								<tr class="recode">
									<th scope="col">번호</th>
									<th scope="col">이메일</th>
									<th scope="col">내용</th>
									<th scope="col">업체명</th>
									<th scope="col">Key</th>
									<th scope="col">시간</th>
									<th scope="col">읽음확인</th>
								</tr>
							</thead>

							<tbody>

								<c:forEach var="board" items="${boardList}">
									<tr>
										<td>${board.num}</td>
										<td><a
											href="mypageServlet?command=businessReadBoard&email=${board.email}">${board.email }</a></td>
										<td>${board.content }</td>
										<td>${board.place_name }</td>
										<td>${board.place_key }</td>
										<td><fmt:formatDate value="${board.writedate}" /></td>
										<td><c:if test="${board.readval==0}">읽음</c:if> <c:if
												test="${board.readval==1}">읽지않음</c:if></td>
									</tr>
								</c:forEach>

							</tbody>


						</table>
					</div>
				</div>
				<!-- 사업장 신청 현황 목록 -->
				<table class="ui compact celled definition table">
					<thead>
						<tr>
							<th></th>
							<th>카테고리</th>
							<th>사업장명</th>
							<th>전화번호</th>
							<th style="width: 20rem;">사업장 주소</th>
							<th>오픈 시간</th>
							<th style="width: 30rem;">사업장 소개</th>
							<th>동반가능 반려동물</th>
							<th>대표 URL</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="reg" items="${reg_status}">
							<input type="hidden" value="${reg.getIdx()}" />
							<tr class="tr">
								<td class="collapsing">
									<div class="ui fitted slider checkbox">
										<input type="checkbox"> <label></label>
									</div>
								</td>
								<td>${reg.getField()}</td>
								<td>${reg.getPlace()}</td>
								<td>${reg.getPhone_num()}</td>
								<td>${reg.getAddress()}</td>
								<td>${reg.getOpen_time()}</td>
								<td>${reg.getIntroduce()}</td>
								<td>${reg.getPet_kind()}</td>
								<td>${reg.getSharing_url()}</td>
							</tr>
						</c:forEach>

					</tbody>
					<tfoot class="full-width">
						<tr>
							<th></th>
							<th colspan="4">
								<div class="ui small button approveAll">모두 승인</div>
								<div class="ui small button approve">승인</div>
								<div class="ui small button reject">거절</div>
							</th>
						</tr>
					</tfoot>
				</table>
			</main>



		</div>
	</div>

	<!-- Modal -->
	<div class="modal fade alert" id="alert" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">알림</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body"></div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary yes"
						data-bs-dismiss="modal">네</button>
					<button type="button" class="btn btn-primary no">아니요</button>
				</div>
			</div>
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


<!-- 모달 부분 -->
<!-- Button trigger modal -->


<!-- Modal -->