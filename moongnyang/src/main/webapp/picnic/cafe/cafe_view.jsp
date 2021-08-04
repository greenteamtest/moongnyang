<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../../top&down/header.jsp" flush="ture" />
<jsp:include page="../../bootstrap/boot.jsp" flush="ture" />
<!DOCTYPE html>
<html>
<input type="hidden" id="name" name="name" value="${vo.name }">
<input type="hidden" id="address" name="address" value="${vo.place }">
<input type="hidden" id="rAddress" name="rAddress" value="${vo.road_place }">
<input type="hidden" id="phone" name="phone" value="${vo.phone }">
<input type="hidden" id="x" name="x" value="${vo.x }">
<input type="hidden" id="y" name="y" value="${vo.y }">
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<style type="text/css">
textarea {
	resize: none;
}
</style>
<script type="text/javascript" src="picnic/cafe/check.js"></script>
<meta charset="UTF-8" />
<title>뭉냥뭉냥</title>
</head>
<p align="center">
	<iframe style="width: 100%; height: 75px"> </iframe>
</p>
<p align="center">
	<iframe src="picnic/cafe/cafe_view1.jsp"
		style="width: 80%; height: 500px;"> </iframe>
</p>
<p align="center">
	<iframe src="picnic/cafe/map_kakao.jsp"
		style="width: 81%; height: 400px"> </iframe>
</p>
	<form method="POST" action="BoardServlet_picnic">
	<div class="input-group mb-3" style="width: 80%; float:none; margin:0 auto">
		<input type="text" class="form-control" id="content" placeholder="내용을 입력하세요.(최대 글자수 : ??)" > 
		<input type="hidden" id="email" value="${loginUser.email}">
		<button class="btn btn-outline-secondary" type="button" onclick="return contents()">등록</button>
		
	</div>
	</form>
<body>
	<c:set var="email1" value="${loginUser.email}" />
	<c:if test="${empty list}">
		<div class="input-group mb-3" style="width: 80%; float:none; margin:0 auto" >
		<input type="text" class="form-control" style="text-align:center" value="게시글이 없습니다" readonly>
		</div>
	</c:if>
	<c:forEach var="list" items="${list }">
	<c:set var="email2" value="${list.user_email}" />
		<div class="input-group mb-3" style="width: 80%; float:none; margin:0 auto">
			<button class="btn btn-outline-secondary" type="button" id="name" value="${list.user_email }">${list.user_email }</button>
			<input type="text" class="form-control" value="${list.coment_content }" readonly>
			<button class="btn btn-outline-secondary" type="button">${list.coment_date }</button>
			<c:choose>
				<c:when test = "${email1 eq email2}">
				<input type="hidden" id="num" value="${list.num }">
				<button class="btn btn-outline-secondary" type="submit" id="delete">삭제</button>				
				</c:when>
			</c:choose>
		</div>
	</c:forEach>

	<%-- ${loginUser.email} --%>
<p align="center">
	<iframe style="width: 81%; height: 400px"> </iframe>
</p>
</body>
</html>
