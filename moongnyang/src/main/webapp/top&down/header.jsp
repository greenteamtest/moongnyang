<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../bootstrap/boot.jsp"%>
<%@ include file="/bootstrap/boot.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
<style>
.small1 {
	width: 100px;
}

.gray {
	color: #C0C0C0
}
</style>
<nav class="navbar navbar-expand-lg navbar-dark bg-secondary fixed-top"
	id="mainNav">
	<div class="container">
		<a class="navbar-brand" href="#page-top"><img
			src="assets/img/mungnang.jpg" alt="..."
			onclick="location.href='index.jsp'" /></a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarResponsive" aria-controls="navbarResponsive"
			aria-expanded="false" aria-label="Toggle navigation">
			Menu <i class="fas fa-bars ms-1"></i>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0">
				<c:if test="${!empty loginUser}">
					<li class="nav-item"><a class="nav-link" align="center">🐶🐱
							${loginUser.nickname}님, 환영합니당.🐶🐱 </a></li>
				</c:if>
				<c:if test="${!empty loginUser}">
					<button type="button" class="btn btn-warning position-relative "
						data-bs-toggle="modal" data-bs-target="#check_notification"
						data-bs-toggle="tooltip" data-bs-placement="top"
						title="읽지않은 알람을 확인하세요">
						알림 <span
							class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
							${unread_count}10 <span class="visually-hidden">unread
								messages</span>
						</span>
					</button>
				</c:if>
				<div>&nbsp;&nbsp;&nbsp;&nbsp;</div>
				<c:if test="${empty loginUser}">
					<li class="nav-item"><a class="nav-link" href="login.do"
						data-bs-toggle="tooltip" data-bs-placement="top" title="함께해요!">로그인
				</c:if>
				<c:if test="${!empty loginUser}">
					<li class="nav-item"><a class="nav-link" href="logout.do"
						data-bs-toggle="tooltip" data-bs-placement="top" title="정말 나가시게요?">로그아웃
				</c:if>
				</a>
				</li>
				<!-- 				<li class="nav-item"><a class="nav-link" href="#about">회원가입</a></li> -->
				<c:if test="${loginUser.auth==0}">
					<li class="nav-item"><a class="nav-link"
						href="mypageServlet?command=userPage" data-bs-toggle="tooltip"
						data-bs-placement="top" title="좀 더 가까이와요">마이페이지</a></li>
				</c:if>
				<c:if test="${loginUser.auth==1}">
					<li class="nav-item"><a class="nav-link"
						href="mypageServlet?command=businessPage" data-bs-toggle="tooltip"
						data-bs-placement="top" title="효율적으로 관리해봐요">사업장관리</a></li>
				</c:if>
				<c:if test="${loginUser.auth==2}">
					<li class="nav-item"><a class="nav-link"
						href="mypageServlet?command=managerPage" data-bs-toggle="tooltip"
						data-bs-placement="top" title="명심! 사용자들을 위한 운영!">페이지관리</a></li>
				</c:if>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" id="navbarDropdownMenuLink"
					role="button" data-bs-toggle="dropdown" aria-expanded="false">
						바로가기 </a>
					<ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
						<li><a class="dropdown-item"
							href="BoardServlet_picnic?command=picnic">Picnic</a></li>
						<li><a class="dropdown-item" href="#">Health & Edu</a></li>
						<li><a class="dropdown-item" href="#">Community</a></li>
					</ul></li>
			</ul>
		</div>
	</div>
</nav>

<!-- Modal -->
<div class="modal fade" id="check_notification" tabindex="-1"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="check_notificationLabel" align="center">새글알림</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="modal-body">...한화그룹으로 변경한 이유는, 1990년 중국에 사업차 간 간부들
				앞에 중국 환영단이 나와서 반기는데, 환영한다는 플래카드에 그룹 영문 명칭이었던 Korea Explosives Group을
				중국어로 번역 후 다시 한국어로 옮긴 듯한 "환영 남조선 폭파집단!"이라고 적혀 있었다고 한다. 출처1출처2[8] 실제로
				당시 한국화약그룹의 영문 명칭을 보고 서구권에서는 이게 웬 테러집단? 이라고 해석한 것이 그룹 명칭 변경의 이유라고 한다.
				밑에 소개하는 그룹 로고 중 가운데 마름모꼴 안에 K자가 보이는 로고[9]가 바로 Korea Explosives
				Group의 두문자이다. 구타 사건으로 널리 알려진 김승연 회장의 이미지에 더해, 대기업답지 않게 사훈에 "신용과 의리"가
				있다는 사실도 주목을 받으면서 웬지 조폭 기믹이 덧씌워진 느낌. 웬지가 아니고 2007년에 있었던 사건을 생각해보라. 사회
				공헌[10]도 많이 하는 기업인데 오너의 화통한 성격 탓에 어째…이 성격의 예를 보여주는 사례가 서울 프라자 호텔 내부
				공사를 할 때인데, 3개월간 호텔을 닫아야 하자 김승연 회장은 쿨하게 직원 전원에게 공사가 끝날 때까지 전부 유급휴가를
				줬다.</div>
			현암 김종희 창업주는 미군들이 붙여준 별명이 '다이너마이트 김' 일 정도로 화끈한 성격이었다고 한다. 특히 경기공립상업학교
			재학 중 일본인 학생이 한국인 학생을 구타하자 김종희가 나서서 그 일본인 학생을 구타했고 김종희는 이 일로 퇴학을 당했다.

			김종희 창업주가 후계자를 정해두지 않은 상태로 1981년 58세의 나이로 급사하면서 아직 20대였던 김승연-김호연 형제 간에
			분쟁이 폭발하였다. 일단 명분상의 우위를 가진 장남 김승연이 불과 29세의 나이로 회장에 취임하였으나, 형제 간의 재산분쟁은
			10여 년간 계속되었고 결국 1993년 차남 김호연이 그룹 계열사 중의 하나인 식품기업 빙그레를 가지고 떨어져 나가는 것으로
			종결되었다.[11] 딸 김영혜도 1996년 제일화재를 들고 분가했으나 2008년 제일화재가 그룹으로 돌아왔고, 대신
			한익스프레스를 인수했다. 김승연은 슬하에 3남을 두고 있는데, 장남 김동관은 현재 한화솔루션 대표이사 사장으로 재직중이며
			3세 경영권 승계자로 사실상 점쳐지는 분위기이다. 사건사고를 하나씩 달고 있는 다른 형제들과 달리 사고를 친 적이 없어 평이
			매우 좋다. 차남 김동원 한화생명 부사장 겸 최고디지털전략책임자는 사고 치고 다니다 수감된 적도 있고, 3남 김동선
			한화호텔앤드리조트 상무는 승마 선수로 성공하며 잘 사는 듯 했으나 계속 되는 술집 난동으로 비난과 질타를 받고 있다. 최근엔
			변호사 폭행으로 한화 오너 일가의 조폭 이미지를 강화하는 중이다. 차남 김동원은 2018년 생각치도 않은 깜짝 실적으로 잠시
			경영 능력이 호평을 받기도 했다. 김호연은 백범 김구의 손녀와 결혼한 인연으로 김구기념재단의 이사장을 맡기도 했으며, 18대
			총선에서는 새누리당 후보로 범 한화가의 지역 연고인 충남 천안시 을 지역구에 출마했으나 낙선하였고, 이후 보궐선거에서
			당선되었다. 그러나 19대 총선에선 다시 낙선하였다.
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary"
					data-bs-dismiss="modal">닫기</button>
				<button type="button" class="btn btn-Danger"
					data-bs-toggle="tooltip" data-bs-placement="top"
					title="하나하나 보시는것도 좋아요">모두 읽음 처리</button>
			</div>
		</div>
	</div>
</div>