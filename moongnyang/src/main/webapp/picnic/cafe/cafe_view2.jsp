<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="/bootstrap/boot.jsp" flush="ture" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
<script type="text/javascript" src="../cafe/check.js"></script>
</head>
<body>
	<c:set var="email" value="${loginUser.email}" />
	<c:forEach var="list" items="${list }" >
	<div class="input-group mb-3">
		<button class="btn btn-outline-secondary" type="button" id="name"
			value="${list.user_nick }">${list.user_nick }</button>
		<input type="text" class="form-control" value="${list.coment_content }" readonly>
		<button class="btn btn-outline-secondary" type="button">${list.coment_date }</button>
		
		<button class="btn btn-outline-secondary" type="button" id="delete">삭제</button>

		
		<%-- ${loginUser.email} --%>

	</div>
	</c:forEach>

<!-- 	<div class="input-group mb-3">
		<button class="btn btn-outline-secondary" type="button" id="name">작성자</button>
		<input type="text" class="form-control" value="3333" readonly>
		<button class="btn btn-outline-secondary" type="button" id="date">날짜</button>
		<button class="btn btn-outline-secondary" type="button" id="delete">삭제</button>
	</div> -->
	<div class="input-group mb-3">
		<input type="text" class="form-control" id="content" placeholder="내용을 입력하세요.(최대 글자수 : ??)"> 
		<input type="hidden" id="email" value="${loginUser.email}">
		<button class="btn btn-outline-secondary" type="button" onclick="contents()">입력</button>
	</div>
</body>
</html>