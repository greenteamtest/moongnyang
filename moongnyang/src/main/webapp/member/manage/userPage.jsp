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
<title>🐶🐱나만의☕작은☕공간🐶🐱</title>

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
							최신글&nbsp;&nbsp;&nbsp;&nbsp; <a
								href="mediaServlet?command=mediamain">#미디어</a>
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
									onclick="location.href='mediaServlet?command=view_media&num=${recent_media.num_media}'">구경하기</button>
							</div>
						</div>
					</div>
					<div class="col">
						<h2>
							<a href="Community_BoardServlet?command=board_list">#커뮤니티</a>
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
									onclick="location.href='Community_BoardServlet?command=board_view&board_idx=${recent_community.board_idx}'">구경하기</button>
							</div>
						</div>
					</div>
					<div class="col">
						<h2>내글 소식</h2>
						<div style="overflow: scroll; height: 400px;">
							<!-- 댓글 리스트 부분 -->
							<!--  뽀이치문 -->
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
												<strong class="d-inline-block mb-2 text-primary">글번호
													: ${media.num_media}</strong>
												<p class="card-text mb-auto">${media.user_email_media}님이
													댓글을 남겼어요!</p>

												<!-- 												<button type="button" class="btn btn-outline" -->
												<%-- 													onclick="location.href='mediaServlet?command=check_and_go --%>
												<%-- 												&email=${loginUser.email}&num=${media.num_media}'">이동하기</button> --%>
												<button type="submit" class="btn btn-outline">이동하기</button>
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

			<h2>운영자와 #소통 한 내용</h2>
			<table class="table table-dark table-sm">
				<thead>
					<tr>
						<th scope="col">키워드</th>
						<th scope="col">답변직원이멜</th>
						<th scope="col">답변내용</th>
						<th scope="col">작성날짜</th>
						<th scope="col">확인하기</th>
						<th scope="col">읽음유무</th>
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
								href="mypageServlet?command=answerCheck&num=${board.num}&email=${loginUser.email}">확인</a>
								<a
								href="mypageServlet?command=deleteAnswer&num=${board.num}&email=${loginUser.email}">삭제</a></td>
							<td><c:if test="${board.readval==0}">읽음</c:if> <c:if
									test="${board.readval==1}">읽지않음</c:if></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

			<div class="d-grid gap-2 col-6 mx-auto">
				<button type="button" class="btn btn-Warning" data-bs-toggle="modal"
					data-bs-target="#managermessage" data-bs-whatever="@mdo">#소통&nbsp;&nbsp;#문의&nbsp;&nbsp;#운영자에게</button>
				<button class="btn btn-Success" type="button" data-bs-toggle="modal"
					data-bs-target="#businessupdate" data-bs-whatever="@mdo">#사업자신청&nbsp;&nbsp;</button>
				<button class="btn btn-Danger" type="button" data-bs-toggle="modal"
					data-bs-target="#changemember" data-bs-whatever="@mdo">#회원정보변경&nbsp;&nbsp;#회원탈퇴</button>
			</div>
			<footer class="pt-3 mt-4 text-muted border-top"> &copy; 2021
			</footer>
		</div>
	</main>



</body>
</html>
<!--  이거 완성되면 헤더부분으로 옮기자꾸나~~~ -->
<!--  건의사항 부분 -->
<form action="mypageServlet" method="post" name="customerconversation">
	<input type="hidden" name="command" value="customerconversation">
	<input type="hidden" name="email" value="${loginUser.email}">
	<div class="modal fade" id="managermessage" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="managermessage">#소통 #문의 #운영자에게</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<div class="mb-3">
						<label for="recipient-name" class="col-form-label">무엇을
							도와드릴까요?!</label> <select class="form-select"
							aria-label="Default select example"
							name="customerconversationSelect">
							<option value="0" selected>하위메뉴를 골라주세요!</option>
							<option value="불만, 건의사항">불만, 건의사항</option>
							<option value="사업자관련 문의">사업자관련 문의</option>
							<option value="QnA">QnA</option>
						</select>
					</div>
					<div class="mb-3">
						<label for="message-text" class="col-form-label">내용</label>
						<textarea class="form-control" name="customerconversationtextarea"
							id="customerconversationtextarea"></textarea>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">닫기</button>
					<button type="submit" class="btn btn-Warning"
						onclick="return customerconversation()">제출하기</button>
				</div>
			</div>
		</div>
	</div>
</form>
<!--  사업자 등록신청하는 부분 -->
<form action="mypageServlet" method="post" name="businessUpdate">
	<input type="hidden" name="command" value="businessUpdate">
	<div class="modal fade" id="businessupdate" tabindex="-1"
		aria-labelledby="businessupdate" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="businessupdate">#사업자신청하기</h5>
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
								<option value="">해당없음</option>
								<c:forEach var="picnicList" items="${picnicList }">
									<option value="${picnicList.key },${picnicList.name }">${picnicList.name }</option>
								</c:forEach>
							</select>
						</div>
						<div class="mb-3">
							<label for="recipient-name" class="col-form-label">회원님의
								사업장에 대해 설명부탁드려요</label>
						</div>
						<div class="mb-3">
							<textarea name="content" class="form-control" id="content"></textarea>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">닫기</button>
					<button type="submit" class="btn btn-Warning"
						onclick="return businessUpdate()">제출하기</button>
				</div>
			</div>
		</div>
	</div>
</form>

<!--  회원정보변경 부분 -->
<form action="memberUpdate.do" method="post" name="frm">
	<script type="text/javascript" src="js/login/member.js"></script>
	<div class="modal fade" id="changemember" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">#회원정보변경</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form>
						<div class="mb-3">
							<button type="button" class="btn btn-primary">#회원정보변경</button>
							<button type="button" class="btn btn-secondary"
								data-bs-dismiss="modal" data-bs-toggle="modal"
								data-bs-target="#withdrawal" data-bs-whatever="@mdo">#잠시이별</button>
						</div>
						<div class="mb-3">
							<input type="hidden" name="email" value="${loginUser.email}"
								id="nickDuple"> <label for="exampleInputPassword1"
								class="form-label">비밀번호를 변경하시려면 새로입력해주세요!</label> <input
								type="password" class="form-control" value="${loginUser.pwd}"
								id="exampleInputPassword1" name="pwd"> <label
								for="exampleInputPassword1" class="form-label">변경하신
								비밀번호를 한번 더 입려해주세요</label> <input type="password" class="form-control"
								value="${loginUser.pwd}" id="exampleInputPassword1"
								name="pwd_check">
						</div>

						<div>
							<label for="exampleInputPassword1" class="form-label">별명을
								변경하시려면 새로입력해주세요!</label><input type="hidden" name="renickname" value="1"
								id="nickDuple">
						</div>
						<div class="input-group mb-3">

							<input type="text" class="form-control"
								value="${loginUser.nickname}" id="exampleInputPassword1"
								name="nickname">
							<button type="button" class="btn btn-warning"
								onclick="nicknameCheck()">중복검사</button>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">닫기</button>
					<button type="submit" class="btn btn-Warning"
						onclick="return update_member()">변경하기!</button>
				</div>
			</div>
		</div>
	</div>
</form>
<!--  회원탈퇴 부분 -->
<form action="memberDelete.do" method="post" name="delete">
	<script type="text/javascript" src="js/login/member.js"></script>
	<div class="modal fade" id="withdrawal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">#잠시이별</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form>
						<div class="mb-3">
							<button type="button" class="btn btn-primary"
								data-bs-dismiss="modal" data-bs-toggle="modal"
								data-bs-target="#changemember" data-bs-whatever="@mdo">#회원정보변경</button>
							<button type="button" class="btn btn-secondary">#잠시이별</button>
						</div>
						<div class="mb-3">
							<input type="hidden" name="email" value="${loginUser.email}"
								id="deletemember_email"> <input type="hidden"
								name="origin_pwd" value="${loginUser.pwd}"
								id="deletemember_email">
							<p class="text-center">다시 돌아왔을 때, 더 멋진 모습으로 기다리고 있겠습니다.</p>
							<label for="message-text" class="col-form-label">마지막으로
								비밀번호를 입력해주세요.</label> <input type="password" class="form-control"
								value="" id="exampleInputPassword1" name="pwd">
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">닫기</button>
					<button type="submit" class="btn btn-Warning"
						onclick="return  delete_member()">언젠간 돌아오겠습니다</button>
				</div>
			</div>
		</div>
	</div>
</form>