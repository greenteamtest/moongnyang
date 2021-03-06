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
					<li class="nav-item"><a class="nav-link" align="center">πΆπ±
							${loginUser.nickname}λ, νμν©λλΉ.πΆπ± </a></li>
				</c:if>
				<c:if test="${!empty loginUser}">
					<button type="button" class="btn btn-warning position-relative "
						data-bs-toggle="modal" data-bs-target="#check_notification"
						data-bs-toggle="tooltip" data-bs-placement="top"
						title="μ½μ§μμ μλμ νμΈνμΈμ">
						μλ¦Ό
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
						data-bs-placement="top" title="ν¨κ»ν΄μ!">λ‘κ·ΈμΈ</a> <!-- 					<li class="nav-item"><a class="nav-link" -->
						<!-- 						data-bs-toggle="modal" data-bs-target="#login" --> <!-- 						data-bs-toggle="tooltip" data-bs-placement="top" title="ν¨κ»ν΄μ!">λ‘κ·ΈμΈ</a> -->
				</c:if>
				<c:if test="${!empty loginUser}">
					<li class="nav-item"><a class="nav-link" href="logout.do"
						data-bs-toggle="tooltip" data-bs-placement="top" title="μ λ§ λκ°μκ²μ?">λ‘κ·Έμμ</a>
					</li>
				</c:if>
				<!-- 				<li class="nav-item"><a class="nav-link" href="#about">νμκ°μ</a></li> -->
				<c:if test="${loginUser.auth==0}">
					<li class="nav-item"><a class="nav-link"
						data-bs-toggle="tooltip"
						href="mypageServlet?command=userPage&email=${loginUser.email} "
						data-bs-placement="top" title="μ’ λ κ°κΉμ΄μμ">λ§μ΄νμ΄μ§</a></li>
				</c:if>
				<c:if test="${loginUser.auth==1}">
					<li class="nav-item"><a class="nav-link"
						data-bs-toggle="tooltip"
						href="mypageServlet?command=userPage&email=${loginUser.email}"
						data-bs-placement="top" title="μ’ λ κ°κΉμ΄μμ">λ§μ΄νμ΄μ§</a></li>
					<li class="nav-item"><a class="nav-link"
						href="mypageServlet?command=businessPage" data-bs-toggle="tooltip"
						data-bs-placement="top" title="ν¨μ¨μ μΌλ‘ κ΄λ¦¬ν΄λ΄μ">μ¬μμ₯κ΄λ¦¬</a></li>
				</c:if>
				<c:if test="${loginUser.auth==2}">
					<li class="nav-item"><a class="nav-link"
						href="mypageServlet?command=managerPage" data-bs-toggle="tooltip"
						data-bs-placement="top" title="λͺμ¬! μ¬μ©μλ€μ μν μ΄μ!">νμ΄μ§κ΄λ¦¬</a></li>
				</c:if>
				<c:if test="${loginUser.auth==3}">
					<li class="nav-item"><a class="nav-link"
						href="mypageServlet?command=managerPage" data-bs-toggle="tooltip"
						data-bs-placement="top" title="λͺμ¬! μ¬μ©μλ€μ μν μ΄μ!">νμ΄μ§κ΄λ¦¬</a></li>
				</c:if>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" id="navbarDropdownMenuLink"
					role="button" data-bs-toggle="dropdown" aria-expanded="false">
						λ°λ‘κ°κΈ° </a>
					<ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
						<li><h6 class="dropdown-header">μκΈ°μ€λ?</h6></li>
						<li><a class="dropdown-item"
							href="BoardServlet_picnic?command=picnic">Picnic </a></li>
						<li><a class="dropdown-item"
							href="controller.do?command=main">Health & Edu</a></li>
						<li><hr class="dropdown-divider"></li>
						<li><h6 class="dropdown-header">ν¨κ»ν΄μ!</h6></li>
						<li><a class="dropdown-item"
							href="Community_BoardServlet?command=board_list">Community</a></li>
						<li><a class="dropdown-item"
							href="mediaServlet?command=mediamain&email=${loginUser.email}">Media</a></li>
						<li><a class="dropdown-item"
							href="BoardServlet_picnic?command=abandonment_search">Abandoned
								pets</a></li>
						<li><hr class="dropdown-divider"></li>
						<li><h6 class="dropdown-header">κ³ κ°μΌν°</h6></li>
						<li><a class="dropdown-item"
							href="mypageServlet?command=memberLounge">FAQ</a></li>

						<!-- 						<li><a class="dropdown-item" -->
						<!-- 							href="mypageServlet?command=secret">λΉλ°λ²νΌ</a></li> -->
						<!-- 					</ul></li> -->
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
				<h5 class="modal-title" id="check_notificationLabel" align="center">μκΈμλ¦Ό</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<br>
			<h5>λ―Έλμ΄ λκΈμμ</h5>
			<div style="overflow: auto; height: 150px; width: 100%;">
				<c:forEach var="media_list" items="${media_list}">
					<div class="alert alert-primary d-flex align-items-center"
						role="alert">
						<strong>${media_list.user_email_media}</strong>λμ΄ <strong>
							${media_list.num_media}</strong> μ λκΈμ λ¨κ²Όμ΄μ!!
						<!-- 						<button class="btn btn-warning">νμΈ</button> -->
					</div>
				</c:forEach>
			</div>
			<hr>


			<h5>μ»€λ?€λν° λκΈμμ</h5>
			<div style="overflow: auto; height: 150px; width: 100%;">
				<c:forEach var="community_list" items="${community_list}">
					<div class="container">
						<div class="row">
							<div class="alert alert-primary d-flex align-items-center"
								role="alert">
								<strong>${community_list.board_user_email}</strong>λμ΄ λ΅λ³μ λ¨κ²Όμ΄μ!!
								<!-- 							<button class="btn btn-warning">νμΈ</button> -->
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
			<hr>
			<h5>λ¬Έμλ΄μ© λ΅λ³</h5>
			<div style="overflow: auto; height: 150px; width: 100%;">
				<c:forEach var="board_list" items="${board_list}">
					<div class="container">
						<div class="row">
							<div class="alert alert-primary d-flex align-items-center"
								role="alert">
								<strong>${board_list.manageremail}</strong>λμ΄ λ¬Έμλ΄μ©μ λ΅λ³μ νμ΄μ!
								<!-- 								<button class="btn btn-warning">νμΈ</button> -->
							</div>

						</div>
					</div>
				</c:forEach>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary"
					data-bs-dismiss="modal">λ«κΈ°</button>
				<button type="button" class="btn btn-Danger"
					data-bs-toggle="tooltip" data-bs-placement="top"
					title="νλνλ λ³΄μλκ²λ μ’μμ">λͺ¨λ μ½μ μ²λ¦¬</button>
			</div>
		</div>
	</div>
</div>
<!--  λ‘κ·ΈμΈ λͺ¨λ¬(λμ€μ μμ΄μ μ€λ λ¦¬μνΈ κ³΅λΆν λ μ°λ©΄μ’μκ²κ°λ€) -->
<form>
	<div class="modal fade" id="login" aria-hidden="true"
		aria-labelledby="exampleModalToggleLabel" tabindex="-1">
		<div class="modal-dialog modal-dialog-centered modal modal-sm">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalToggleLabel">λ‘κ·ΈμΈ</h5>
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
									for="floatingInput">πΆμ΄λ©μΌμ£Όμμλ ₯π±</label>
							</div>
							<div class="form-floating">
								<input type="password" class="form-control"
									id="floatingPassword" value="${user_pwd}" name="pwd"
									placeholder="Password"> <label for="floatingPassword">πΆλΉλ°λ²νΈμλ ₯π±</label>
							</div>
							<button class="btn btn-warning" type="submit"
								onclick="return loginCheck()">μμ₯νκΈ°</button>
							<button class="btn btn-warning" type="button"
								onclick="location.href='join.do'">νμκ°μ</button>
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