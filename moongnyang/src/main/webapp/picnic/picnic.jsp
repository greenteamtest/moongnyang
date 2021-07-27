<!DOCTYPE HTML>
<!--
	Astral by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

	<jsp:include page="../top&down/header.jsp" flush="ture" />
	<jsp:include page="../bootstrap/boot.jsp" flush="ture" />

<html>
<br><br><br><br>
	<head>
		<title>뭉냥뭉냥</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="picnic/picnic/css/main.css" />
		<link rel="stylesheet" href="picnic/css/picnic.css" />
		<script type="text/javascript" src="picnic/select.js"></script>
	</head>
	<body class="is-preload">

		<!-- Wrapper-->
			<div id="wrapper">

				<!-- Nav -->
					<nav id="nav">
						<a href="#" class="icon solid fa-home"><span>Home</span></a>
						<a href="#abandonment" class="icon solid fa-folder"><span>유실 동물</span></a>
						<a href="#work1" class="icon solid fa-folder"><span>work1</span></a>
						<a href="#work2" class="icon solid fa-folder"><span>work2</span></a>
					</nav>

				<!-- Main -->
					<div id="main">

						<!-- Me -->
							<article id="home" class="panel intro">
								<header>
									<h1>뭉냥뭉냥</h1>
									<p>유기동물, 유기동물 보호소, 카페, 호텔</p>
								</header>
								<a href="#abandonment" class="jumplink pic">
									<span class="arrow icon solid fa-chevron-right"><span>See my work</span></span>
									<img src="picnic/images/me.jpg" alt="" />
								</a>
							</article>

						<!-- abandonment -->
							<article id="abandonment" class="panel" >															
								<header>
									<h2>유실 동물</h2>
								</header>
								<form action="BoardServlet_picnic">
								<input type="hidden" name="command" value="abandonment">
								<div>								
								<select  class="form-select" name ="upr_cd" id= "upr_cd" onchange="category_org()">
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
								<select  class="form-select" name = "org_cd" id="org_cd">
								<option value="">시/군/구</option>
								</select>
								</div>
								<br>
								<div>
									<select  class="form-select" name="upkind" id="upkind" onchange="category_kind()">
										<option value="">축종</option>
										<option value="417000">개</option>
										<option value="422400">고양이</option>
										<option value="429900">기타</option>
									</select>
								</div>
								<div>
									<select  class="form-select" name="kind" id="kind">
										<option value="">품종</option>
									</select>
									
								</div>
								<div style="text-align :center">
								<br>
								<input type="hidden" name="pageNo" value="1"> 
								<button type="submit" style="background:white" class="wobble-hor-bottom">
								<img src="picnic/images/loupe.png" width="100px" height="100px"></button>							
								</div>
								
								<div style="text-align :center">
									<br>
									<img src="picnic/images/nongrym.jpg">
								</div>
								</form>
							</article>

						<!-- work1 -->
							<article id="work1" class="panel">
								<header>
									<h2 align="center">카페 게시판</h2>
								</header>
								<div align="center">
									<img class="roll-in-left" src="picnic/images/right.png" width="100px" height="100px">									
									<a href="BoardServlet_picnic?command=cafe_kakao"><img src="picnic/images/run.gif" width="100px" height="100px"></a>
									<img class="roll-in-right" src="picnic/images/left.png" width="100px" height="100px">
								</div>
							</article>
							<!-- work2 -->
							<article id="work2" class="panel">
								<header>
									<h2>공사중</h2>
								</header>
								
							</article>
					</div>

				<!-- Footer -->
					<div id="footer">
						<ul class="copyright">
							<li>&copy; (주)흥청망청</li><li><a href="BoardServlet_picnic?command=index">처음 화면으로</a></li>
						</ul>
					</div>

			</div>

		<!-- Scripts -->
			<script src="picnic/picnic/js/jquery.min.js"></script>
			<script src="picnic/picnic/js/browser.min.js"></script>
			<script src="picnic/picnic/js/breakpoints.min.js"></script>
			<script src="picnic/picnic/js/util.js"></script>
			<script src="picnic/picnic/js/main.js"></script>

	</body>
</html>