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
<script defer src="health&edu/business/business_registration.js" type="text/javascript"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<style>
section {
	display: flex;
	flex-direction: row;
	align-items: center;
	justify-content: center;
}

.reg-container {
	height: 100%;
	width: 100rem;
	display: flex;
	flex-direction: row;
	align-items: center;
	justify-content: center;
}

.form-horizontal {
	display: flex;
	flex-direction: column;
	width: 70%;
}

.form-horizontal>.form-group {
	margin-top: 1rem;
	margin-bottom: 1rem;
}
</style>
</head>
<body>
	<header>
		<%@ include file="/top&down/header.jsp"%>
		<%@ include file="/health&edu/logo.jsp"%>
	</header>
	<div id="maincontainer">
		<nav>
			<%@ include file="/health&edu/nav.jsp"%>
			
		</nav>
		<div id="subcontainer">
			<main>
				<section>
					<div class="reg-container">
						<!-- 좌우측의 공간 확보 -->
						<!-- 헤더 들어가는 부분 -->

						<div class="row">
							<p></p>
						</div>
						<!--// 헤더 들어가는 부분 -->
						<!-- 모달창 -->
						<div class="modal fade" id="defaultModal">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">알림</div>
									<div class="modal-body">
										<p class="modal-contents"></p>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-default close-btn" data-dismiss="modal">닫기</button>
									</div>
								</div>
								<!-- /.modal-content -->
							</div>
							<!-- /.modal-dialog -->
						</div>
						<!-- /.modal -->
						<!--// 모달창 -->
						<hr />
						<!-- 본문 들어가는 부분 -->



						<form class="form-horizontal" role="form" method="post" action="javascript:alert( 'success!' );">
							<div class="form-group">
								<hr>
								<br>
								<label for="provision" class="col-lg-2 control-label">

									위치정보 이용약관
									<span style="color: red"> * </span>
								</label>
								<div class="col-lg-10" id="provision">
									<textarea class="form-control" rows="8" style="resize: none">위치정보 이용약관에 동의하시면, 위치를 활용한 광고 정보 수신 등을 포함하는 네이버 위치기반 서비스를 이용할 수 있습니다.


제 1 조 (목적)
이 약관은 네이버 주식회사 (이하 “회사”)가 제공하는 위치정보사업 또는 위치기반서비스사업과 관련하여 회사와 개인위치정보주체와의 권리, 의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 합니다.

제 2 조 (약관 외 준칙)
이 약관에 명시되지 않은 사항은 위치정보의 보호 및 이용 등에 관한 법률, 정보통신망 이용촉진 및 정보보호 등에 관한 법률, 전기통신기본법, 전기통신사업법 등 관계법령과 회사의 이용약관 및 개인정보처리방침, 회사가 별도로 정한 지침 등에 의합니다.

제 3 조 (서비스 내용 및 요금)
①회사는 직접 위치정보를 수집하거나 위치정보사업자인 이동통신사로부터 위치정보를 전달받아 아래와 같은 위치기반서비스를 제공합니다.
1.Geo Tagging 서비스: 게시물에 포함된 개인위치정보주체 또는 이동성 있는 기기의 위치정보가 게시물과 함께 저장됩니다.
2.위치정보를 활용한 검색결과 제공 서비스: 정보 검색을 요청하거나 개인위치정보주체 또는 이동성 있는 기기의 위치정보를 제공 시 본 위치정보를 이용한 검색결과 및 주변결과(맛집, 주변업체, 교통수단 등)를 제시합니다.
3.위치정보를 활용한 친구찾기 및 친구맺기: 현재 위치를 활용하여 친구를 찾아주거나 친구를 추천하여 줍니다.
4.연락처 교환하기: 위치정보를 활용하여 친구와 연락처를 교환할 수 있습니다.
5.이용자 위치를 활용한 광고정보 제공: 검색결과 또는 기타 서비스 이용 과정에서 개인위치정보주체 또는 이동성 있는 기기의 위치를 이용하여 광고소재를 제시합니다.
6. 이용자 보호 및 부정 이용 방지: 개인위치정보주체 또는 이동성 있는 기기의 위치를 이용하여 권한없는 자의 비정상적인 서비스 이용 시도 등을 차단합니다.
7. 위치정보 공유: 개인위치정보주체 또는 이동성 있는 기기의 위치정보를 안심귀가 등을 목적으로 지인 또는 개인위치정보주체가 지정한 제3자에게 공유합니다.
8. 길 안내 등 생활편의 서비스 제공: 교통정보와 길 안내 등 최적의 경로를 지도로 제공하며, 주변 시설물 찾기, 뉴스/날씨 등 생활정보, 긴급구조 서비스 등 다양한 운전 및 생활 편의 서비스를 제공합니다.
②제1항 위치기반서비스의 이용요금은 무료입니다.
제 4 조 (개인위치정보주체의 권리)
①개인위치정보주체는 개인위치정보 수집 범위 및 이용약관의 내용 중 일부 또는 개인위치정보의 이용ㆍ제공 목적, 제공받는 자의 범위 및 위치기반서비스의 일부에 대하여 동의를 유보할 수 있습니다.
②개인위치정보주체는 개인위치정보의 수집ㆍ이용ㆍ제공에 대한 동의의 전부 또는 일부를 철회할 수 있습니다.
③개인위치정보주체는 언제든지 개인위치정보의 수집ㆍ이용ㆍ제공의 일시적인 중지를 요구할 수 있습니다. 이 경우 회사는 요구를 거절하지 아니하며, 이를 위한 기술적 수단을 갖추고 있습니다.
④개인위치정보주체는 회사에 대하여 아래 자료의 열람 또는 고지를 요구할 수 있고, 당해 자료에 오류가 있는 경우에는 그 정정을 요구할 수 있습니다. 이 경우 회사는 정당한 이유 없이 요구를 거절하지 아니합니다.
1.개인위치정보주체에 대한 위치정보 수집ㆍ이용ㆍ제공사실 확인자료
2.개인위치정보주체의 개인위치정보가 위치정보의 보호 및 이용 등에 관한 법률 또는 다른 법령의 규정에 의하여 제3자에게 제공된 이유 및 내용
⑤회사는 개인위치정보주체가 동의의 전부 또는 일부를 철회한 경우에는 지체 없이 수집된 개인위치정보 및 위치정보 수집ㆍ이용ㆍ제공사실 확인자료를 파기합니다. 단, 동의의 일부를 철회하는 경우에는 철회하는 부분의 개인위치정보 및 위치정보 수집ㆍ이용ㆍ제공사실 확인자료에 한합니다.
⑥개인위치정보주체는 제1항 내지 제4항 의 권리행사를 위하여 이 약관 제13조의 연락처를 이용하여 회사에 요구할 수 있습니다.
제 5 조 (법정대리인의 권리)
①회사는 만14세 미만 아동으로부터 개인위치정보를 수집ㆍ이용 또는 제공하고자 하는 경우에는 만14세 미만 아동과 그 법정대리인의 동의를 받아야 합니다.
②법정대리인은 만14세 미만 아동의 개인위치정보를 수집ㆍ이용ㆍ제공에 동의하는 경우 동의유보권, 동의철회권 및 일시중지권, 열람ㆍ고지요구권을 행사할 수 있습니다.
제 6 조 (위치정보 이용ㆍ제공사실 확인자료 보유근거 및 보유기간)
회사는 위치정보의 보호 및 이용 등에 관한 법률 제16조 제2항에 근거하여 개인위치정보주체에 대한 위치정보 수집ㆍ이용ㆍ제공사실 확인자료를 위치정보시스템에 자동으로 기록하며, 6개월 이상 보관합니다.

제 7 조 (서비스의 변경 및 중지)
①회사는 위치정보사업자의 정책변경 등과 같이 회사의 제반 사정 또는 법률상의 장애 등으로 서비스를 유지할 수 없는 경우, 서비스의 전부 또는 일부를 제한, 변경하거나 중지할 수 있습니다.
②제1항에 의한 서비스 중단의 경우에는 회사는 사전에 인터넷 등에 공지하거나 개인위치정보주체에게 통지합니다.
제 8 조 (개인위치정보 제3자 제공시 즉시 통보)
①회사는 개인위치정보주체의 동의 없이 당해 개인위치정보주체의 개인위치정보를 제3자에게 제공하지 아니하며, 제3자 제공 서비스를 제공하는 경우에는 제공 받는 자 및 제공목적을 사전에 개인위치정보주체에게 고지하고 동의를 받습니다.
②회사는 개인위치정보를 개인위치정보주체가 지정하는 제3자에게 제공하는 경우에는 개인위치정보를 수집한 당해 통신단말장치로 매회 개인위치정보주체에게 제공받는 자, 제공일시 및 제공목적을 즉시 통보합니다.
③다만, 아래에 해당하는 경우에는 개인위치정보주체가 미리 특정하여 지정한 통신단말장치 또는 전자우편주소 등으로 통보합니다.
1.개인위치정보를 수집한 당해 통신단말장치가 문자, 음성 또는 영상의 수신기능을 갖추지 아니한 경우
2.개인위치정보주체가 개인위치정보를 수집한 당해 통신단말장치 외의 통신단말장치 또는 전자우편주소 등으로 통보할 것을 미리 요청한 경우
제 9 조 (8세 이하의 아동 등의 보호의무자의 권리)
①회사는 아래의 경우에 해당하는 자(이하 “8세 이하의 아동”등이라 한다)의 보호의무자가 8세 이하의 아동 등의 생명 또는 신체보호를 위하여 개인위치정보의 이용 또는 제공에 동의하는 경우에는 본인의 동의가 있는 것으로 봅니다.
1. 8세 이하의 아동
2. 금치산자
3. 장애인복지법제2조제2항제2호의 규정에 의한 정신적 장애를 가진 자로서 장애인고용촉진및직업재활법 제2조제2호의 규정에 의한 중증장애인에 해당하는 자(장애인복지법 제29조의 규정에 의하여 장애인등록을 한 자에 한한다)
② 8세 이하의 아동 등의 생명 또는 신체의 보호를 위하여 개인위치정보의 이용 또는 제공에 동의를 하고자 하는 보호의무자는 서면동의서에 보호의무자임을 증명하는 서면을 첨부하여 회사에 제출하여야 합니다.
③보호의무자는 8세 이하의 아동 등의 개인위치정보 이용 또는 제공에 동의하는 경우 개인위치정보주체 권리의 전부를 행사할 수 있습니다.
제 10 조 (손해배상)
개인위치정보주체는 회사의 위치정보의 보호 및 이용 등에 관한 법률 제15조 내지 26조의 규정을 위반한 행위로 손해를 입은 경우에 회사에 대하여 손해배상을 청구할 수 있습니다. 이 경우 회사는 고의 또는 과실이 없음을 입증하지 아니하면 책임을 면할 수 없습니다.

제 11 조 (분쟁의 조정)
① 회사는 위치정보와 관련된 분쟁에 대하여 개인위치정보주체와 협의가 이루어지지 아니하거나 협의를 할 수 없는 경우에는 방송통신위원회에 재정을 신청할 수 있습니다.
② 회사 또는 개인정보위치 주체는 위치정보와 관련된 분쟁에 대해 당사자간 협의가 이루어지지 아니하거나 협의를 할 수 없는 경우에는 개인정보보호법에 따라 개인정보분쟁조정위원회에 조정을 신청할 수 있습니다.
제 12 조 (사업자 정보)
회사의 상호, 주소, 전화번호 그 밖의 연락처는 다음과 같습니다.

상호: 네이버 주식회사
주소: 경기도 성남시 분당구 불정로 6 네이버 그린팩토리 (463-867)
전화번호: 1588-3820
이메일 주소: navercc@naver.com
부칙
제1조 시행일
2015년 6월 2일부터 시행되던 종전의 약관은 본 약관으로 대체하며, 본 약관은 2015년 11월 26일부터 적용됩니다.

제2조 위치정보관리 책임자 정보
회사는 다음과 같이 위치정보 관리책임자를 지정하여 이용자들이 서비스 이용과정에서 발생한 민원사항 처리를 비롯하여 개인위치정보 주체의 권리 보호를 위해 힘쓰고 있습니다.

위치정보 관리책임자 : (개인)정보보호 담당 부서 임원(개인정보 보호책임자 겸직)
전화번호 : 1588-3820
이메일 주소 : privacy@naver.com
                        </textarea>
									<div class="radio">
										<label>
											<input type="radio" id="provisionYn" name="provisionYn" value="Y" autofocus="autofocus" checked>
											동의합니다.
										</label>
									</div>
									<div class="radio">
										<label>
											<input type="radio" id="provisionYn" name="provisionYn" value="N">
											동의하지 않습니다.
										</label>
									</div>
								</div>
							</div>
							<div class="form-group">
								<label for="memberInfo" class="col-lg-2 control-label">
									개인정보취급방침
									<span style="color: red"> * </span>
								</label>
								<div class="col-lg-10" id="memberInfo">
									<textarea class="form-control" rows="8" style="resize: none">
1. 수집하는 개인정보 항목
문화체육관광부 대표 누리집의 이용자 참여와 이용통계 분석 등의 서비스를 위해 회원 가입시 아래의 개인정보를 수집하고 있습니다.

가. 필수정보: 아이디, 이름, 성별, 출생년도, 비밀번호, 이메일
나. 선택정보: 거주지역
다. 서비스 이용 과정에서 아래와 같은 정보들이 자동으로 생성되어 수집될 수 있습니다.
(접속로그, 접속IP정보, 쿠키, 방문 일시, 서비스 이용기록, 불량 이용 기록)
2. 대표 누리집에서 이용자 회원가입 시 직접 개인정보를 입력 및 수정하여 개인정보를 수집합니다.
3. 수집 개인정보의 이용목적
회원가입, 회원활동 실적 관리, 회원탈퇴 의사 확인 등 회원관리
제공되는 서비스 이용에 관한 인구통계학적 분석, 서비스 방문 및 이용기록 분석, 관심사에 기반한 맞춤형 서비스 등 제공
신규 서비스 개발 및 활성화, 홍보 및 이벤트, 전자우편 서비스 등 정보 전달
향후 법정 대리인 본인확인, 분쟁 조정을 위한 기록보존, 불만처리 등 민원처리, 고지사항 전달 등
4. 개인정보의 보유 및 이용기간
이용자의 개인정보는 원칙적으로 개인정보의 수집 및 이용목적이 달성되면 지체 없이 파기합니다.
따라서 문화체육관광부 대표누리집은 최종 로그인 후 2년이 경과하였거나 정보주체의 회원 탈퇴 신청 시 회원의 개인정보를 지체 없이 파기합니다.

동의 거부 권리 사실 및 불이익 내용
이용자는 동의를 거부할 권리가 있습니다. 동의를 거부할 경우에는 서비스 이용에 제한됨을 알려드립니다.
                        </textarea>
									<div class="radio">
										<label>
											<input type="radio" id="memberInfoYn" name="memberInfoYn" value="Y" checked>
											동의합니다.
										</label>
									</div>
									<div class="radio">
										<label>
											<input type="radio" id="memberInfoYn" name="memberInfoYn" value="N">
											동의하지 않습니다.
										</label>
									</div>
								</div>
							</div>

							<label for="inputName" class="col-lg-2 control-label">
								카테고리 선택
								<span style="color: red"> * </span>
							</label>
							<select name="category" class="ui dropdown category" style="width: 20rem;">
								<option value="beauty">미용</option>
								<option value="hospital">병원</option>
								<option value="kindergarten">유치원</option>
							</select>
							<div class="form-group" id="divId">
								<label for="inputId" class="col-lg-2 control-label">
									상호명
									<span style="color: red"> * </span>
								</label>
								<div class="col-lg-10">
									<input type="text" name="company-name" class="form-control onlyAlphabetAndNumber" id="company-name"
										data-rule-required="true" placeholder="상호명을 작성 해 주세요 (30자 이내  한글,영어,특수문자_ 만  가능합니다)" maxlength="30">
								</div>
							</div>
							<div class="form-group" id="divPassword">
								<label for="inputPassword" class="col-lg-2 control-label">
									주소
									<span style="color: red"> * </span>
								</label>
								<div class="col-lg-10">
									<input type="text" name="userZipcode" class="form-control post-num" id="userZipcode" data-rule-required="true"
										placeholder="우편번호" maxlength="30" style="width: 10rem; display: inline-block; margin-bottom: 0.5rem;"
										readonly="readonly">
									<span style="margin-left: 1rem;">
										<input type="button" id="find_zipcode" value="우편번호찾기" />
									</span>
									<br>
									<div>
										<input type="text" name="userAddress" class="form-control onlyAlphabetAndNumber" id="userAddress"
											data-rule-required="true" placeholder="주소를 입력 해 주세요" maxlength="30" readonly="readonly"
											style="width: 25rem; display: inline-block;" />

										<input type="text" name="user-detail-address" class="form-control address-detail" id="user-detail-address"
											data-rule-required="true" placeholder="상세주소" maxlength="30"
											style="width: 31.9rem; display: inline-block; margin-left: 1rem;" />
									</div>
								</div>
							</div>
							<div class="form-group" id="divPhoneNumber">
								<label for="inputPhoneNumber" class="col-lg-2 control-label">
									전화 번호
									<span style="color: red"> * </span>
								</label>
								<div class="col-lg-10">
									<input type="tel" name="phoneNumber" class="form-control onlyNumber" id="phoneNumber" data-rule-required="true"
										placeholder="-를 포함하여 입력 해 주세요" maxlength="15">
								</div>
							</div>
							<div class="form-group" id="time">
								<label for="inputName" class="col-lg-2 control-label">
									오픈 시간
									<span style="color: red"> * </span>
								</label>
								<select name="date" class="ui dropdown date">
									<option value="매일">매일</option>
									<option value="평일">평일</option>
									<option value="주말">주말</option>
								</select> &ensp;&ensp; <select name="date" class="ui search dropdown start-sales">
									<option value="" disabled>영업시작</option>
									<option value="07">07 : 00</option>
									<option value="08">08 : 00</option>
									<option value="09">09 : 00</option>
									<option value="10">10 : 00</option>
									<option value="11">11 : 00</option>
									<option value="12">12 : 00</option>
									<option value="13">13 : 00</option>
									<option value="14">14 : 00</option>
									<option value="15">15 : 00</option>
									<option value="16">16 : 00</option>
									<option value="17">17 : 00</option>
									<option value="18">18 : 00</option>
									<option value="19">19 : 00</option>
									<option value="20">20 : 00</option>
								</select> &nbsp;~&nbsp; <select name="date" class="ui search dropdown end-sales">
									<option value="" disabled>영업종료</option>
									<option value="08">08: 00</option>
									<option value="09">09: 00</option>
									<option value="10">10: 00</option>
									<option value="11">11 : 00</option>
									<option value="12">12 : 00</option>
									<option value="13">13 : 00</option>
									<option value="14">14 : 00</option>
									<option value="15">15 : 00</option>
									<option value="16">16 : 00</option>
									<option value="17">17 : 00</option>
									<option value="18">18 : 00</option>
									<option value="19">19 : 00</option>
									<option value="20">20 : 00</option>
									<option value="21">21 : 00</option>
									<option value="22">22 : 00</option>
									<option value="23">23 : 00</option>
									<option value="24">24 : 00</option>
								</select> &ensp;
								<div class="form-check" style="display: inline-block">
									<label class="form-check-label" for="all-day"> 24시간 영업 </label>
									<input class="form-check-input all-day" type="checkbox" value="24시간 영업" id="all-day">
								</div>
								&ensp;
								<div class="form-check" style="display: inline-block">
									<label class="form-check-label" for="closed"> 코로나로 인한 임시 휴무</label>
									<input class="form-check-input closed" type="checkbox" value="코로나로 인한 임시 휴무" id="closed">
								</div>

							</div>

							<div class="form-group" id="divNickname">
								<label for="inputNickname" class="col-lg-2 control-label">동반가능 견종</label>
								<select name="pet_kind" class="ui dropdown">
									<option value="소형견">소형견</option>
									<option value="소형견 / 중형견">소형견 , 중형견</option>
									<option value="소형견 / 중형견 / 대형견">소형견 , 중형견 , 대형견</option>
								</select>
							</div>

							<div class="form-group">
								<label for="inputPhoneNumber" class="col-lg-2 control-label">대표 URL</label>
								<div class="col-lg-10">
									<input name="link_url" type="text" class="form-control link_url" data-rule-required="true"
										placeholder="사업장 대표 URL 을 작성 해 주세요(ex. http(s)://www.moongnyang.com)" maxlength="30">
								</div>
							</div>

							<div class="form-group" id="divEmail">
								<label for="inputEmail" class="col-lg-2 control-label">
									매장 소개
									<span style="color: red"> * </span>
								</label>
								<textarea name="introduce" class="form-control introduce" rows="8" style="resize: none"></textarea>
							</div>

							<div class="mb-3">
								<label for="formFile" class="form-label">대표 사진을 선택하세요 (최대 3개)</label>
								<span style="color: red"> * </span>
								&ensp;&ensp;
								<span> ※ 1개 이상 대표 이미지를 첨부하세요 ※</span>
								<input name="store_photo" class="form-control" type="file" id="formFile">
							</div>
							<div class="mb-3">
								<input name="store_photo" class="form-control" type="file" id="formFile">
							</div>
							<div class="mb-3">
								<input name="store_photo" class="form-control" type="file" id="formFile">
							</div>


							<div class="form-group">
								<label for="inputEmailReceiveYn" class="col-lg-2 control-label">이메일 수신여부(선택)</label>
								<div class="col-lg-10">
									<label class="radio-inline">
										<input type="radio" id="emailReceiveYn" name="emailReceiveYn" value="Y" checked>
										동의합니다.
									</label>
									<label class="radio-inline">
										<input type="radio" id="emailReceiveYn" name="emailReceiveYn" value="N">
										동의하지 않습니다.
									</label>
								</div>
							</div>
							<div class="form-group">
								<label for="inputPhoneNumber" class="col-lg-2 control-label">SMS 수신여부(선택)</label>
								<div class="col-lg-10">
									<label class="radio-inline">
										<input type="radio" id="smsReceiveYn" name="smsReceiveYn" value="Y" checked>
										동의합니다.
									</label>
									<label class="radio-inline">
										<input type="radio" id="smsReceiveYn" name="smsReceiveYn" value="N">
										동의하지 않습니다.
									</label>
								</div>
							</div>
							<div id="alert_txt" style="color: red;">
								<span style="font-size: 1.2rem;">( * 표시 된 곳은 필수로 입력하여 주시기 바랍니다 )</span>
							</div>
							<hr>
							<br>
							<div class="form-group" style="text-align: center;">
								<div class="col-lg-offset-2 col-lg-10" style="display: inline-block;">
									<button type="button" class="btn btn-primary submit-btn">사업장 신청</button>
								</div>
							</div>
							<input type="hidden" name="command" value="businessRegistration" />
						</form>
					</div>
				</section>
			</main>
		</div>
	</div>

	<footer>
		<%@ include file="../footer.jsp"%>
	</footer>
	<script>
	
	$('#find_zipcode').click(() => {
	    new daum.Postcode({
	            oncomplete : function(data) {
	            
	        	// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

	                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
	                // 내려오는 변수가 값이 없을땐 공백('')값을 가지므로, 이를 참고하여 분기한다.
	                 var addr = ''; // 주소 변수

	                 //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	                 if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                     addr = data.roadAddress;
	                 } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                     addr = data.jibunAddress;
	                 }

	                 // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                 document.getElementById('userZipcode').value = data.zonecode;
	                 document.getElementById("userAddress").value = addr;
	                 	
	                 // 커서를 상세주소 필드로 이동한다.
	                 document.getElementById("user-detail-address").focus();
	            }
	        }).open();
	})
      
    </script>
</body>
</html>
