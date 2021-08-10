<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/bootstrap/boot.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
<script src="js/scripts.js"></script>
<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
<style>
.small1 {
	width: 100px;
}

.gray {
	color: #C0C0C0
}
</style>
<nav class="navbar navbar-expand-lg navbar-dark bg-secondary fixed-top"
	id="mainNav">
	<div class="container">
		<a class="navbar-brand" href="#page-top"><img
			src="assets/img/mungnang.jpg" alt="..."
			onclick="location.href='index.jsp'" /></a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarResponsive" aria-controls="navbarResponsive"
			aria-expanded="false" aria-label="Toggle navigation">
			Menu <i class="fas fa-bars ms-1"></i>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0">
				<c:if test="${!empty loginUser}">
					<li class="nav-item"><a class="nav-link" align="center">🐶🐱
							${loginUser.nickname}님, 환영합니당.🐶🐱 </a></li>
				</c:if>
				<c:if test="${!empty loginUser}">
					<button type="button" class="btn btn-warning position-relative "
						data-bs-toggle="modal" data-bs-target="#check_notification"
						data-bs-toggle="tooltip" data-bs-placement="top"
						title="읽지않은 알람을 확인하세요">
						알림
						<c:if test="${unchecked!=0}">
							<span
								class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
								${unchecked}<span class="visually-hidden">unread messages</span>
							</span>
						</c:if>
					</button>
				</c:if>
				<div>&nbsp;&nbsp;&nbsp;&nbsp;</div>
				<c:if test="${empty loginUser}">
					<li class="nav-item"><a class="nav-link"
						href="mypageServlet?command=loginpage
" data-bs-toggle="tooltip"
						data-bs-placement="top" title="함께해요!">로그인</a> <!-- 					<li class="nav-item"><a class="nav-link" -->
						<!-- 						data-bs-toggle="modal" data-bs-target="#login" --> <!-- 						data-bs-toggle="tooltip" data-bs-placement="top" title="함께해요!">로그인</a> -->
				</c:if>
				<c:if test="${!empty loginUser}">
					<li class="nav-item"><a class="nav-link" href="logout.do"
						data-bs-toggle="tooltip" data-bs-placement="top" title="정말 나가시게요?">로그아웃</a>
					</li>
				</c:if>
				<!-- 				<li class="nav-item"><a class="nav-link" href="#about">회원가입</a></li> -->
				<c:if test="${loginUser.auth==0}">
					<li class="nav-item"><a class="nav-link"
						data-bs-toggle="tooltip"
						href="mypageServlet?command=userPage&email=${loginUser.email} "
						data-bs-placement="top" title="좀 더 가까이와요">마이페이지</a></li>
				</c:if>
				<c:if test="${loginUser.auth==1}">
					<li class="nav-item"><a class="nav-link"
						data-bs-toggle="tooltip"
						href="mypageServlet?command=userPage&email=${loginUser.email}"
						data-bs-placement="top" title="좀 더 가까이와요">마이페이지</a></li>
					<li class="nav-item"><a class="nav-link"
						href="mypageServlet?command=businessPage" data-bs-toggle="tooltip"
						data-bs-placement="top" title="효율적으로 관리해봐요">사업장관리</a></li>
				</c:if>
				<c:if test="${loginUser.auth==2}">
					<li class="nav-item"><a class="nav-link"
						href="mypageServlet?command=managerPage" data-bs-toggle="tooltip"
						data-bs-placement="top" title="명심! 사용자들을 위한 운영!">페이지관리</a></li>
				</c:if>
				<c:if test="${loginUser.auth==3}">
					<li class="nav-item"><a class="nav-link"
						href="mypageServlet?command=managerPage" data-bs-toggle="tooltip"
						data-bs-placement="top" title="명심! 사용자들을 위한 운영!">페이지관리</a></li>
				</c:if>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" id="navbarDropdownMenuLink"
					role="button" data-bs-toggle="dropdown" aria-expanded="false">
						바로가기 </a>
					<ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
						<li><h6 class="dropdown-header">요기오때?</h6></li>
						<li><a class="dropdown-item"
							href="BoardServlet_picnic?command=picnic">Picnic </a></li>
						<li><a class="dropdown-item"
							href="controller.do?command=main">Health & Edu</a></li>
						<li><hr class="dropdown-divider"></li>
						<li><h6 class="dropdown-header">함께해요!</h6></li>
						<li><a class="dropdown-item"
							href="Community_BoardServlet?command=board_list">Community</a></li>
						<li><a class="dropdown-item"
							href="mediaServlet?command=mediamain">Media</a></li>
						<li><a class="dropdown-item"
							href="BoardServlet_picnic?command=abandonment_search">Abandoned
								pets</a></li>
						<li><hr class="dropdown-divider"></li>
						<li><h6 class="dropdown-header">고객센터</h6></li>
						<li><a class="dropdown-item"
							href="mypageServlet?command=memberLounge">FAQ</a></li>

						<li><a class="dropdown-item"
							href="mypageServlet?command=secret">비밀버튼</a></li>
					</ul></li>
			</ul>
		</div>
	</div>
</nav>
<!-- Modal -->
<div class="modal fade modal-dialog-scrollable " id="check_notification"
	tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="check_notificationLabel" align="center">새글알림</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<br>
			<h5>미디어 댓글소식</h5>
			<div style="overflow: auto; height: 150px; width: 100%;">
				<c:forEach var="media_list" items="${media_list}">
					<div class="alert alert-primary d-flex align-items-center"
						role="alert">
						<strong>${media_list.user_email_media}</strong>님이 <strong>
							${media_list.num_media}</strong> 에 댓글을 남겼어요!!
						<!-- 						<button class="btn btn-warning">확인</button> -->
					</div>
				</c:forEach>
			</div>
			<hr>


			<h5>커뮤니티 댓글소식</h5>
			<div style="overflow: auto; height: 150px; width: 100%;">
				<c:forEach var="board_list" items="${board_list}">
					<div class="container">
						<div class="row">
							<div class="alert alert-primary d-flex align-items-center"
								role="alert">
								<strong>${board_list.manageremail}</strong>님이 답변을 남겼어요!!
								<!-- 							<button class="btn btn-warning">확인</button> -->
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
			<hr>
			<h5>문의내용 답변</h5>
			<div style="overflow: auto; height: 150px; width: 100%;">
				<c:forEach var="board_list" items="${board_list}">
					<div class="container">
						<div class="row">
							<div class="alert alert-primary d-flex align-items-center"
								role="alert">
								<strong>${board_list.manageremail}</strong>님이 문의내용에 답변을 했어요!
								<!-- 								<button class="btn btn-warning">확인</button> -->
							</div>

						</div>
					</div>
				</c:forEach>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary"
					data-bs-dismiss="modal">닫기</button>
				<button type="button" class="btn btn-Danger"
					data-bs-toggle="tooltip" data-bs-placement="top"
					title="하나하나 보시는것도 좋아요">모두 읽음 처리</button>
			</div>
		</div>
	</div>
</div>
<!--  로그인 모달(나중에 에이젝스나 리엑트 공부할때 쓰면좋을것같다) -->
<form>
	<div class="modal fade" id="login" aria-hidden="true"
		aria-labelledby="exampleModalToggleLabel" tabindex="-1">
		<div class="modal-dialog modal-dialog-centered modal modal-sm">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalToggleLabel">로그인</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<img class="mb-4" src="img/logo.png" alt="" width="100" width="72"
						height="57">
					<div class="container">
						<div class="d-grid gap-2">
							<div class="form-floating">

								<input type="email" class="form-control" id="floatingInput"
									name="email" value="${user_email}"
									placeholder="name@example.com"> <label
									for="floatingInput">🐶이메일주소입력🐱</label>
							</div>
							<div class="form-floating">
								<input type="password" class="form-control"
									id="floatingPassword" value="${user_pwd}" name="pwd"
									placeholder="Password"> <label for="floatingPassword">🐶비밀번호입력🐱</label>
							</div>
							<button class="btn btn-warning" type="submit"
								onclick="return loginCheck()">입장하기</button>
							<button class="btn btn-warning" type="button"
								onclick="location.href='join.do'">회원가입</button>
						</div>
						<div class="d-grid gap-2"></div>
						<div>
							<div class="modal-footer">
								<div class="card">
									<div class="card-body">${message}</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</form>