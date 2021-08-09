<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../bootstrap/boot.jsp"%>
<%@ include file="../top&down/header.jsp"%>
<%@ page import="java.net.URLEncoder"%>
<%@ page import="java.security.SecureRandom"%>
<%@ page import="java.math.BigInteger"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.84.0">
<title>미디어</title>

<link rel="canonical"
	href="https://getbootstrap.com/docs/5.0/examples/blog/">



<!-- Bootstrap core CSS -->
<link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">

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

#box1-1 {
	background-color: white;
}
</style>


<!-- Custom styles for this template -->
<link
	href="https://fonts.googleapis.com/css?family=Playfair&#43;Display:700,900&amp;
	display=swap"
	rel="stylesheet">
<!-- Custom styles for this template -->
<link href="blog.css" rel="stylesheet">
</head>
<body>
	<div>
		<br> <br> <br> <br> <br>
	</div>
	<main class="container">
		<div class="row g-5">
			<div class="col-md-3"></div>
			<div class="col-md-6">
				<article class="blog-post">
					<hr>
					<!--  여기 밑에서 부터 옆 네이버게이션 따라다님 -->
					<div
						class="row g-0 border rounded overflow-hidden flex-md-row mb-4 
							shadow-sm h-md-250 position-relative">
						<div class="container">
							<div class="row">
								<div>
									<video src="media/upload/${media.mediaurl}" width='500'
										controls loop></video>
								</div>
								<div class="col-md-12">
									<div class="card md-center">
										<!--  한싸이클 시작 -->
										<div class="col p-4 d-flex flex-column ">
											<div class="card-header">
												<strong class="d-inline-block mb-3 text-success">
													${media.hashtag_media}</strong>
											</div>
											<div class="card-body">
												<h5 class="card-title">${media.user_nick}</h5>
												<div style="overflow: auto; height: 60px; width: 100%;">
													<p class="card-text">${media.content_media}</p>
												</div>
												<hr>
												<div>
													<form action="mediaServlet" method="post">
														<input type="hidden" name="command" value="clicklike"
															id="command"> <input type="hidden" name="email"
															value="${loginUser.email}" id="email"> <input
															type="hidden" name="num" value="${media.num_media}"
															id="num">
														<button type="submit"
															class="btn btn-sm btn-outline-secondary">좋아요🧡
															${media.like_media}</button>
														<button type="button"
															class="btn btn-sm btn-outline-secondary"
															onclick="location.href='mediaServlet?command=mediamain'">돌아가기</button>
													</form>
												</div>
											</div>
										</div>
									</div>
									<div class="card md-center">
										<!--  한싸이클 시작 -->
										<form method="post" action="mediaServlet">
											<input type="hidden" name="command" value="add_comment"
												id="command"> <input type="hidden" name="email"
												value="${loginUser.email}" id="email"> <input
												type="hidden" name="num" value="${media.num_media}" id="num">
											<div class="col p-4 d-flex flex-column ">
												<div class="card-header">
													<div class="input-group mb-3">
														<input type="text" class="form-control"
															name="comment_content" placeholder="댓글을 통해 마음을 전하세요!"
															aria-label="댓글을 통해 마음을 전하세요!"
															aria-describedby="button-addon2" name="comment">
														<button class="btn btn-outline-secondary" type="submit"
															id="button-addon2">입력</button>
													</div>
												</div>
												<div class="card-body">
													<div style="overflow: auto; height: 300px; width: 100%;">
														<c:forEach var="comment" items="${comment}">
															<div class="container">
																<div class="row">
																	<div class="col-md-3">
																		<div class="alert alert-primary" role="alert">${comment.user_nick}</div>
																	</div>
																	<div class="col-md-9">
																		<div class="alert alert-primary" role="alert">${comment.comment_content }</div>
																	</div>
																</div>
															</div>
														</c:forEach>
													</div>
												</div>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</article>

			</div>

			<div class="col-md-3">
				<div class="position-sticky border rounded" style="top: 5rem;">
					<div>
						<form action="mediaServlet" method="post">
							<input type="hidden" name="command" value="search_media"
								id="command">
							<div class="input-group mb-3">
								<input type="text" class="form-control"
									placeholder="#태그 검색해보세요!" aria-label="#태그 검색해보세요!"
									aria-describedby="button-addon2" name="search">
								<button class="btn btn-outline-secondary" type="submit"
									id="button-addon2">Button</button>
							</div>
						</form>
					</div>
					<div>
						<br>
					</div>
					<div class="p-4 mb-3 bg-light rounded">
						<h4 class="fst-italic">미디어</h4>
						<p class="mb-0">여러분의 사랑스러운 천사들과의 소중한 추억을 담아, 모두와 공유하고 주인공이
							되어보세요!//지금 DB연결하고 하면 정상적으로 기능수행합니다ㅡ조금만 기다려주세요(ㅠㅅㅠ)</p>
					</div>
					<div class="p-4">
						<div>
							<br>
						</div>

						<h4 class="fst-italic">글올리기</h4>


						<ol class="list-unstyled mb-0">

							<li><div class="d-grid gap-2">
									<c:if test="${!empty loginUser}">
										<button class="btn btn-primary" type="button"
											data-bs-toggle="modal" data-bs-target="#uploadeMedia">글올리기</button>
									</c:if>
									<button class="btn btn-primary" type="button">새글보기</button>
								</div></li>
						</ol>
					</div>

					<div class="p-4">
						<h4 class="fst-italic">Elsewhere</h4>
						<ol class="list-unstyled">
							<li><a
								href="https://github.com/greenteamtest/moongnyang/tree/master/moongnyang">GitHub</a></li>
						</ol>
					</div>
				</div>
			</div>
		</div>
	</main>
	</form>
</body>
</html>
<form action="uploadmedia.do" method="post" name="frm"
	enctype="multipart/form-data">
	<!-- <form action="mediaServlet?command=uploadmedia" method="post" name="frm" -->
	<!-- 	enctype="multipart/form-data"> -->
	<!-- 	 -->
	<!-- 	name="frm"> -->
	<!-- 		<input type="hidden" name="command" value="uploadmedia">  -->

	<input type="hidden" name="email" value="${loginUser.email}"> <input
		type="hidden" name="nick" value="${loginUser.nickname}">
	<div class="modal fade" id="uploadeMedia" data-bs-backdrop="static"
		data-bs-keyboard="false" tabindex="-1"
		aria-labelledby="staticBackdropLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="staticBackdropLabel">업로드하기</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<input type="text" class="form-control" name="hashtag"
						placeholder="#태그를 추가해주세요!" aria-label="태그를 입력해주세요!" id="hashtag"
						aria-describedby="basic-addon1">
					<hr>
					<div class="form-floating">
						<textarea class="form-control" placeholder="Leave a comment here"
							name="content" id="content" id="floatingTextarea2"
							style="height: 100px"></textarea>
						<label for="floatingTextarea2">내용을 입력해주세요!(최대 4000자 이내)</label>
					</div>
					<div>
						<br> <br>
					</div>
					<div class="mb-3">
						<label for="formFile" class="form-label">올리실 파일을 선택해주세요!</label> <input
							class="form-control" type="file" id="file" name="file">
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">닫기</button>
					<button type="submit" class="btn btn-primary">업로드하기</button>
				</div>
			</div>
		</div>
	</div>
</form>