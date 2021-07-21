<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/bootstrap/boot.jsp"%>
<%@ include file="/startbootstrap/startbootstrap.jsp"%>
<%@ include file="/semanticUI/semanticUI.jsp"%>

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
}

#place_list {
	display: flex;
	flex-direction: row;
	align-items: center;
	justify-content: center;
}

#card-border {
	width: 100rem;
	text-align: center;
}

.card-frame {
	display: inline-block;
	margin: 2rem 2rem 2rem 2rem;
	transition: transform 0.8s;
}

.card-frame:hover {
	transform: scale(1.05);
}

.card-img-top {
	height: 20rem;
}

.card-img-top:hover {
	cursor: pointer;
}

.pets-icons {
	height: 2rem;
	width: 2rem;
	margin-right: 1rem;
}

.card-link:hover {
	cursor: pointer;
	color: pink;
	transition: color 0.8s;
	color: pink;
}

.place {
	font-size: 1.5rem;
	font-weight: bold;
}

.place_img {
	width: 40rem;
	height: 35rem;
}

</style>
<script defer src="health&edu/place/place_info.js" type="text/javascript"></script>
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
								<input type="hidden" value="${vo.idx}" class="photo_${vo.idx}" />
								<img src="health&edu/place/place_img/${vo.place}_${vo.idx}.png" class="card-img-top" alt="place_photo"
									class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal" />
								<div class="card-body">
									<h5 class="card-title">${vo.getPlace() }</h5>
									<p class="card-text">${ vo.getAddress() }</p>
								</div>
								<ul class="list-group list-group-flush">
									<li class="list-group-item">
										<img src="health&edu/img/pets.png" class="pets-icons" alt="pet_icon"> ${ vo.getPet_kind() }
									</li>
									<li class="list-group-item"># 거리</li>

									<li class="list-group-item">
										<div class="ui labeled button" tabindex="0" style="margin-top: 1rem">
											<div class="ui red button">
												<i class="heart icon"></i> 찜
											</div>
											<a class="ui basic red left pointing label"> ${ vo.getDips_cont() } </a>
										</div>
										<div class="ui labeled button" tabindex="0" style="margin-top: 1rem">
											<div class="ui basic blue button">
												<i class="fork icon"></i> Forks
											</div>
											<a class="ui basic left pointing blue label"> 1,048 </a>
										</div>
									</li>



								</ul>


								<!-- 
								<div class="card-body">
									<a href="#" class="card-link"> 자세히 보기 </a> <a href="#" class="card-link">Another link</a>
								</div>
								 -->
							</div>
						</div>


					</c:forEach>


					<!-- Modal -->

					<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
						<div class="modal-dialog modal-lg modal-dialog-scrollable">

							<div class="modal-content">

								<div class="modal-header">
									<h5 class="modal-title" id="exampleModalLabel">살펴 보기</h5>
									<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
								</div>

								<div class="modal-body">
									<img src="" class="place_img" alt="place_photo" />
								</div>

								<div class="ui divider"></div>
								<div class="place"></div>
								<div class="ui divider"></div>
								<div class="address"></div>
								<div class="ui divider"></div>
								<div class="phone_num"></div>
								<div class="ui divider"></div>
								<div class="open_time"></div>
								<div class="ui divider"></div>
								<div class="introduce"></div>
								<div class="ui divider"></div>
								<div class="pet_kind"></div>
								<div class="ui divider"></div>
								<div class="dips_cont"></div>



								<div class="modal-footer">
									<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
									<button type="button" class="btn btn-primary">Save changes</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
		</main>
	</div>

	<%@ include file="../footer.jsp"%>


</body>
</html>
