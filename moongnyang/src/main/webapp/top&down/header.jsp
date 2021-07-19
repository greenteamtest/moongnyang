<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
					<li class="nav-item"><a class="nav-link" href="logout.do">ヽ(=^･ω･^=)丿${loginUser.nickname}님,
							환영한다옹(▽◕ ᴥ ◕▽) 
				</c:if>
				<c:if test="${!empty loginUser}">
					<li class="nav-item"><a class="nav-link" href="#services">알림</a></li>
				</c:if>
				<c:if test="${empty loginUser}">
					<li class="nav-item"><a class="nav-link" href="login.do">로그인



					
				</c:if>
				<c:if test="${!empty loginUser}">
					<li class="nav-item"><a class="nav-link" href="logout.do">로그아웃
					
				</c:if>
				</a>
				</li>
				<!-- 				<li class="nav-item"><a class="nav-link" href="#about">회원가입</a></li> -->
				<c:if test="${loginUser.auth==0}">
					<li class="nav-item"><a class="nav-link" href="userPage.do">마이페이지</a></li>
				</c:if>
				<c:if test="${loginUser.auth==1}">
					<li class="nav-item"><a class="nav-link" href="userPage.do">${loginUser.auth}사업자관리</a></li>
				</c:if>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" id="navbarDropdownMenuLink"
					role="button" data-bs-toggle="dropdown" aria-expanded="false">
						바로가기 </a>
					<ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
						<li><a class="dropdown-item" href="#">Picnic</a></li>
						<li><a class="dropdown-item" href="#">Health & Edu</a></li>
						<li><a class="dropdown-item" href="#">Community</a></li>
					</ul></li>
			</ul>
		</div>
	</div>
</nav>