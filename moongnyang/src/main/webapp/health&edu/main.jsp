<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/health&edu/bootstrap/boot.jsp"%>
<%@ include file="/startbootstrap/startbootstrap.jsp"%>
<%@ include file="/jQuery/jquery.jsp"%>
<%@ include file="/setting/setting.jsp"%>




<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>뭉냥뭉냥-반려동물과의 즐거운 하루 !</title>

<script defer src="main.js" type="text/javascript"></script>

<style>
.icon {
	width: 100px;
	height: 100px;
	transition: transform 0.5s;
}

.icon:hover {
	transform: scale(1.2);
}

form {
	display: inline;
	width: 30rem;
}

div[class="feature bg-primary bg-gradient text-white rounded-3 mb-4 mt-n4"]
	{
	background-color: yellow;
	width: 20rem;
	height: 3rem;
}
</style>

</head>
<body id="page-top">

	<!-- Header-->

	<header>
		<%@ include file="/top&down/header.jsp"%>
		<%@ include file="/health&edu/logo.jsp"%>
	</header>

	<nav>
		<%@ include file="/health&edu/nav.jsp"%>
	</nav>
	<div class="container">
		<main>


			<div class="container px-lg-5">
				<div class="p-4 p-lg-5 bg-light rounded-3 text-center">
					<div class="m-4 m-lg-5">
						<h1 class="display-5 fw-bold">반려동물과 함께 하는 헬스케어 & 에듀</h1>
						<br>
						<p class="fs-4">
							사랑스러운 반려동물과 함께 하는 라이프를 원하시나요 ?
							<br>
							뭉냥뭉냥은 반려동물과 함께 할 수 있는 장소를 제공합니다
						</p>
						<a class="btn btn-primary btn-lg" href="#!" style="background-color: yellow;">Call to action</a>
					</div>
				</div>
			</div>

			<!-- Page Content-->
			<section class="pt-4">

				<div class="container px-lg-5">
					<!-- Page Features-->
					<div class="row gx-lg-5">


						<div class="col-lg-6 col-xxl-4 mb-5">
							<form name="frm" class="frm">
								<div class="card bg-light border-0 h-100">
									<div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
										<div class="feature bg-primary bg-gradient text-white rounded-3 mb-4 mt-n4">
											<i class="bi bi-cloud-download"></i>
										</div>
										<a href="javascript:;" class="category" id="beauty">
											<input type="hidden" name="email" value="${loginUser.getEmail()}" />
											<input type="hidden" name="key" value="beauty" />
											<input type="hidden" name="command" value="placeList" />
											<h2 class="fs-4 fw-bold">
												<img class="icon" alt="beauty" src="img/beauty.png">
											</h2>
										</a>
										<p class="mb-0">미 용</p>
									</div>
								</div>
							</form>
						</div>



						<div class="col-lg-6 col-xxl-4 mb-5">
							<form name="frm" class="frm">
								<div class="card bg-light border-0 h-100">
									<div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
										<div class="feature bg-primary bg-gradient text-white rounded-3 mb-4 mt-n4">
											<i class="bi bi-card-heading"></i>
										</div>
										<a href="javascript:;" class="category" id="hospital">
											<input type="hidden" name="email" value="${loginUser.getEmail()}" />
											<input type="hidden" name="key" value="hospital" />
											<input type="hidden" name="command" value="placeList" />
											<h2 class="fs-4 fw-bold">
												<img class="icon" alt="hospital" src="img/hospital.png">
											</h2>
										</a>
										<p class="mb-0">병 원</p>
									</div>
								</div>
							</form>
						</div>



						<div class="col-lg-6 col-xxl-4 mb-5">
							<form name="frm" class="frm">
								<div class="card bg-light border-0 h-100">
									<div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
										<div class="feature bg-primary bg-gradient text-white rounded-3 mb-4 mt-n4">
											<i class="bi bi-code"></i>
										</div>
										<a href="javascript:;" class="category" id="kindergaden">
											<input type="hidden" name="email" value="${loginUser.getEmail()}" />
											<input type="hidden" name="key" value="kindergaden" />
											<input type="hidden" name="command" value="placeList" />
											<h2 class="fs-4 fw-bold">
												<img class="icon" alt="kindergaden" src="img/dog-training.png">
											</h2>
										</a>
										<p class="mb-0">유치원</p>
									</div>
								</div>
							</form>
						</div>

					</div>
				</div>
			</section>
		</main>
	</div>
	<%@ include file="/health&edu/footer.jsp"%>
</body>
</html>
