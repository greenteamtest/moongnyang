<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/jQuery/jquery.jsp"%>
<%@ include file="/health&edu/bootstrap/getboot.jsp"%>
<%@ include file="/health&edu/bootstrap/boot.jsp"%>
<%@ include file="/semanticUI/semanticUI.jsp"%>
<%@ include file="/setting/setting.jsp"%>



<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="" />
<meta name="author" content="" />

<title>Document</title>
<style>
body {
	height: 100vh;
}

section {
	text-align: center;
}

.row {
	display: flex;
	flex-direction: row;
	justify-content: center;
	width: 120rem;
	padding: 0;
}

.unstackable.table {
	width: 100rem;
}

.table-frame {
	border: 1px solid gray;
	width: 115rem;
	margin-left: 4rem;
	text-align: center;
}
.table-frame thead {
	background-color: #dcdada;
	border : 2px solid red;
}

.ui.unstackable.table {
	width: 100%;
}

.ui.unstackable.table thead {
	text-align: center;
}

.px-md-4 {
	width: 100%;
	margin: 0;
}

.out-border {
	display: flex;
	flex-direction: row;
	justify-content: center;
	width: 1920px;
	margin-bottom: 4rem;
}

.cancle {
	width: 8rem;
	height: 2rem;
}
.center.aligned {
	font-weight: bold;
}
</style>
</head>
<body>


	<header>
		<%@ include file="/top&down/header.jsp"%>
		<%@ include file="/health&edu/logo.jsp"%>
	</header>
	<div id="maincontainer">
		<%@ include file="/health&edu/nav.jsp"%>

		<main>
			<section>
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-9 ms-sm-auto col-lg-10 px-md-4">


							<h1>사업장 신청 내역</h1>

							<div
								class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">

							</div>
							<div class="btn-toolbar mb-2 mb-md-0"></div>
							<div class="table-responsive"></div>
						</div>
					</div>
				</div>
				<br>
				<br>
				<div class="out-border">

					<div class="table-frame" style="overflow: scroll; height: 50rem;">
						<table class="ui unstackable table">
							<thead >
								<tr>
									<th style="width: 6rem; background-color:#ececec">카테고리</th>
									<th>사업장명</th>
									<th style="background-color:#ececec">전화번호</th>
									<th style="width: 10rem;">주소</th>
									<th style="background-color:#ececec">영업시간</th>
									<th style="width: 35rem;">사업장 소개</th>
									<th style="width: 10rem;background-color:#ececec">동반가능 반려동물</th>
									<th style="width: 2rem;">대표 URL</th>
									<th style="width: 2rem;background-color:#ececec; border: 2px solid red">승인 상태</th>
								</tr>
							</thead>

							<tbody>
								<c:forEach items="${status}" var="status">
									<tr>

										<c:choose>
											<c:when test="${status.getField() eq 'hospital' }">
												<td>병원</td>
											</c:when>
											<c:when test="${status.getField() eq 'beauty' }">
												<td>미용</td>
											</c:when>
											<c:when test="${status.getField() eq 'kindergarten' }">
												<td>유치원</td>
											</c:when>
										</c:choose>

										<td>${status.getPlace()}</td>
										<td>${status.getPhone_num()}</td>
										<td>${status.getAddress()}</td>
										<td>${status.getOpen_time()}</td>
										<td>${status.getIntroduce()}</td>
										<td>${status.getPet_kind()}</td>
										<td>${status.getSharing_url()}</td>

										<c:choose>
											<c:when test="${status.getApprove_state() eq 0}">
												<td class="center aligned" style="color: blue; background-color: #d5d3d3;">승인 대기 중
													<div class="ui button cancle" tabindex="0" style="margin-top: 1rem;border:1px solid gray;">요청 취소</div>
												</td>
											</c:when>
											<c:when test="${status.getApprove_state() eq 1}">
												<td class="center aligned" style="background-color: #d5d3d3;">승인 완료</td>
											</c:when>
											<c:otherwise>
												<td class="center aligned" style="color: red; background-color: #d5d3d3;">승인 거절</td>
											</c:otherwise>
										</c:choose>
									</tr>
								</c:forEach>

							</tbody>
						</table>
					</div>
				</div>
			</section>
		</main>

		<footer>
			<%@ include file="../footer.jsp"%>
		</footer>

	</div>

</body>
</html>
