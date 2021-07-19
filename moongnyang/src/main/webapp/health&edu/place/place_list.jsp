<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/bootstrap/boot.jsp"%>
<%@ include file="/startbootstrap/startbootstrap.jsp"%>

<%@ include file="/jQuery/jquery.jsp"%>
<%@ include file="/setting/setting.jsp"%>
<%@ include file="/top&down/header.jsp"%>
<%@ include file="/health&edu/nav.jsp"%>

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
.card {
	margin: 20px 40px 20px 40px;
	border: 2px solid red;
}

#place_list {
	border: 5px solid red;
	display: flex;
	flex-direction: row;
	align-items: center;
	justify-content: center;
}

#card-border {
	border: 2px solid blue;
	width: 100rem;
	padding-left: 10rem;
	text-align: center;
}

.card-frame {
	display: inline-block;
	margin: 2rem 2rem 2rem 2rem;
}
</style>
</head>
<body>
	<div id="container">
		<main>
			<section id="place_list">
				<div id="card-border">

					<c:if test="${empty place }">
						<span id="no-data">데이터가 없습니다 </span>
					</c:if>

					<c:forEach var="vo" items="${ place }">

						<div class="card-frame">
							<div class="card" style="width: 18rem;">
								<img src="..." class="card-img-top" alt="...">
								<div class="card-body">
									<h5 class="card-title">${vo.getPlace() }</h5>
									<p class="card-text">${ vo.getAddress() }</p>
								</div>
								<ul class="list-group list-group-flush">
									<li class="list-group-item">${ vo.getPet_kind() }</li>
									<li class="list-group-item"># 거리</li>

									<li class="list-group-item">${ vo.getDips_cont() }</li>
								</ul>
								<div class="card-body">
									<a href="#" class="card-link"> 자세히 보기 </a> <a href="#" class="card-link">Another link</a>
								</div>
							</div>
						</div>
					</c:forEach>

				</div>
			</section>
		</main>
	</div>

	<%@ include file="../footer.jsp"%>


</body>
</html>
