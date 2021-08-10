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
<title>HEALTH * EDU</title>


<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>

<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=61eaf0ccb670c71fede5ee3ff459092e&libraries=services,clusterer,drawing"></script>
<link href="health&edu/place/place.css" rel="stylesheet" />
<script defer src="health&edu/place/place_info.js" type="text/javascript"></script>
<script defer src="health&edu/place/insert_review.js" type="text/javascript"></script>
<script defer src="health&edu/place/revise_review.js" type="text/javascript"></script>
<script defer src="health&edu/place/delete_review.js" type="text/javascript"></script>
<script defer src="health&edu/place/kakaomap.js" type="text/javascript"></script>
<script defer src="health&edu/place/place_dips.js" type="text/javascript"></script>
<script defer src="health&edu/place/array_type.js" type="text/javascript"></script>
<script defer src="health&edu/place/search.js" type="text/javascript"></script>
<script defer src="health&edu/place/insert_distance.js" type="text/javascript"></script>
<script defer src="health&edu/place/sns_sharing.js" type="text/javascript"></script>

<style>
.modal-backdrop.fade.show {
	background: rgba(0, 0, 0, 0.4);
}

#ad1 .carousel-inner img, #ad2 .carousel-inner img {
	height: 100%;
}

div[class="container-fluid"] {
	text-align: center;
}

ul[class="nav nav-pills"] {
	position: absolute;
	right: 10rem;
}

nav[class="navbar navbar-light"] {
	padding-left: 10rem;
}

.d-flex input[class="form-control me-2"] {
	width: 25rem;
}

.rating-icons {
	width: 2rem;
	height: 2rem;
}

.nav-item {
	margin-left: 1rem;
	margin-right: 1rem;
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
		<nav class="navbar navbar-light" style="background-color: #e3f2fd;">
			<div class="container-fluid">
				<ul class="nav nav-pills">


					<li class="nav-item">
						<a class="nav-link active" href="javascript:;" id="popul">인기순</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="javascript:;" id="reviews">리뷰 많은 순</a>
					</li>

					<li class="nav-item">
						<a class="nav-link" href="javascript:;" id="stars">별점순</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="javascript:;" id="distance">거리순</a>
					</li>

				</ul>
				<div class="d-flex">
					<form name="showPlaceListFrm">
						<button class="tiny ui button">전체 목록 보기</button>
						<input type="hidden" value="placeList" name="command" />
						<input type="hidden" value="${loginUser.getEmail()}" name="email" />
						<input type="hidden" value="${key}" name="key" />
					</form>
					<input class="form-control me-2" type="search" placeholder="검색하실 키워드를 입력 해 주세요" aria-label="Search">
					&ensp;&ensp;&ensp;
					<button id="search-btn" class="btn btn-outline-success" type="submit">검 색</button>
				</div>
			</div>
		</nav>

		<div id="subcontainer">
			<main>
				<section id="place_list">
					<div id="user_email">
						<input type="hidden" value="${loginUser.getEmail()}" />
					</div>
					<div id="card-border">
						<c:if test="${empty placeList }">
							<span id="no-data">데이터가 없습니다 </span>
						</c:if>
						<c:forEach var="place" items="${ placeList }">
							<div class="card-frame">
								<div class="card">
									<input type="hidden" value="${place.getIdx()}" class="photo_${place.getIdx()}" />
									<img
										src="${pageContext.request.contextPath}/health&edu/place/place_img/${place.getPlace()}_${place.getIdx()}.png"
										class="card-img-top" alt="place_photo" class="btn btn-primary" data-bs-toggle="modal"
										data-bs-target="#place_info" />
									<input type="hidden" value="${place.getImgURL()}" class="imgURL" />
									<div class="card-body">
										<h5 class="card-title">${place.getPlace() }</h5>
										<p class="card-text">${place.getAddress() }</p>
									</div>
									<ul class="list-group list-group-flush">
										<li class="list-group-item">
											<img src="health&edu/img/pets.png" class="pets-icons" alt="pet_icon">
											<span>${place.getPet_kind() }</span>
										</li>
										<li class="list-group-item">
											<span class="placeDistance"></span>
											&nbsp; km
										</li>
										<li class="list-group-item">
											<img src="health&edu/img/ratings.png" class="rating-icons" alt="rating_icon"> &ensp;&ensp;
											<c:choose>
												<c:when test="${place.getAvg() == 0}">
													<span class="avg_rating">0 / 5.0</span>
												</c:when>
												<c:otherwise>
													<span class="avg_rating">${place.getAvg()} / 5.0</span>
												</c:otherwise>
											</c:choose>
										</li>
										<li class="list-group-item-btn">
											<div class="ui labeled button" tabindex="0">

												<c:set var="flag" value="false" />

												<c:forEach var="dips" items="${ dipsList }">
													<c:if test="${ flag eq false}">
														<c:if test="${place.getIdx() == dips.getDips_place_list_id()}">
															<c:set var="flag" value="true" />
														</c:if>
													</c:if>

												</c:forEach>

												<c:choose>
													<c:when test="${flag eq true}">
														<div class="ui red button activated" style="background-color: red; border: 2px solid red; color: white">
															<i class="heart icon"></i> 찜
														</div>
													</c:when>
													<c:otherwise>
														<div class="ui red button" style="background-color: white; border: 2px solid red; color: red">
															<i class="heart icon"></i> 찜
														</div>
													</c:otherwise>
												</c:choose>

												<a class="ui basic red left pointing label">${place.getDips_cont()}</a>
											</div>

											<div class="ui labeled button" tabindex="0" data-bs-toggle="modal" data-bs-target="#sharingModal">
												<div class="ui basic blue button">
													<i class="fork icon"></i>
													<input type="hidden" value="${place.getSharing_url() }" />
												</div>
												<a class="ui basic left pointing blue label">
													<span class="sharingCnt">1048</span>
												</a>
											</div>
										</li>
									</ul>
									<input type="hidden" value="${place.getReviewers() }" class="reviewersCnt" />
								</div>
							</div>
						</c:forEach>


						<!-- Modal -->

						<div style="text-align: center;" class="modal fade" id="place_info" tabindex="-1"
							aria-labelledby="exampleModalLabel" aria-hidden="true">
							<div class="modal-dialog modal-lg modal-dialog-scrollable">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="place_infoLabel">살펴보기</h5>
										<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
									</div>
									<div class="modal-body">

										<div id="showPhoto" class="carousel slide carousel-fade" data-bs-ride="carousel">
											<div class="carousel-inner">
												<div class="carousel-item active" data-bs-interval="2500">
													<img src="" class="d-block w-100" alt="업체사진">
												</div>
												<div class="carousel-item" data-bs-interval="2500">
													<img src="" class="d-block w-100" alt="업체사진">
												</div>
												<div class="carousel-item" data-bs-interval="2500">
													<img src="" class="d-block w-100" alt="업체사진">
												</div>
											</div>
											<button class="carousel-control-prev" type="button" data-bs-target="#showPhoto" data-bs-slide="prev">
												<span class="carousel-control-prev-icon" aria-hidden="true"></span>
												<span class="visually-hidden">Previous</span>
											</button>
											<button class="carousel-control-next" type="button" data-bs-target="#showPhoto" data-bs-slide="next">
												<span class="carousel-control-next-icon" aria-hidden="true"></span>
												<span class="visually-hidden">Next</span>
											</button>
										</div>
										<div class="text_contents">
											<div class="ui divider"></div>
											<span class="place"></span>
											<div class="ui divider"></div>
											<div class="ui divider1"></div>
											<i class="fas fa-home"></i> &emsp;
											<span class="address"></span>
											<div class="ui divider1"></div>
											<i class="fas fa-phone-alt"></i> &emsp;
											<span class="phone_num"></span>
											<div class="ui divider1"></div>
											<i class="far fa-clock"></i> &emsp;
											<span class="open_time"></span>
											<div class="ui divider1"></div>
											<div class="ui divider1"></div>
											<i class="fas fa-paw"></i> &emsp;
											<span class="pet_kind"></span>
											<div class="ui divider1"></div>
											<div class="ui divider1"></div>

											<div class="ui styled fluid accordion">
												<div class="title">
													<i class="dropdown icon"></i> 매장 소개
												</div>
												<div class="content">
													<span class="introduce"></span>
												</div>
											</div>

											<div class="ui styled fluid accordion">
												<div class="title">
													<i class="dropdown icon"></i> 매장 위치
												</div>
												<div class="content" id="map-frame">
													<div id="container" class="view_map">
														<div id="mapWrapper">
															<div id="map" style="width: 100%; height: 100%"></div>
															<!-- 지도를 표시할 div 입니다 -->
															<input type="button" id="btnRoadview" onclick="toggleMap(false)" title="로드뷰 보기" value="로드뷰">
														</div>
														<div id="rvWrapper">
															<div id="roadview" style="height: 100%"></div>
															<!-- 로드뷰를 표시할 div 입니다 -->
															<input type="button" id="btnMap" onclick="toggleMap(true)" title="지도 보기" value="지도">
														</div>
													</div>
													<div id="searchmap">
														<button id="searchmapBtn" class="ui inverted secondary button">카카오 지도 검색</button>
													</div>
												</div>

											</div>

											<div class="ui styled fluid accordion">
												<div class="title">
													<i class="dropdown icon"></i> 리뷰 보기
												</div>
												<div class="content">

													<div class="comments_frame">
														<div class="ui massive comments">
															<h3 class="ui dividing header" style="color: teal;">
																'
																<span id="header_comment"> </span>
																' 에대한 이쁜 리뷰를 작성 해 주세요!
															</h3>

															<div class="comment"></div>


															<div class="ui blue labeled submit icon button" class="btn btn-primary" id="btn1" data-bs-toggle="modal"
																data-bs-target="#">
																<i class="icon edit"></i> 리뷰를 등록하세요
															</div>

															<!-- insert Review Modal -->
															<div class="modal fade" id="write_container" data-bs-backdrop="static" data-bs-keyboard="false"
																tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
																<div class="modal-dialog modal-dialog-centered">
																	<div class="modal-content">
																		<div class="modal-header">
																			<h5 class="modal-title" id="staticBackdropLabel">리뷰 등록</h5>
																		</div>
																		<div class="modal-body">
																			<form class="ui reply form">
																				<div class="field">
																					<input type="hidden" value="${loginUser.getEmail()}" />
																					<textarea class="review_textarea" style="font-size: 1.5rem"></textarea>
																				</div>
																			</form>
																		</div>
																		<div class="modal-footer" id="sub-footer">
																			<div id="cntNum_frame">
																				[
																				<span id="cntNum">0</span>
																				/ 500 ]&nbsp;
																			</div>
																			<span id="select_rating_insert" style="font-size: 1.2rem">
																				별점 <i class="hand point right outline icon"></i> <i class="star icon" style="color: pink"></i> <i
																					class="star icon" style="color: pink"></i> <i class="star icon" style="color: pink"></i> <i
																					class="star icon" style="color: pink"></i> <i class="star icon" style="color: pink"></i>
																			</span>
																			<div class="ui buttons">
																				<button class="ui button">취소</button>
																				<div class="or"></div>
																				<button class="ui positive button">등록</button>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>

											<div class="ui divider1"></div>
											<div class="ui left labeled button" tabindex="0"></div>
										</div>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-primary">예약하러 가기</button>
									</div>

									<!-- request text count Modal -->
									<div class="modal fade" id="minText" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
										<div class="modal-dialog modal-dialog-centered">
											<div class="modal-content">
												<div class="modal-header"></div>
												<div class="modal-body">■ &nbsp; 10 글자 이상 입력 해 주세요 &nbsp;■</div>
												<div class="modal-footer"></div>
											</div>
										</div>
									</div>

									<!-- request text count Modal -->
									<div class="modal fade" id="maxText" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
										<div class="modal-dialog modal-dialog-centered">
											<div class="modal-content">
												<div class="modal-header"></div>
												<div class="modal-body">■ &nbsp; 1000 글자 이하로 작성 해 주세요 &nbsp;■</div>
												<div class="modal-footer"></div>
											</div>
										</div>
									</div>

									<!-- request login Modal -->
									<div class="modal fade" id="requestLogin" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
										<div class="modal-dialog modal-dialog-centered">
											<div class="modal-content">
												<div class="modal-header"></div>
												<div class="modal-body">■ &nbsp; 로그인 후 이용 가능 합니다 &nbsp;■</div>
												<div class="modal-footer"></div>
											</div>
										</div>
									</div>

									<!-- checkForOverlap Modal -->
									<div class="modal fade" id="checkOverlap" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
										<div class="modal-dialog modal-dialog-centered">
											<div class="modal-content">
												<div class="modal-header"></div>
												<div class="modal-body">■ &nbsp; 리뷰는 한개만 등록 할 수 있습니다 &nbsp;■</div>
												<div class="modal-footer"></div>
											</div>
										</div>
									</div>

									<!-- delete Modal -->
									<div class="modal fade" id="deleteReviewContainer" tabindex="-1" aria-labelledby="exampleModalLabel"
										aria-hidden="true">
										<div class="modal-dialog modal-dialog-centered">
											<div class="modal-content">
												<div class="modal-header"></div>
												<div class="modal-body">■ &nbsp; 등록하신 리뷰를 삭제하시겠습니까 ? &nbsp;■</div>
												<div class="modal-footer">
													<div class="ui buttons">
														<button class="ui button">취소</button>
														<div class="or"></div>
														<button class="ui positive button">확인</button>
													</div>
												</div>
												<input type="hidden" value="${loginUser.getEmail()}" />
											</div>
										</div>
									</div>

									<!-- revise Review Modal -->
									<div class="modal fade" id="reviseReviewContainer" data-bs-backdrop="static" data-bs-keyboard="false"
										tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
										<div class="modal-dialog modal-dialog-centered">
											<div class="modal-content">
												<div class="modal-header">
													<h5 class="modal-title" id="staticBackdropLabel">리뷰 수정</h5>
												</div>
												<div class="modal-body">
													<form class="ui reply form">
														<div class="field">
															<input type="hidden" value="${loginUser.getEmail()}" />
															<textarea class="review_textarea"></textarea>
														</div>
													</form>
												</div>
												<div class="modal-footer" id="sub-footer">
													<div id="cntNum_frame">
														[
														<span id="cntNum">0</span>
														/ 500 ]&nbsp;
													</div>
													<span id="select_rating_revise" style="font-size: 1.2rem">
														별점 <i class="hand point right outline icon"></i> <i class="star icon" style="color: pink"></i> <i
															class="star icon" style="color: pink"></i> <i class="star icon" style="color: pink"></i> <i
															class="star icon" style="color: pink"></i> <i class="star icon" style="color: pink"></i>
													</span>
													<div class="ui buttons">
														<button class="ui button">취소</button>
														<div class="or"></div>
														<button class="ui positive button" id="sucRvs">수정 완료</button>
													</div>
												</div>
											</div>
										</div>
									</div>


								</div>
							</div>
						</div>
					</div>
				</section>
			</main>





			<aside>
				<div id="ad1" class="ui half page test ad" data-text="">
					<div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
						<div class="carousel-inner">
							<div class="carousel-item active" data-bs-interval="3000">
								<img src="health&edu/place/add_img/나라동물병원.png" class="d-block w-100" alt="...">
							</div>
							<div class="carousel-item" data-bs-interval="3000">
								<img src="health&edu/place/add_img/동물병원.png" class="d-block w-100" alt="...">
							</div>
							<div class="carousel-item" data-bs-interval="3000">
								<img src="health&edu/place/add_img/반려동물병원.png" class="d-block w-100" alt="...">
							</div>
						</div>
					</div>
				</div>

				<div id="ad2" class="ui half page test ad" data-text="">
					<div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
						<div class="carousel-inner">
							<div class="carousel-item active" data-bs-interval="3000">
								<img src="health&edu/place/add_img/팝썸동물병원.png" class="d-block w-100" alt="...">
							</div>
							<div class="carousel-item" data-bs-interval="3000">
								<img src="health&edu/place/add_img/리아망고.png" class="d-block w-100" alt="...">
							</div>
							<div class="carousel-item" data-bs-interval="3000">
								<img src="health&edu/place/add_img/이벤트.png" class="d-block w-100" alt="...">
							</div>
						</div>
					</div>
				</div>
			</aside>
		</div>
	</div>



	<!--  toast  alert -->
	<div class="position-fixed bottom-0 end-0 p-3" style="z-index: 11">
		<div id="liveToast" class="toast hide" role="alert" aria-live="assertive" aria-atomic="true">
			<div class="toast-header" style="font-size: 1.1rem; color: white; background-color: skyblue;">
				<strong class="me-auto">※ 경고 ※</strong> <small>11 mins ago</small>
				<button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
			</div>
			<div class="toast-body" style="font-size: 1.3rem; display: inline-block;">* 로그인 후 이용 가능합니다 *</div>
		</div>
	</div>

	<div id="link_btn">
		<button class="ui facebook button">
			<i class="facebook icon"></i> Facebook
		</button>
		<br>
		<button class="ui instagram button">
			<i class="instagram icon"></i> Instagram
		</button>
	</div>


	<!-- sharingModal -->
	<div class="modal fade" id="sharingModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">공유 하기</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body" id="sharingModal-body" style="text-align: center;">
					<button class="ui facebook button" style="display: inline-block;">
						<i class="facebook icon"></i> Facebook
					</button>
					<input type="hidden" value="http://www.facebook.com/sharer/sharer.php?u=" />

					<button class="ui twitter button">
						<i class="twitter icon"></i> Twitter
					</button>
					<input type="hidden" value="https://twitter.com/intent/tweet?text=" />

					<button class="ui linkedin button" id="create-kakao-link-btn">
						<img alt="..." src="health&edu/place/logo_img/kakao.png" style="width: 1.5rem; height: 1.5rem;">
						<span>kakao talk</span>
					</button>
				</div>
				<div class="modal-footer"></div>
			</div>
		</div>
	</div>


	<footer>
		<%@ include file="../footer.jsp"%>
	</footer>
	<div id="sidebar">
		<%@ include file="../sidebar.jsp"%>
	</div>

</body>
</html>
