<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- Responsive navbar-->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container px-lg-5">
			<a class="navbar-brand" href="#!">moongnyang</a>
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
					<li class="nav-item">
						<div class="dropdown">
							<button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton1"
								data-bs-toggle="dropdown" aria-expanded="false">메뉴 보기</button>
							<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
								<li>
									<form>
										<a class="dropdown-item" href="${pageContext.request.contextPath}/index.jsp">홈으로</a>
									</form>
								</li>
								<li>
									<form name='frm1' class="frm1">
										<a class="dropdown-item approve">사업장 등록 신청</a>
										<input type="hidden" name="email" value="${loginUser.getEmail()}" />
										<input type="hidden" name="auth" value="${loginUser.getAuth()}" />
										<input type="hidden" name="command" value="viewBusinessPage" />
									</form>
								</li>
								<li>
									<form name='frm2' class="frm2">
										<a class="dropdown-item state">나의 사업장 등록 내역</a>
										<input type="hidden" name="email" value="${loginUser.getEmail()}" />
										<input type="hidden" name="auth" value="${loginUser.getAuth()}" />
										<input type="hidden" name="command" value="businessRegStatus" />
									</form>
								</li>
							</ul>
						</div>
					</li>
				</ul>
			</div>
		</div>

	</nav>
	<script>


$('.approve').click((e) => {
    
    const frm1 = document.frm1 ;
    
    if(frm1.email.value == null || frm1.email.value =="" ){
        alert('사업자 계정 로그인이 필요합니다');
        return;
    }
    
    if (Number(frm1.auth.value) <2 ) {
        alert('사업자 계정 로그인이 필요합니다');
        return;
    }
    
	frm1.method='post';
	frm1.action='controller.do?'
	frm1.submit();
})

$('.state').click(() => {
    
    const frm2 = document.frm2 ;
    
    if(frm2.email.value == null || frm2.email.value =="" ){
        alert('사업자 계정 로그인이 필요합니다');
        return;
    }

    if (Number(frm2.auth.value) <2 ) {
        alert('사업자 계정 로그인이 필요합니다');
        return;
    }
    
	frm2.method='post';
	frm2.action='controller.do?'
	frm2.submit();
})
</script>
</body>
</html>