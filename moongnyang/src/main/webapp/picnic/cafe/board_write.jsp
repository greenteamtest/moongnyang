<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page errorPage = "../picnic/error.jsp" %>
<jsp:include page="../../top&down/header.jsp" flush="ture" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
</head>
<iframe style="width: 100%; height: 75px"></iframe>
<body>
	<div class="container">		
			<div class="py-5 text-center">
				<h2>게시글 수정하기</h2>
			</div>
			<form name="frm" method="post" action="BoardServlet_picnic?command=modify_write" enctype="multipart/form-data">
				<input type="hidden" name="command" value="modify_write">
				<input	type="hidden" name="user_email" value="${loginUser.email}">
				<input	type="hidden" name="key" value="${vo.key}">
				<div class="row g-5">
					<div style="width: 80%; float:none; margin:0 auto">
						<!-- 제목 -->
						<div class="mb-3">
							<label class="form-label">제목</label>
							<input type="text" class="form-control" id="name" name="name" value="${vo.name }">
						</div>
						<hr class="my-4">
						<!-- 주소 -->
						<div class="mb-3">
							<label class="form-label">주소</label>
							<input type="text" class="form-control" id="address" name="address" value="${vo.place }">
						</div>
						<!-- 도로명 주소 -->
						<div class="mb-3">
							<label class="form-label">도로명 주소</label>
							<input type="text" class="form-control" id="RAddress" name="RAddress" value="${vo.road_place }">
						</div>
						<!-- 연락처 -->
						<div class="mb-3">
							<label class="form-label">연락처</label>
							<input type="text" class="form-control" id="phone" name="phone" value="${vo.phone }">
						</div>
						<!-- 내용 -->
						<div class="mb-3">
							<label for="exampleFormControlTextarea1" class="form-label">내용</label>
							<textarea class="form-control" id="exampleFormControlTextarea1" rows="4" name="content">${vo.list_content }</textarea>
						</div>
						<hr class="my-4">
						<!-- 이미지 업로드 -->
						<div class="mb-3">
							<label for="formFile" class="form-label">사진1</label>
							<input class="form-control" type="file" id="formFile" name="file1" value="${vo.file_name1 }">
						</div>
						<div class="mb-3">
							<label for="formFile" class="form-label">사진2</label>
							<input class="form-control" type="file" id="formFile" name="file2" value="${vo.file_name2 }">
						</div>
						<div class="mb-3">
							<label for="formFile" class="form-label">사진3</label>
							<input class="form-control" type="file" id="formFile" name="file3" value="${vo.file_name3 }">
						</div>
						<div class="mb-3">
							<label for="formFile" class="form-label">사진4</label>
							<input class="form-control" type="file" id="formFile" name="file4" value="${vo.file_name4 }">
						</div>
						<hr class="my-4">

					</div>
				</div>
				<div style="width: 80%; float:none; margin:0 auto">
						<ul class="list-group mb-3">
							<li class="list-group-item d-flex justify-content-between">
								<input class="w-100 btn btn-primary btn-lg" type="submit" value="등록하기">
							</li>
						</ul>
					</div>
			</form>		
	</div>
</body>
</html>
