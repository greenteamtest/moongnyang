<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>뭉냥뭉냥</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
	</head>
	<body class="is-preload">	
				<!-- Wrapper -->
					<div id="wrapper">
						<!-- Panel (사진)-->
							<section class="panel">
								<div class="intro color2">
									<h2 class="major" id="maintext">
									<script>									
									const name = window.parent.document.getElementById('name').value;
									document.getElementById('maintext').innerText = name;
									</script>
									</h2>
									<p>주소 : <b id="address"></b></p>
									<p>연락처 : <b id="phone"></b></p>
									<script>
									const text = window.parent.document.getElementById("address").value;
									document.getElementById('address').innerText = text;
									const text1 = window.parent.document.getElementById("phone").value;
									document.getElementById('phone').innerText = text1;
									
									</script>
									
								</div>
								<div class="gallery">
									<a href="images/test.jpg" class="image filtered span-2-5" data-position="top"><img src="images/test.jpg" alt="" /></a>							
								</div>
								<div class="gallery">
									<a href="images/test1.jpg" class="image filtered span-2-5" data-position="top"><img src="images/test1.jpg" alt="" /></a>							
								</div>
								<div class="gallery">
									<a href="images/test2.jpg" class="image filtered span-2-5" data-position="top"><img src="images/test2.jpg" alt="" /></a>							
								</div>
								<div class="gallery">
									<a href="images/test3.jpg" class="image filtered span-2-5" data-position="top"><img src="images/test3.jpg" alt="" /></a>							
								</div>
								</section>
							</div>
									
		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/main.js"></script><br>
	</body>
	
</html>