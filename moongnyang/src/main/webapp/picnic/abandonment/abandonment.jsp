<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:include page="../../top&down/header.jsp" flush="ture" />
<jsp:include page="../../bootstrap/boot.jsp" flush="ture" />
<html>
<br><br><br><br>
<head>
<meta charset="UTF-8">
<title>유기 동물</title>
<style type="text/css">
table {
	width: 80%;
	height: 100px;
	margin: auto;
}
</style>
<script type="text/javascript" src="picnic/select.js"></script>
</head>
<body>
	<c:set var="i" value="0" />
	<c:set var="j" value="2" />
	
	<h1 align="center">유기 동물</h1>
	<form action="BoardServlet_picnic">
		<input type="hidden" name="command" value="abandonment">
		<div>
			<select class="form-select" name="upr_cd" id="upr_cd"
				onchange="category_org()" style="width: 80%; float:none; margin:0 auto">
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
			<select class="form-select" name="org_cd" id="org_cd" style="width: 80%; float:none; margin:0 auto">
				<option value="">시/군/구</option>
			</select>
		</div>
		<br>
		<div>
			<select class="form-select" name="upkind" id="upkind"
				onchange="category_kind()" style="width: 80%; float:none; margin:0 auto">
				<option value="">축종</option>
				<option value="417000">개</option>
				<option value="422400">고양이</option>
				<option value="429900">기타</option>
			</select>
		</div>
		<div>
			<select class="form-select" name="kind" id="kind" style="width: 80%; float:none; margin:0 auto">
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
	<table border="1">
		
		<c:forEach var="list" items="${list }" >
		
			<c:if test="${i%j == 0 }">
				<tr>
			</c:if>
			<td>
					<img src="${list.popfile }" width="350" height="350">
			</td>
			<td>
				<%-- &nbsp;유기 번호 : ${list.desertionNo }<br> --%> 
				&nbsp;접수일 : ${list.happenDt}<br> 
				&nbsp;발견장소 : ${list.happenPlace}<br>
				&nbsp;품종 : ${list.kindCd}<br> 
				&nbsp;색상 : ${list.colorCd}<br>
				&nbsp;나이 : ${list.age}<br> 
				&nbsp;체중 : ${list.weight}<br>
				&nbsp;상태 : ${list.processState}<br> 
				&nbsp;성별(M:수컷,F:암컷,Q:미상) : ${list.sexCd}<br> 
				&nbsp;중성화 여부(Y:예,N:아니오,U:미상) : ${list.neuterYn }<br> 
				&nbsp;보호소 명 : ${list.careNm }<br>
				&nbsp;보호소 연락처 : ${list.careTel}<br> 
				<%-- &nbsp;보호소 장소 : ${list.careAddr}<br> --%>
				<%-- &nbsp;관할 기관 : ${list.orgNm}<br> --%> 
				<%-- &nbsp;담당자 : ${list.chargeNm}<br> --%> 
				&nbsp;담당자 연락처 : ${list.officetel}<br>
				&nbsp;공고번호 : ${list.noticeNo}<br> 
				&nbsp;공고 시작일 : ${list.noticeSdt}<br> 
				&nbsp;공고 종료일 : ${list.noticeEdt}<br>
			</td>
			<c:if test="${i%j == j-1 }">
			</c:if>
			<c:set var="i" value="${i+1 }" />
		</c:forEach>
			
	</table>
		<table>
			<tr>		
				<td align="center">
					<h2><a href="javascript:backPage();">back</a>&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="javascript:nextPage();">next</a></h2>					
				</td>
		</tr>
	</table>
</body>
</html>