<!DOCTYPE HTML>
	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

	<jsp:include page="../top&down/header.jsp" flush="ture" />
<html>
	<head>
		<title>뭉냥뭉냥</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="picnic/picnic/css/main.css" />
		<link rel="stylesheet" href="picnic/picnic/css/picnic.css" />
		<link rel="icon" type="image/png" href="http://example.com/myicon.png">
		<script type="text/javascript" src="picnic/select.js"></script>
	</head>

	<body class="is-preload">
		<!-- Wrapper-->
			<div id="wrapper">
				<!-- Nav -->
					<nav id="nav">
						<a href="#work1" class="icon solid fa-folder"><span>work1</span></a>
					</nav>
				<!-- Main -->
					<div id="main">
						<!-- work1 -->
							<article id="work1" class="panel">
								<header>
									<h2 align="center">카페 찾기</h2>
								</header>						
								<div align="center">
									<img class="roll-in-left" src="picnic/images/right.png" width="100px" height="100px">									
									<a href="BoardServlet_picnic?command=search_kakao"><img src="picnic/images/run.gif" width="100px" height="100px"></a>
									<img class="roll-in-right" src="picnic/images/left.png" width="100px" height="100px">
								</div>
							</article>
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