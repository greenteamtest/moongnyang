<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../../top&down/header.jsp" flush="ture" />
<html>

<input type="hidden" id="name" name="name" value="${vo.name }">
<input type="hidden" id="address" name="address" value="${vo.place }">
<input type="hidden" id="rAddress" name="rAddress" value="${vo.road_place }">
<input type="hidden" id="phone" name="phone" value="${vo.phone }">
<input type="hidden" id="x" name="x" value="${vo.x }">
<input type="hidden" id="y" name="y" value="${vo.y }">
<input type="hidden" id="key" name="key" value="${vo.key }">
<input type="hidden" id="content" name="content" value="${vo.list_content }">
<input type="hidden" id="fileNm1" name="fileNm1" value="${vo.file_name1 }">
<input type="hidden" id="fileNm2" name="fileNm2" value="${vo.file_name2 }">
<input type="hidden" id="fileNm3" name="fileNm3" value="${vo.file_name3 }">
<input type="hidden" id="fileNm4" name="fileNm4" value="${vo.file_name4 }">

<head>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<style type="text/css">
textarea {
	resize: none;
}
</style>
<script type="text/javascript" src="picnic/cafe/check.js?ver=123"></script>
<meta charset="UTF-8" />
<title>뭉냥뭉냥</title>
</head>
<p align="center">
	<iframe style="width: 100%; height: 75px"> </iframe>
</p>
<div align="center">
	<iframe src="picnic/cafe/board_image.jsp" style="width: 80%; height: 500px;"> </iframe>
	<br>
	<form id="f2" method="POST" action="BoardServlet_picnic">
		<input type="hidden" id="key" name="key" value="${vo.key }"> 
		<input type="hidden" name="command" value="modify">

		<c:set var="email_board" value="${vo.email}" />
		<c:set var="email_user" value="${loginUser.email}" />
		<c:if test="${null != email_board}">
			<c:choose>
				<c:when test="${email_board eq email_user}">
					<input type="submit" value="정보 수정"
						style="width: 10%; float: none; margin: 0 auto">
				</c:when>
			</c:choose>
		</c:if>
	</form>
</div>

<div align="center">
	<iframe src="picnic/cafe/board_map_kakao.jsp" style="width: 81%; height: 400px"> </iframe>
</div>
<body>

	<form method="POST" action="BoardServlet_picnic">
		<input type="hidden" id="key" name="key" value="${vo.key }"> 
		<input type="hidden" id="email" name="email" value="${loginUser.email}">
		<input type="hidden" name="command" value="write">
		<div class="input-group mb-3" style="width: 80%; float: none; margin: 0 auto">
			<input type="text" class="form-control" id="content_re" name="content_re" placeholder="내용을 입력.">
			<button class="btn btn-outline-secondary" type="submit" onclick="return contents()">등록</button>

		</div>
	</form>

	<c:set var="email1" value="${loginUser.email}" />
	<c:if test="${empty list}">
		<div class="input-group mb-3" style="width: 80%; float: none; margin: 0 auto">
			<input type="text" class="form-control" style="text-align: center" value="게시글이 없습니다" readonly>
		</div>
	</c:if>
	<form method="POST" action="BoardServlet_picnic">
		<input type="hidden" id="key" name="key" value="${vo.key }">
		<c:forEach var="list" items="${list }">
			<c:set var="email2" value="${list.user_email}" />
			<div class="input-group mb-3" style="width: 80%; float: none; margin: 0 auto">
				<span class="input-group-text">${list.user_email }</span> 
				<input type="text" class="form-control" value="${list.comment_content }" readonly> 
				<span class="input-group-text">${list.comment_date }</span>
				<c:choose>
					<c:when test="${email1 eq email2}">
						<input type="hidden" id="num" name="num" value="${list.num }">
						<input type="hidden" name="command" value="delete">
						<button class="btn btn-outline-secondary" type="submit" id="delete">삭제</button>
					</c:when>
				</c:choose>
			</div>
		</c:forEach>
	</form>
	<%-- ${loginUser.email} --%>
	<p align="center">
		<iframe style="width: 81%; height: 400px"> </iframe>
	</p>
</body>
</html>
