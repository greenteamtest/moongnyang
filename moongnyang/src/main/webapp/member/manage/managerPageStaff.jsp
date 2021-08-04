<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/member/manage/bar/managerHaeder.jsp"%>
<%@ include file="/member/manage/bar/managerSidebar.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="./jquery-ui-1.12.1/jquery-ui.min.css">
<script src="./jquery-ui-1.12.1/jquery-ui.min.js"></script>
<script src="./jquery-ui-1.12.1/datepicker-ko.js"></script>
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
	<script type="text/javascript" src="js/login/member.js"></script>
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
				<c:if test="${loginUser.auth==3}">
					<div
						class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
						<div class="btn-toolbar mb-2 mb-md-0"></div>
					</div>
					<div class="row">
						<div class="col">
							<h2>#인사담당직원화면</h2>
						</div>
						<div class="col"></div>
					</div>
				</c:if>
				<div
					class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
					<div class="btn-toolbar mb-2 mb-md-0"></div>
				</div>
				<div class="row">
					<div class="col">
						<h2>#근태관리 #휴가</h2>
					</div>
					<div class="col">
						<c:if test="${!empty timeover}">
							<h6>현재상태 : 시간외 근무진행중</h6>
						</c:if>
						<c:if test="${empty timeover}">
							<h6>좋은하루보내세요</h6>
						</c:if>
					</div>
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
									data-bs-toggle="modal" data-bs-target="#requestOvertimeBefore">
									시간외근무 신청하기</button>
								<button type="button" class="btn btn-primary btn-lg"
									data-bs-toggle="modal" data-bs-target="#viewOvertime">
									시간외근무 내역보기</button>
							</div>
						</div>
						<!-- 						<div class="col"></div> -->
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

				<c:if test="${loginUser.auth==3}">
					<div class="row">
						<div class="col">
							<h2>사원List #관리</h2>
						</div>
						<div class="col"></div>
						<div class="col-auto">
							<label for="inputPassword2" class="visually-hidden">별명검색</label>
							<input type="text" class="form-control" id="search_timeover"
								placeholder="별명검색">
						</div>
						<div class="col-auto">
							<button type="submit" class="btn btn-primary mb-3">검색</button>
						</div>
						<div class="col-auto">
							<button type="button" class="btn btn-primary"
								data-bs-toggle="modal" data-bs-target="#insert_staff">
								추가/수정</button>
						</div>
					</div>
					<div class="table-responsive">
						<table class="table table-striped table-sm">
							<thead>
								<tr>
									<th scope="col">이메일</th>
									<th scope="col">별명</th>
									<th scope="col">등급조정</th>
									<th scope="col"></th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="staffmember" items="${staffmember}">

									<tr>
										<form action="staffServlet" method="post">
											<input type="hidden" value="change_staff_val" id="command"
												name="command">
											<td name="email">${staffmember.user_email}</td>
											<td>${staffmember.user_nick}</td>
											<td><select class="form-select" id="floatingSelect"
												name="val" aria-label="Floating label select example">
													<option selected>등급조정</option>
													<option value="1">평사원</option>
													<option value="2">팀장</option>
											</select></td>

											<td>
												<button type="submit" class="btn btn-primary">버튼</button>
											</td>
										</form>
									</tr>

								</c:forEach>
							</tbody>
						</table>
					</div>
					<div class="container">
						<div class="row">
							<div class="col"></div>
							<div class="col">
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
							<div class="col"></div>
						</div>
					</div>
					<div
						class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
						<div class="btn-toolbar mb-2 mb-md-0"></div>
					</div>

					<div class="row">
						<div class="col">
							<table class="table table-dark table-hover">
								<tr>
									<td>
										<h2>초과근무내역</h2>
									</td>
									<td><label for="inputPassword2" class="visually-hidden">별명검색</label>
										<input type="text" class="form-control" id="search_timeover"
										placeholder="별명검색"></td>
									<td>
										<button type="submit" class="btn btn-primary mb-3">검색</button>
									</td>
								</tr>
								<tread>
								<tr>
									<th scope="col">글번호</th>
									<th scope="col">별명</th>
									<th scope="col">시간/일정</th>
									<th scope="col">사유</th>
									<th scope="col">확인</th>
								</tr>
								</tread>
								<tbody>
									<c:forEach var="total_timeover" items="${total_timeover}">
										<tr>
											<td>${total_timeover.num_timeover}</td>
											<td>${total_timeover.user_nick_timeover}</td>
											<td>${total_timeover.date_timeover}</td>
											<td>${total_timeover.reason_timeover}</td>
											<td><button type="button">버튼</button></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						<div class="col">
							<table class="table table-success table-striped ">
								<tr>
									<td>
										<h2>휴가신청내역</h2>
									</td>
									<td><label for="inputPassword2" class="visually-hidden">별명검색</label>
										<input type="text" class="form-control" id="search_vacation"
										placeholder="별명검색"></td>
									<td>
										<button type="submit" class="btn btn-primary mb-3">검색</button>
									</td>
								</tr>
								<tread>
								<tr>
									<th scope="col">글번호</th>
									<th scope="col">별명</th>
									<th scope="col">기간</th>
									<th scope="col">종류</th>
									<th scope="col">확인</th>
								</tr>
								</tread>
								<tbody>
									<c:forEach var="total_vacation" items="${total_vacation}">
										<tr>
											<td>${total_vacation.num_vacation}</td>
											<td>${total_vacation.user_nick_vacation}</td>
											<td>${total_vacation.start_vacation}~${total_vacation.end_vacation}</td>
											<td>${total_vacation.val_vacation}</td>
											<td><button type="button">버튼</button></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</c:if>
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
<!-- 모달 사전신청 초과근무 신청 -->
<form action="staffServlet" method="post" name="start_timeover">
	<input type="hidden" name="command" value="start_timeover" id="command">
	<script type="text/javascript" src="js/login/manage.js"></script>

	<div class="modal fade" id="requestOvertimeBefore"
		data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
		aria-labelledby="requestOvertimeBefore" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">

					<h5 class="modal-title" id="staticBackdropLabel">
						시간외근무신청 <strong>#사전신청</strong> <input type="hidden"
							name="user_email_timeover" value="${loginUser.email}"
							id="user_email_timeover"> <input type="hidden"
							name="user_nick_timeover" value="${loginUser.nickname}"
							id="user_nick_timeover">
					</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="container">
					<br>
					<div class="row">
						<div class="col">
							<div class="d-grid gap-2">
								<button type="button" class="btn btn-primary">사전신청</button>
							</div>
						</div>
						<div class="col">
							<div class="d-grid gap-2">
								<button type="button" class="btn btn-primary"
									data-bs-dismiss="modal" data-bs-toggle="modal"
									data-bs-target="#requestOvertimeAfter">소급신청</button>
							</div>
						</div>
					</div>
				</div>

				<div class="modal-body">
					<div class="form-floating">
						<textarea class="form-control" placeholder="Leave a comment here"
							id="reason_timeover" name="reason_timeover" style="height: 200px"></textarea>
						<label for="floatingTextarea2">사유를 입력해주세요.</label>
						<h1 class="h1-clock"></h1>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">닫기</button>
					<!-- 					<button type="submit" class="btn btn-primary">신청하기</button> -->
					<button type="submit"
						onclick="location.href='staffServlet?
					command=start_timeover&user_email_timeover=${loginUser.email
						}'"
						class="btn btn-primary">신청하기</button>
					<button type="button"
						onclick="location.href='staffServlet?command=end_timeover&email=
						${loginUser.email}'"
						class="btn btn-primary">종료하기</button>
				</div>
			</div>
		</div>
	</div>
</form>
<!-- 모달 소급신청 초과근무 신청 -->
<form action="staffServlet" method="post" name="after_request_timeover">
	<input type="hidden" name="command" value="after_request_timeover"
		id="command"> <input type="hidden" name="user_email_timeover"
		value="${loginUser.email}" id="user_email_timeover"> <input
		type="hidden" name="user_nick_timeover" value="${loginUser.nickname}"
		id="user_nick_timeover">
	<div class="modal fade" id="requestOvertimeAfter"
		data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
		aria-labelledby="requestOvertimeAfter" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="staticBackdropLabel">
						시간외근무신청 <strong>#소급신청</strong>
					</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="container">
					<br>
					<div class="row">
						<div class="col">
							<div class="d-grid gap-2">
								<button type="button" class="btn btn-primary"
									data-bs-dismiss="modal" data-bs-toggle="modal"
									data-bs-target="#requestOvertimeBefore">사전신청</button>
							</div>
						</div>
						<div class="col">
							<div class="d-grid gap-2">
								<button type="button" class="btn btn-primary"
									data-bs-toggle="modal" data-bs-target="#requestOvertimeAfter">
									소급신청</button>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-body">
					<div class="input-group mb-3">
						<input type="text" class="form-control" name="date_timeover"
							id="date3" readonly aria-describedby="button-addon2"><input
							type="button" class="btn btn-outline-secondary" value="달력"
							onclick="$('#date3').datepicker('show');" />
					</div>

					<div class="container">
						<div class="row">
							<div class="col">
								<h6>시작시간</h6>
							</div>
							<div class="col">
								<input type="time" class="form-control" name="start_timeover">
							</div>
							<div class="col">
								<h6>종료시간</h6>
							</div>
							<div class="col">
								<input type="time" class="form-control" name="end_timeover">
							</div>
						</div>
					</div>
					<div>
						<br>
					</div>
					<h4>사유를 입력해주세요.</h4>
					<div class="form-floating">
						<textarea class="form-control" placeholder="사유입력"
							style="height: 200px" name="reason_timeover"></textarea>
						<label for="floatingTextarea2">사유입력</label>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">닫기</button>
					<button type="submit" class="btn btn-primary">초과근무 소급신청하기</button>
				</div>
			</div>
		</div>
	</div>
</form>
<!--  모달 초과근무 신청 내역보기 -->
<div class="modal fade" id="viewOvertime" tabindex="-1"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">시간외근무 신청내역</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="modal-body">
				<div class="container">
					<div class="row">
						<div class="col" align="center">신청날짜</div>
						<div class="col" align="center">인정시간</div>
						<div class="col" align="center">결과</div>
					</div>
				</div>
				<hr>
				<c:forEach var="timeover_ma" items="${timeover_ma}">
					<div class="container">
						<div class="row">
							<div class="col" align="center">
								<div class="alert alert-warning" role="alert">${timeover_ma.date_timeover}</div>
							</div>
							<div class="col" align="center">
								<div class="alert alert-warning" role="alert">${timeover_ma.end_timeover}
									~ ${timeover_ma.start_timeover}</div>
							</div>
							<div class="col" align="center">
								<div class="alert alert-warning" role="alert">${timeover_ma.check_timeover}</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary"
					data-bs-dismiss="modal">돌아가기</button>
			</div>
		</div>
	</div>
</div>

<!-- 모달 휴가신청 -->
<form action="staffServlet" method="post">
	<input type="hidden" name="command" value="request_vacation"
		id="command"> <input type="hidden" name="user_email_vacation"
		value="${loginUser.email}" id="user_email_vacation"> <input
		type="hidden" name="user_nick_vacation" value="${loginUser.nickname}"
		id="user_nick_vacation">
	<script type="text/javascript">
		//<![CDATA[
		$(function() {
			$("#date1").datepicker();
			$("#date2").datepicker();

			$("#date3").datepicker({
				onSelect : function(dateText, inst) {
					console.log(dateText);
					console.log(inst);
				}
			});
		});
		//]]>
	</script>
	<div class="modal fade" id="requestVacation" data-bs-backdrop="static"
		data-bs-keyboard="false" tabindex="-1"
		aria-labelledby="requestOvertimeBefore" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="staticBackdropLabel">휴가신청</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="container">
					<br>
					<h6>휴가유형</h6>
					<select class="form-select" aria-label="Default select example"
						name="val_vacation">
						<option value="연차" selected>연차</option>
						<option value="반차">반차</option>
						<option value="보상휴가">보상휴가</option>
						<option value="보건휴가">보건휴가</option>
					</select>
					<hr>
					<div class="row" align="center">
						<div class="col">
							<h6>
								<strong>시작일</strong>
							</h6>
						</div>
						<div class="col">
							<h6>
								<strong>종료일</strong>
							</h6>
						</div>
					</div>
					<div class="row">
						<div class="col">
							<input type="text" class="form-control" name="start_vacation"
								id="date1" readonly aria-describedby="button-addon2">

						</div>
						<div class="col">
							<input type="text" class="form-control" name="end_vacation"
								id="date2" readonly aria-describedby="button-addon2">
						</div>
					</div>
				</div>
				<div class="modal-body">
					<div class="form-floating">
						<textarea class="form-control" placeholder="Leave a comment here"
							id="floatingTextarea2" style="height: 100px"
							name="reason_vacation"></textarea>
						<label for="floatingTextarea2">보상 및 보건 휴가사용 시 설명 간단히
							작성해주세용</label>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">닫기</button>
					<button type="submit" class="btn btn-primary">신청하기</button>
				</div>
			</div>
		</div>
	</div>
</form>
<!-- 모달 직원추가 및 수정 -->
<form action="staffServlet" method="post">
	<input type="hidden" name="command" value="insert_staff" id="command">
	<input type="hidden" name="user_email" value="${loginUser.email}"
		id="user_email"> <input type="hidden" name="user_nick"
		value="${loginUser.nickname}" id="user_nick"> <input
		type="hidden" name="user_pwd" value="${loginUser.pwd}" id="user_pwd">
	<div class="modal fade" id="insert_staff" data-bs-backdrop="static"
		data-bs-keyboard="false" tabindex="-1"
		aria-labelledby="requestOvertimeBefore" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="staticBackdropLabel">직원추가/수정 #가족</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="container">
					<br>
					<h6>유형선택</h6>
					<select class="form-select" aria-label="Default select example"
						name="new_auth">
						<option value="2" selected>일반</option>
						<option value="3">인사담당자</option>
					</select>
					<hr>
					<div class="row" align="center">
						<div class="col">
							<div class="input-group mb-3">
								<input type="text" class="form-control"
									placeholder="별명/닉네임/애칭을 입력해주세요!!"
									aria-label="Recipient's username"
									aria-describedby="button-addon2" name="new_nick">
								<button class="btn btn-outline-secondary" type="button"
									id="button-addon2">중복확인</button>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col">
							<div class="input-group mb-3">
								<input type="text" class="form-control"
									placeholder="앞으로 사용하실 이메일을 입력해주세요!"
									aria-label="Recipient's username"
									aria-describedby="button-addon2" name="new_email">
								<button class="btn btn-outline-secondary" type="button"
									id="button-addon2">중복확인</button>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col">
							<div class="input-group mb-3">
								<span class="input-group-text" id="basic-addon1">비밀번호</span> <input
									type="text" class="form-control" placeholder="비밀번호를 입력해주세요! "
									aria-label="이메일을 입력해주세요!" aria-describedby="basic-addon1"
									name="new_pwd">
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col">
							<div class="input-group mb-3">
								<span class="input-group-text" id="basic-addon1">비밀번호확인</span> <input
									type="text" class="form-control"
									placeholder="확인을위해 한번더 입력해주세요! " aria-label="이메일을 입력해주세요!"
									aria-describedby="basic-addon1" name="check_pwd">
							</div>
						</div>
					</div>
				</div>

				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">닫기</button>
					<button type="submit" class="btn btn-primary">입력하기</button>
				</div>
			</div>
		</div>
	</div>
</form>
<!-- 모달 휴가신청내역 -->
<div class="modal fade" id="viewVacation" tabindex="-1"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">휴가신청내역</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="modal-body">
				<div class="container">
					<div class="row">
						<div class="col" align="center">휴가기간</div>
						<div class="col" align="center">휴가유형</div>
						<div class="col" align="center">결과</div>
					</div>
				</div>
				<hr>
				<c:forEach var="vacation" items="${vacation}">
					<div class="container">
						<div class="row">
							<div class="col" align="center">
								<div class="alert alert-warning" role="alert">${vacation.start_vacation}
									~ ${vacation.end_vacation}</div>
							</div>
							<div class="col" align="center">
								<div class="alert alert-warning" role="alert">${vacation.val_vacation}</div>
							</div>
							<div class="col" align="center">
								<div class="alert alert-warning" role="alert">${vacation.check_vacation}</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary"
					data-bs-dismiss="modal">돌아가기</button>
			</div>
		</div>
	</div>
</div>
