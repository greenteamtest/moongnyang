<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page errorPage = "../picnic/error.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:include page="../../top&down/header.jsp" flush="ture" />

<html>
<br><br><br><br>
<head>
<meta charset="UTF-8">
<title>유기 동물</title>
<script type="text/javascript" src="picnic/abandonment/select.js"></script>
<link rel="stylesheet" href="picnic/abandonment/css/abandonment.css?ver=123" />
</head>
<body>
	<h1 align="center">유기 동물</h1>
	<form action="BoardServlet_picnic">
		<input type="hidden" name="command" value="abandonment">
		<div>
			<select class="form-select" name="upr_cd" id="upr_cd" onchange="category_org()" >
				<option value="">시/도</option>
				<option value="6110000">서울특별시</option>
				<option value="6260000">부산광역시</option>
				<option value="6270000">대구광역시</option>
				<option value="6280000">인천광역시</option>
				<option value="6290000">광주광역시</option>
				<option value="5690000">세종특별자치시</option>
				<option value="6300000">대전광역시</option>
				<option value="6310000">울산광역시</option>
				<option value="6410000">경기도</option>
				<option value="6420000">강원도</option>
				<option value="6430000">충청북도</option>
				<option value="6440000">충청남도</option>
				<option value="6450000">전라북도</option>
				<option value="6460000">전라남도</option>
				<option value="6470000">경상북도</option>
				<option value="6480000">경상남도</option>
				<option value="6500000">제주특별자치도</option>
			</select>
		</div>
		<div>
			<select class="form-select" name="org_cd" id="org_cd">
				<option value="">시/군/구</option>
			</select>
		</div>
		<br>
		<div>
			<select class="form-select" name="upkind" id="upkind" onchange="category_kind()">
				<option value="">축종</option>
				<option value="417000">개</option>
				<option value="422400">고양이</option>
				<option value="429900">기타</option>
			</select>
		</div>
		<div>
			<select class="form-select" name="kind" id="kind">
				<option value="">품종</option>
			</select>

		</div>
		<div style="text-align: center">
			<br>
			<input type="hidden" name="pageNo" value="1">
			<button type="submit" style="background: white">
				<img src="picnic/images/loupe.png" width="100px" height="100px">
			</button>
		</div>
	</form>
	<table border="1" frame="void">
	<c:set var="i" value="0" />
	<c:set var="j" value="2" />
		<c:forEach var="list" items="${list }" >
		
			<c:if test="${i%j == 0 }">
				<tr>
			</c:if>
			<td width="400" height="400">
				<a href="javascript:void(window.open('${list.popfile }', '팝업창 이름','width=500, height=500'))"><img src="${list.popfile }" width="400" height="400"></a><p></p>
			</td>
			<td width="400" height="400">			
				<div class="input-group mb-3">
					<span class="input-group-text" >접수일</span>
					<input type="text" class="form-control" value="${list.happenDt}" readonly><br>
				</div>
				<div class="input-group mb-3">
					<span class="input-group-text">발견장소</span>
					<input type="text" class="form-control" value="${list.happenPlace}" readonly><br> 
				</div>
				<div class="input-group mb-3">
					<span class="input-group-text">품종</span>
					<input type="text" class="form-control" value="${list.kindCd}" readonly><br> 
				</div>
				<div class="input-group mb-3">
					<span class="input-group-text">색상</span>
					<input type="text" class="form-control" value="${list.colorCd}" readonly><br> 
				</div> 
				<div class="input-group mb-3">
					<span class="input-group-text">나이</span>
					<input type="text" class="form-control" value="${list.age}" readonly><br> 
				</div>
				<div class="input-group mb-3">
					<span class="input-group-text">체중</span>
					<input type="text" class="form-control" value="${list.weight}" readonly><br> 
				</div>
				<div class="input-group mb-3">
					<span class="input-group-text">성별</span>
					<input type="text" class="form-control" value="${list.sexCd}&nbsp;(M:수컷,F:암컷,Q:미상)" readonly><br> 
				</div>
				<div class="input-group mb-3">
					<span class="input-group-text">중성화 여부</span>
					<input type="text" class="form-control" value="${list.neuterYn}&nbsp;(Y:예,N:아니오,U:미상)" readonly><br> 
				</div>
				<div class="input-group mb-3">
					<span class="input-group-text">보호소 명</span>
					<input type="text" class="form-control" value="${list.careNm}" readonly><br> 
				</div>
				<div class="input-group mb-3">
					<span class="input-group-text">담당자 연락처</span>
					<input type="text" class="form-control" value="${list.officetel}" readonly><br> 
				</div>
				<%-- 
				<div class="input-group mb-3">
					<span class="input-group-text">보호소 연락처</span>
					<input type="text" class="form-control" value="${list.careTel}" readonly><br> 
				</div>
				
				<div class="input-group mb-3">
					<span class="input-group-text">공고번호</span>
					<input type="text" class="form-control" value="${list.noticeNo}" readonly><br> 
				</div>--%>
				<div class="input-group mb-3">
					<span class="input-group-text">공고 기간</span>
					<input type="text" class="form-control" value="${list.noticeSdt} ~ ${list.noticeEdt}" readonly><br>
				</div>
				<p></p>
			</td>
			<c:if test="${i%j == j-1 }">
				</tr>
			</c:if>
			<c:set var="i" value="${i+1 }" />	
		</c:forEach>
			
	</table>
		<table>
			<tr>		
				<td align="center">
					<h2><a href="javascript:backPage();">◀Back</a>&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="javascript:nextPage();">Next▶</a></h2>					
				</td>
		</tr>
	</table>
</body>
</html>