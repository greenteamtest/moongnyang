<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/health&edu/bootstrap/getboot.jsp"%>
<%@ include file="/health&edu/bootstrap/boot.jsp"%>
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

<link href="health&edu/place/place.css" rel="stylesheet" />
<script defer src="health&edu/place/place_info.js" type="text/javascript"></script>
<script defer src="health&edu/place/insert_review.js" type="text/javascript"></script>
<style>
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
								<input type="hidden" value="${vo.idx}" class="photo_${vo.idx}" />
								<img src="health&edu/place/place_img/${vo.place}_${vo.idx}.png" class="card-img-top" alt="place_photo"
									class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#place_info" />

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

							</div>
						</div>
					</c:forEach>


					<!-- Modal -->

					<div class="modal fade" id="place_info" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
											<div class="content">
												<span class="introduce"></span>
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

														<!-- Modal -->
														<div class="modal fade" id="write_container" data-bs-backdrop="static" data-bs-keyboard="false"
															tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
															<div class="modal-dialog modal-dialog-centered">
																<div class="modal-content">
																	<div class="modal-header">
																		<h5 class="modal-title" id="staticBackdropLabel">Review</h5>
																	</div>
																	<div class="modal-body">
																		<form class="ui reply form">
																			<div class="field">
																				<input type="hidden" value="${loginUser.getEmail()}" />
																				<textarea id="review_textarea"></textarea>
																			</div>
																		</form>
																	</div>
																	<div class="modal-footer" id="sub-footer">
																		<div id="cntNum_frame">
																			[
																			<span id="cntNum">0</span>
																			/ 500 ]&nbsp;
																		</div>
																		<span id="select_rating" style="font-size: 1.2rem">
																			별점 <i class="hand point right outline icon"></i> <i class="star icon" style="color: pink"></i> <i
																				class="star icon" style="color: pink"></i> <i class="star icon" style="color: pink"></i> <i
																				class="star icon" style="color: pink"></i> <i class="star icon" style="color: pink"></i>
																		</span>
																		<div class="ui buttons">
																			<button class="ui button">취소</button>
																			<div class="or"></div>
																			<button class="ui positive button">리뷰 등록</button>
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
									<button type="button" id="close_outside" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
									<button type="button" class="btn btn-primary">Save changes</button>
								</div>

								<!-- request login Modal -->
								<div class="modal fade" id="requestLogin" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
									<div class="modal-dialog modal-dialog-centered">
										<div class="modal-content">
											<div class="modal-header"></div>
											<div class="modal-body">■ &nbsp;  로그인 후 이용 가능 합니다  &nbsp;■</div>
											<div class="modal-footer"></div>
										</div>
									</div>
								</div>
								
								<!-- checkForOverlap Modal -->
								<div class="modal fade" id="checkOverlap" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
									<div class="modal-dialog modal-dialog-centered">
										<div class="modal-content">
											<div class="modal-header"></div>
											<div class="modal-body">■ &nbsp;  리뷰는 한개만 등록 할 수 있습니다  &nbsp;■</div>
											<div class="modal-footer"></div>
										</div>
									</div>
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
