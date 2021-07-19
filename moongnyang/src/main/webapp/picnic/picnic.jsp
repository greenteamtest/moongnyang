<!DOCTYPE HTML>
<!--
	Astral by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
	<%@ include file = "../top&down/header.jsp" %>
	<%@ include file = "../bootstrap/boot.jsp" %>
<html>
	<head>
		<title>뭉냥뭉냥</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="picnic/picnic/css/main.css" />
		<noscript><link rel="stylesheet" href="picnic/picnic/css/noscript.css" /></noscript>
	</head>
	<body class="is-preload">

		<!-- Wrapper-->
			<div id="wrapper">

				<!-- Nav -->
					<nav id="nav">
						<a href="#" class="icon solid fa-home"><span>Home</span></a>
						<a href="#work" class="icon solid fa-folder"><span>Work</span></a>
						<a href="#contact" class="icon solid fa-envelope"><span>Contact</span></a>
						<a href="https://twitter.com/ajlkn" class="icon brands fa-twitter"><span>Twitter</span></a>
					</nav>

				<!-- Main -->
					<div id="main">

						<!-- Me -->
							<article id="home" class="panel intro">
								<header>
									<h1>여행</h1>
									<p>카페, 호텔, </p>
								</header>
								<a href="#work" class="jumplink pic">
									<span class="arrow icon solid fa-chevron-right"><span>See my work</span></span>
									<img src="picnic/images/me.jpg" alt="" />
								</a>
							</article>

						<!-- Work -->
							<article id="work" class="panel">								
								<header>
									<h2>유실 동물</h2>
								</header>
								<form action="BoardServlet_picnic?command=abandonment" name="select">지역<br>
									<input type="checkbox" name="sido" value="soul"/>서울
									<input type="checkbox" name="sido" value="ssss" />경기도
								</form>
							</article>

						<!-- Contact -->
							<article id="contact" class="panel">
								<header>
									<h2>Contact Me</h2>
								</header>
								<form action="#" method="post">
									<div>
										<div class="row">
											<div class="col-6 col-12-medium">
												<input type="text" name="name" placeholder="Name" />
											</div>
											<div class="col-6 col-12-medium">
												<input type="text" name="email" placeholder="Email" />
											</div>
											<div class="col-12">
												<input type="text" name="subject" placeholder="Subject" />
											</div>
											<div class="col-12">
												<textarea name="message" placeholder="Message" rows="6"></textarea>
											</div>
											<div class="col-12">
												<input type="submit" value="Send Message" />
											</div>
										</div>
									</div>
								</form>
							</article>

					</div>

				<!-- Footer -->
					<div id="footer">
						<ul class="copyright">
							<li>&copy; Untitled.</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
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