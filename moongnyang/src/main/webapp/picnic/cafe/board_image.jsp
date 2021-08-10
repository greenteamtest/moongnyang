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
									<p>내용 : <b id="content"></b></p>
									<script>
									const text = window.parent.document.getElementById("address").value;
									document.getElementById('address').innerText = text;
									const text1 = window.parent.document.getElementById("phone").value;
									document.getElementById('phone').innerText = text1;
									const text2 = window.parent.document.getElementById("content").value;
									document.getElementById('content').innerText = text2;	
									</script>
								</div>
					
								
								<div class="gallery">
									<a href="" class="image filtered span-2-5" data-position="top"><img id="img1" src="" alt="" /></a>							
									<script>
										const img1 = window.parent.document.getElementById("fileNm1").value;
										document.getElementById('img1').src="../upload/"+img1;
									</script>
								</div>
	
								<div class="gallery">
									<a href="" class="image filtered span-2-5" data-position="top"><img id="img2" src="" alt="" /></a>							
									<script>
										const img2 = window.parent.document.getElementById("fileNm2").value;
										document.getElementById('img2').src="../upload/"+img2;
									</script>
								</div>
								<div class="gallery">
									<a href="" class="image filtered span-2-5" data-position="top"><img id="img3" src="" alt="" /></a>
									<script>
										const img3 = window.parent.document.getElementById("fileNm3").value;
										document.getElementById('img3').src="../upload/"+img3;
									</script>
								</div>
								<div class="gallery">
									<a href="" class="image filtered span-2-5" data-position="top"><img id="img4" src="" alt="" /></a>							
									<script>
										const img4 = window.parent.document.getElementById("fileNm4").value;
										document.getElementById('img4').src="../upload/"+img4;
									</script>
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