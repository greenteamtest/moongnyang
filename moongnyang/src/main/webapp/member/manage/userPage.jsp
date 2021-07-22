<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../bootstrap/boot.jsp"%>
<%@ include file="../../top&down/header.jsp"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.84.0">
<title>Jumbotron example · Bootstrap v5.0</title>

<link rel="canonical"
	href="https://getbootstrap.com/docs/5.0/examples/jumbotron/">



<!-- Bootstrap core CSS -->
<link href="/docs/5.0/dist/css/bootstrap.min.css" rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<!-- Favicons -->
<link rel="apple-touch-icon"
	href="/docs/5.0/assets/img/favicons/apple-touch-icon.png"
	sizes="180x180">
<link rel="icon" href="/docs/5.0/assets/img/favicons/favicon-32x32.png"
	sizes="32x32" type="image/png">
<link rel="icon" href="/docs/5.0/assets/img/favicons/favicon-16x16.png"
	sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/5.0/assets/img/favicons/manifest.json">
<link rel="mask-icon"
	href="/docs/5.0/assets/img/favicons/safari-pinned-tab.svg"
	color="#7952b3">
<link rel="icon" href="/docs/5.0/assets/img/favicons/favicon.ico">
<meta name="theme-color" content="#7952b3">


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


</head>
<body>

	<main>
		<div class="container py-4">
			<header class="pb-3 mb-4 border-bottom">
				<a href="/"
					class="d-flex align-items-center text-dark text-decoration-none">

				</a>
			</header>

			<div class="p-5 mb-4 bg-light rounded-3">
				<div class="container-fluid py-5">
					<h1 class="display-5 fw-bold">Custom jumbotron</h1>
					<p class="col-md-8 fs-4">Using a series of utilities, you can
						create this jumbotron, just like the one in previous versions of
						Bootstrap. Check out the examples below for how you can remix and
						restyle it to your liking.</p>
					<button class="btn btn-primary btn-lg" type="button">Example
						button</button>
				</div>
			</div>

			<div class="row align-items-md-stretch">
				<div class="col-md-6">
					<div class="h-100 p-5 text-white bg-dark rounded-3">
						<h2>Change the background</h2>
						<p>Swap the background-color utility and add a `.text-*` color
							utility to mix up the jumbotron look. Then, mix and match with
							additional component themes and more.</p>
						<button class="btn btn-outline-light" type="button">Example
							button</button>
					</div>
				</div>
				<div class="col-md-6">
					<div class="h-100 p-5 bg-light border rounded-3">
						<h2>Add borders</h2>
						<p>Or, keep it light and add a border for some added
							definition to the boundaries of your content. Be sure to look
							under the hood at the source HTML here as we've adjusted the
							alignment and sizing of both column's content for equal-height.</p>
						<button class="btn btn-outline-secondary" type="button">Example
							button</button>
					</div>
				</div>
			</div>
			<div>
				<br> <br>
			</div>
			<div class="d-grid gap-2 col-6 mx-auto">
				<button type="button" class="btn btn-Warning" data-bs-toggle="modal"
					data-bs-target="#exampleModal2" data-bs-whatever="@mdo">#소통&nbsp;&nbsp;#문의&nbsp;&nbsp;#운영자에게</button>
				<button class="btn btn-Danger" type="button">#회원정보변경&nbsp;&nbsp;#회원탈퇴</button>
			</div>
			<footer class="pt-3 mt-4 text-muted border-top"> &copy; 2021
			</footer>
		</div>
	</main>



</body>
</html>
<!--  이거 완성되면 헤더부분으로 옮기자꾸나~~~ -->
<div class="modal fade" id="exampleModal2" tabindex="-1"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">#소통 #문의 #운영자에게</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="modal-body">
				<form>
					<div class="mb-3">
						<label for="recipient-name" class="col-form-label">무엇을 도와드릴까요?!</label>
						<select class="form-select" aria-label="Default select example">
							<option selected>하위메뉴를 골라주세요!</option>
							<option value="1">불만, 건의사항</option>
							<option value="2">사업자관련 문의</option>
							<option value="3">QnA</option>
						</select>
					</div>
					<div class="mb-3">
						<label for="message-text" class="col-form-label">내용</label>
						<textarea class="form-control" id="message-text"></textarea>
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary"
					data-bs-dismiss="modal">닫기</button>
				<button type="button" class="btn btn-Warning">제출하기</button>
			</div>
		</div>
	</div>
</div>
