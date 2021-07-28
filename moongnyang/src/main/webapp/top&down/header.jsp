<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../bootstrap/boot.jsp"%>
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
						알림 <span
							class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
							${unread_count}10 <span class="visually-hidden">unread
								messages</span>
						</span>
					</button>
				</c:if>
				<div>&nbsp;&nbsp;&nbsp;&nbsp;</div>
				<c:if test="${empty loginUser}">
					<li class="nav-item"><a class="nav-link" href="login.do"
						data-bs-toggle="tooltip" data-bs-placement="top" title="함께해요!">로그인</a>
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
						href="mypageServlet?command=userPage&email=${loginUser.email}"
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
						<li><h6 class="dropdown-header">카테고리</h6></li>
						<li><a class="dropdown-item"
							href="BoardServlet_picnic?command=picnic">Picnic</a></li>
						<li><a class="dropdown-item" href="health&edu/main.jsp">Health
								& Edu</a></li>
						<li><a class="dropdown-item" href="#">Community</a></li>
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
			<div class="modal-body">
				<div class="container">
					<div class="row">
						<div class="col-sm-8">
							<div class="alert alert-primary d-flex align-items-center"
								role="alert">
								<strong>####</strong>님이 당신의 글에 댓글을 남겼어요!!
							</div>
						</div>
						<div class="col-sm-4">
							<button class="btn btn-outline-success">확인버튼</button>
						</div>
					</div>
				</div>
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