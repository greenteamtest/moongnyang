<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="../../top&down/header.jsp" flush="ture" />
<jsp:include page="../../bootstrap/boot.jsp" flush="ture" />
<!DOCTYPE html>
<html>
	<input type="hidden" id="name" name="name" value="${vo.name }">
	<input type="hidden" id="address" name="address" value="${vo.place }">
	<input type="hidden" id="rAddress" name="rAddress" value="${vo.road_place }">
	<input type="hidden" id="phone" name="phone" value="${vo.phone }">
	<input type="hidden" id="x" name="x" value="${vo.x }">
	<input type="hidden" id="y" name="y" value="${vo.y }">
	
	<head>
	<meta charset="UTF-8"/>
	<title>${vo.road_place }</title>
	</head>
	<p align="center">
	<iframe style="width:100%; height:75px">		
	</iframe>
	</p>
	<p align="center">
	<iframe src="picnic/cafe/cafe_view1.jsp" style="width:80%; height:500px;">
	</iframe>
	</p>
	<p align="center">
	<iframe src="picnic/cafe/map_kakao.jsp" style="width:400px; height:400px">
	</iframe>
	</p>
	<iframe>
	</iframe>
</html>