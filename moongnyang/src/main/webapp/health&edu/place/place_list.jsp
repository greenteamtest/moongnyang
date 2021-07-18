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

.card-frame {
	display: inline-block;
}
</style>
</head>
<body>
	<main>
		
		<div class="card-frame">
			<div class="card" style="width: 18rem;">
				<img src="..." class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title">Card title</h5>
					<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's
						content.</p>
				</div>
				<ul class="list-group list-group-flush">
					<li class="list-group-item">An item</li>
					<li class="list-group-item">A second item</li>

					<li class="list-group-item">A third item</li>
				</ul>
				<div class="card-body">
					<a href="#" class="card-link">Card link</a> <a href="#" class="card-link">Another link</a>
				</div>
			</div>
		</div>

		<div class="card-frame">
			<div class="card" style="width: 18rem;">
				<img src="..." class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title">Card title</h5>
					<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's
						content.</p>
				</div>
				<ul class="list-group list-group-flush">
					<li class="list-group-item">An item</li>
					<li class="list-group-item">A second item</li>
					<li class="list-group-item">A third item</li>
				</ul>
				<div class="card-body">
					<a href="#" class="card-link">Card link</a> <a href="#" class="card-link">Another link</a>
				</div>
			</div>
		</div>

	</main>


	<%@ include file="../footer.jsp"%>


</body>
</html>
