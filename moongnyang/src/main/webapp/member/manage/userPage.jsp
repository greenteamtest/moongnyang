<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../bootstrap/boot.jsp"%>
<%@ include file="../../top&down/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.84.0">
<title>πΆπ±λλ§μβμμβκ³΅κ°πΆπ±</title>

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
	<script type="text/javascript" src="js/login/member.js"></script>
	<main>
		<div class="container py-4">
			<header class="pb-3 mb-4 border-bottom">
				<a href="/"
					class="d-flex align-items-center text-dark text-decoration-none">

				</a>
			</header>
			<div>
				<br> <br>
			</div>
			<div class="container">
				<div class="row">
					<div class="col">
						<h2>
							μ΅μ κΈ&nbsp;&nbsp;&nbsp;&nbsp; <a
								href="mediaServlet?command=mediamain">#λ―Έλμ΄</a>
						</h2>
						<div style="overflow: scroll; height: 400px;">
							<div class="h-500 p-5 text-white bg-dark border rounded-3">
								<div>
									<video src="media/upload/${recent_media.mediaurl}" width='100%'
										controls loop></video>
								</div>
								<strong class="d-inline-block mb-3 text-success">
									${recent_media.hashtag_media}</strong>
								<p>${recent_media.content_media}</p>
								<button class="btn btn-outline-secondary" type="button"
									onclick="location.href='mediaServlet?command=view_media&num=${recent_media.num_media}'">κ΅¬κ²½νκΈ°</button>
							</div>
						</div>
					</div>
					<div class="col">
						<h2>
							<a href="Community_BoardServlet?command=board_list">#μ»€λ?€λν°</a>
						</h2>
						<div style="overflow: scroll; height: 400px;">
							<div class="h-500 p-5 text-white bg-dark border rounded-3">
								<img src="community/upload/${recent_community.pic_url_1}"
									class="img-thumbnail" width="250" height="300" alt="...">
								<hr>
								<strong class="d-inline-block mb-3 text-success">
									${recent_community.title}</strong>
								<hr>
								<button class="btn btn-outline-secondary" type="button"
									onclick="location.href='Community_BoardServlet?command=board_view&board_idx=${recent_community.board_idx}'">κ΅¬κ²½νκΈ°</button>
							</div>
						</div>
					</div>
					<div class="col">
						<h2>λ΄κΈ μμ</h2>
						<div style="overflow: scroll; height: 400px;">
							<!-- λκΈ λ¦¬μ€νΈ λΆλΆ -->
							<!--  λ½μ΄μΉλ¬Έ -->
							<c:forEach var="media" items="${media}">
								<div>
									<form method="post" action="mediaServlet">
										<input type="hidden" name="command" value="check_and_go"
											id="command"> <input type="hidden" name="email"
											value="${loginUser.email}" id="email"> <input
											type="hidden" name="num" value="${media.num_media}" id="num">
										<div
											class="row g-0 border rounded overflow-hidden flex-md-row mb-4 
									shadow-sm h-md-250 position-relative">
											<div class="col p-4 d-flex flex-column position-static">
												<strong class="d-inline-block mb-2 text-primary">κΈλ²νΈ
													: ${media.num_media}</strong>
												<p class="card-text mb-auto">${media.user_email_media}λμ΄
													λκΈμ λ¨κ²Όμ΄μ!</p>

												<!-- 												<button type="button" class="btn btn-outline" -->
												<%-- 													onclick="location.href='mediaServlet?command=check_and_go --%>
												<%-- 												&email=${loginUser.email}&num=${media.num_media}'">μ΄λνκΈ°</button> --%>
												<button type="submit" class="btn btn-outline">μ΄λνκΈ°</button>
											</div>
										</div>
									</form>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
			<hr>
			<div class="row align-items-md-stretch">
				<div class="col-md-6"></div>
				<div class="col-md-6"></div>
			</div>
			<div>
				<br> <br>
			</div>

			<h2>μ΄μμμ #μν΅ ν λ΄μ©</h2>
			<table class="table table-dark table-sm">
				<thead>
					<tr>
						<th scope="col">ν€μλ</th>
						<th scope="col">λ΅λ³μ§μμ΄λ©</th>
						<th scope="col">λ΅λ³λ΄μ©</th>
						<th scope="col">μμ±λ μ§</th>
						<th scope="col">νμΈνκΈ°</th>
						<th scope="col">μ½μμ λ¬΄</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="board" items="${boardList}">
						<tr>
							<td>${board.keyword}</td>
							<td>${board.manageremail}</td>
							<td>${board.content}</td>
							<td><fmt:formatDate value="${board.writedate}" /></td>
							<td><a
								href="mypageServlet?command=answerCheck&num=${board.num}&email=${loginUser.email}">νμΈ</a>
								<a
								href="mypageServlet?command=deleteAnswer&num=${board.num}&email=${loginUser.email}">μ­μ </a></td>
							<td><c:if test="${board.readval==0}">μ½μ</c:if> <c:if
									test="${board.readval==1}">μ½μ§μμ</c:if></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

			<div class="d-grid gap-2 col-6 mx-auto">
				<button type="button" class="btn btn-Warning" data-bs-toggle="modal"
					data-bs-target="#managermessage" data-bs-whatever="@mdo">#μν΅&nbsp;&nbsp;#λ¬Έμ&nbsp;&nbsp;#μ΄μμμκ²</button>
				<button class="btn btn-Success" type="button" data-bs-toggle="modal"
					data-bs-target="#businessupdate" data-bs-whatever="@mdo">#μ¬μμμ μ²­&nbsp;&nbsp;</button>
				<button class="btn btn-Danger" type="button" data-bs-toggle="modal"
					data-bs-target="#changemember" data-bs-whatever="@mdo">#νμμ λ³΄λ³κ²½&nbsp;&nbsp;#νμνν΄</button>
			</div>
			<footer class="pt-3 mt-4 text-muted border-top"> &copy; 2021
			</footer>
		</div>
	</main>



</body>
</html>
<!--  μ΄κ±° μμ±λλ©΄ ν€λλΆλΆμΌλ‘ μ?κΈ°μκΎΈλ~~~ -->
<!--  κ±΄μμ¬ν­ λΆλΆ -->
<form action="mypageServlet" method="post" name="customerconversation">
	<input type="hidden" name="command" value="customerconversation">
	<input type="hidden" name="email" value="${loginUser.email}">
	<div class="modal fade" id="managermessage" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="managermessage">#μν΅ #λ¬Έμ #μ΄μμμκ²</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<div class="mb-3">
						<label for="recipient-name" class="col-form-label">λ¬΄μμ
							λμλλ¦΄κΉμ?!</label> <select class="form-select"
							aria-label="Default select example"
							name="customerconversationSelect">
							<option value="0" selected>νμλ©λ΄λ₯Ό κ³¨λΌμ£ΌμΈμ!</option>
							<option value="λΆλ§, κ±΄μμ¬ν­">λΆλ§, κ±΄μμ¬ν­</option>
							<option value="μ¬μμκ΄λ ¨ λ¬Έμ">μ¬μμκ΄λ ¨ λ¬Έμ</option>
							<option value="QnA">QnA</option>
						</select>
					</div>
					<div class="mb-3">
						<label for="message-text" class="col-form-label">λ΄μ©</label>
						<textarea class="form-control" name="customerconversationtextarea"
							id="customerconversationtextarea"></textarea>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">λ«κΈ°</button>
					<button type="submit" class="btn btn-Warning"
						onclick="return customerconversation()">μ μΆνκΈ°</button>
				</div>
			</div>
		</div>
	</div>
</form>
<!--  μ¬μμ λ±λ‘μ μ²­νλ λΆλΆ -->
<form action="mypageServlet" method="post" name="businessUpdate">
	<input type="hidden" name="command" value="businessUpdate">
	<div class="modal fade" id="businessupdate" tabindex="-1"
		aria-labelledby="businessupdate" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="businessupdate">#μ¬μμμ μ²­νκΈ°</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<input type="hidden" name="email" value="${loginUser.email}"
						id="email">
					<form>
						<div>
							<select class="form-select" aria-label="Default select example"
								name="select_picnicList">
								<option value="">ν΄λΉμμ</option>
								<c:forEach var="picnicList" items="${picnicList }">
									<option value="${picnicList.key },${picnicList.name }">${picnicList.name }</option>
								</c:forEach>
							</select>
						</div>
						<div class="mb-3">
							<label for="recipient-name" class="col-form-label">νμλμ
								μ¬μμ₯μ λν΄ μ€λͺλΆνλλ €μ</label>
						</div>
						<div class="mb-3">
							<textarea name="content" class="form-control" id="content"></textarea>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">λ«κΈ°</button>
					<button type="submit" class="btn btn-Warning"
						onclick="return businessUpdate()">μ μΆνκΈ°</button>
				</div>
			</div>
		</div>
	</div>
</form>

<!--  νμμ λ³΄λ³κ²½ λΆλΆ -->
<form action="memberUpdate.do" method="post" name="frm">
	<script type="text/javascript" src="js/login/member.js"></script>
	<div class="modal fade" id="changemember" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">#νμμ λ³΄λ³κ²½</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form>
						<div class="mb-3">
							<button type="button" class="btn btn-primary">#νμμ λ³΄λ³κ²½</button>
							<button type="button" class="btn btn-secondary"
								data-bs-dismiss="modal" data-bs-toggle="modal"
								data-bs-target="#withdrawal" data-bs-whatever="@mdo">#μ μμ΄λ³</button>
						</div>
						<div class="mb-3">
							<input type="hidden" name="email" value="${loginUser.email}"
								id="nickDuple"> <label for="exampleInputPassword1"
								class="form-label">λΉλ°λ²νΈλ₯Ό λ³κ²½νμλ €λ©΄ μλ‘μλ ₯ν΄μ£ΌμΈμ!</label> <input
								type="password" class="form-control" value="${loginUser.pwd}"
								id="exampleInputPassword1" name="pwd"> <label
								for="exampleInputPassword1" class="form-label">λ³κ²½νμ 
								λΉλ°λ²νΈλ₯Ό νλ² λ μλ €ν΄μ£ΌμΈμ</label> <input type="password" class="form-control"
								value="${loginUser.pwd}" id="exampleInputPassword1"
								name="pwd_check">
						</div>

						<div>
							<label for="exampleInputPassword1" class="form-label">λ³λͺμ
								λ³κ²½νμλ €λ©΄ μλ‘μλ ₯ν΄μ£ΌμΈμ!</label><input type="hidden" name="renickname" value="1"
								id="nickDuple">
						</div>
						<div class="input-group mb-3">

							<input type="text" class="form-control"
								value="${loginUser.nickname}" id="exampleInputPassword1"
								name="nickname">
							<button type="button" class="btn btn-warning"
								onclick="nicknameCheck()">μ€λ³΅κ²μ¬</button>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">λ«κΈ°</button>
					<button type="submit" class="btn btn-Warning"
						onclick="return update_member()">λ³κ²½νκΈ°!</button>
				</div>
			</div>
		</div>
	</div>
</form>
<!--  νμνν΄ λΆλΆ -->
<form action="memberDelete.do" method="post" name="delete">
	<script type="text/javascript" src="js/login/member.js"></script>
	<div class="modal fade" id="withdrawal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">#μ μμ΄λ³</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form>
						<div class="mb-3">
							<button type="button" class="btn btn-primary"
								data-bs-dismiss="modal" data-bs-toggle="modal"
								data-bs-target="#changemember" data-bs-whatever="@mdo">#νμμ λ³΄λ³κ²½</button>
							<button type="button" class="btn btn-secondary">#μ μμ΄λ³</button>
						</div>
						<div class="mb-3">
							<input type="hidden" name="email" value="${loginUser.email}"
								id="deletemember_email"> <input type="hidden"
								name="origin_pwd" value="${loginUser.pwd}"
								id="deletemember_email">
							<p class="text-center">λ€μ λμμμ λ, λ λ©μ§ λͺ¨μ΅μΌλ‘ κΈ°λ€λ¦¬κ³  μκ² μ΅λλ€.</p>
							<label for="message-text" class="col-form-label">λ§μ§λ§μΌλ‘
								λΉλ°λ²νΈλ₯Ό μλ ₯ν΄μ£ΌμΈμ.</label> <input type="password" class="form-control"
								value="" id="exampleInputPassword1" name="pwd">
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">λ«κΈ°</button>
					<button type="submit" class="btn btn-Warning"
						onclick="return  delete_member()">μΈμ  κ° λμμ€κ² μ΅λλ€</button>
				</div>
			</div>
		</div>
	</div>
</form>