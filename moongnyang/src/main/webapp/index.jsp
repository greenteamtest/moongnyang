<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="bootstrap/boot.jsp"%>
<%@ include file="top&down/header.jsp"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />

<title>뭉냥뭉냥-반려동물과의 즐거운 하루 !</title>
<!-- Favicon-->

</head>

<!-- 여기서부터 수정함 -->
<body id="page-top">
	<!-- Navigation-->
<!-- 	Masthead -->
	<header class="masthead">
		<div class="nav_wrap">
			<ul id="nav">
				<li><a href='about.jsp'>ABOUT</a></li>
				<li><a href='picnic.jsp'>PICNIC</a>
					<div class="over_wrap" style="top: 80px; display: none;">
						<div class="menu wrap">
							<h2>PICNIC</h2>
							<ul class="picnic_list">
								<li>카페</li>
								<li>레스토랑</li>
								<li>호텔</li>
							</ul>
						</div>
					</div></li>
				<li><a href='health&edu.jsp'>HEALTH & EDU</a>
					<div class="over_wrap" style="top: 80px; display: none;">
						<div class="menu wrap">
							<h2>HEALTH & EDU</h2>
							<ul class="health&edu_list">
								<li>병원 예약</li>
								<li>미용 예약</li>
								<li>유치원 예약</li>
							</ul>
						</div>
					</div></li>
				<li><a href='community.jsp'>COMMUNITY</a>
					<div class="over_wrap" style="top: 80px; display: none;">
						<div class="menu wrap">
							<h2>COMMUNITY</h2>
							<ul class="community_list">
								<li>제품추천</li>
								<li>순간포착</li>
								<li>벼룩시장</li>
								<li>궁금해요</li>
							</ul>
						</div>
					</div></li>
			</ul>
		</div>
	</header>


	<!-- Main -->
	<section class="page-section" id="services">
		<div class="main">
			
		</div>
	</section>
	
	
	<!-- Services-->
	<section class="page-section" id="services">
		<div class="container">
			<div class="text-center">
				<h2 class="section-heading text-uppercase">Services</h2>
				<h3 class="section-subheading text-muted">뭉냥뭉냥에서는...</h3>
			</div>
			<div class="row text-center">
				<div class="col-md-4">
					<span class="fa-stack fa-4x"> <i
						class="fas fa-circle fa-stack-2x text-primary"></i> <i
						class="fas fa-tree fa-stack-1x fa-inverse"></i>
					</span>
					<h4 class="my-3">여행</h4>
					<p class="text-muted">
						반려동물과 함께 갈 수 있는 <br> 식당, 카페, 편의시설을 추천해드려요 !
					</p>
				</div>
				<div class="col-md-4">
					<span class="fa-stack fa-4x"> <i
						class="fas fa-circle fa-stack-2x text-primary"></i> <i
						class="fas fa-notes-medical fa-stack-1x fa-inverse"></i>
					</span>
					<h4 class="my-3">건강</h4>
					<p class="text-muted">
						반려동물의 병원예약, 미용실 예약, <br> 유치원 및 호텔 예약을 도와드려요 !
					</p>
				</div>
				<div class="col-md-4">
					<span class="fa-stack fa-4x"> <i
						class="fas fa-circle fa-stack-2x text-primary"></i> <i
						class="fas fa-comments fa-stack-1x fa-inverse"></i>
					</span>
					<h4 class="my-3">커뮤니티</h4>
					<p class="text-muted">
						반려동물의 사랑스러운 사진을 올려 <br>다른 반려인들과 소통해보세요 !
					</p>
				</div>
			</div>
		</div>
	</section>
	
	
	<!-- Portfolio Grid-->
	<section class="page-section bg-warning" id="portfolio">
		<div class="container">
			<div class="text-center">
				<h2 class="section-heading text-uppercase">포트폴리오</h2>
				<h3 class="section-subheading text-muted">뭉냥뭉냥에서 당신이 할 수 있는 것</h3>
			</div>
			<div class="row">
				<div class="col-lg-4 col-sm-6 mb-4">
					<!-- Portfolio item 1-->
					<div class="portfolio-item">
						<a class="portfolio-link" data-bs-toggle="modal"
							href="#portfolioModal1">
							<div class="portfolio-hover">
								<div class="portfolio-hover-content">
									<i class="fas fa-plus fa-3x"></i>
								</div>
							</div> <img class="img-fluid" src="assets/img/portfolio/1.jpg"
							alt="..." />
						</a>
						<div class="portfolio-caption">
							<div class="portfolio-caption-heading">여행</div>
							<div class="portfolio-caption-subheading text-muted">반려동물과 함께 갈 수 있는 <br> 식당, 카페, 편의시설을 추천해드려요 !</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-sm-6 mb-4">
					<!-- Portfolio item 2-->
					<div class="portfolio-item">
						<a class="portfolio-link" data-bs-toggle="modal"
							href="#portfolioModal2">
							<div class="portfolio-hover">
								<div class="portfolio-hover-content">
									<i class="fas fa-plus fa-3x"></i>
								</div>
							</div> <img class="img-fluid" src="assets/img/portfolio/2.jpg"
							alt="..." />
						</a>
						<div class="portfolio-caption">
							<div class="portfolio-caption-heading">건강</div>
							<div class="portfolio-caption-subheading text-muted">반려동물의 병원예약, 미용실 예약, <br> 유치원 및 호텔 예약을 도와드려요 !</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-sm-6 mb-4">
					<!-- Portfolio item 3-->
					<div class="portfolio-item">
						<a class="portfolio-link" data-bs-toggle="modal"
							href="#portfolioModal3">
							<div class="portfolio-hover">
								<div class="portfolio-hover-content">
									<i class="fas fa-plus fa-3x"></i>
								</div>
							</div> <img class="img-fluid" src="assets/img/portfolio/3.jpg"
							alt="..." />
						</a>
						<div class="portfolio-caption">
							<div class="portfolio-caption-heading">커뮤니티</div>
							<div class="portfolio-caption-subheading text-muted">반려동물의 사랑스러운 사진을 올려 <br>다른 반려인들과 소통해보세요 !</div>
						</div>
					</div>
				</div>
					
			</div>
		</div>
	</section>
	<!-- About-->
	<section class="page-section" id="about">
		<div class="container">
			<div class="text-center">
				<h2 class="section-heading text-uppercase">About</h2>
				<h3 class="section-subheading text-muted">Lorem ipsum dolor sit
					amet consectetur.</h3>
			</div>
			<ul class="timeline">
				<li>
					<div class="timeline-image">
						<img class="rounded-circle img-fluid" src="assets/img/about/1.jpg"
							alt="..." />
					</div>
					<div class="timeline-panel">
						<div class="timeline-heading">
							<h4>2009-2011</h4>
							<h4 class="subheading">Our Humble Beginnings</h4>
						</div>
						<div class="timeline-body">
							<p class="text-muted">Lorem ipsum dolor sit amet, consectetur
								adipisicing elit. Sunt ut voluptatum eius sapiente, totam
								reiciendis temporibus qui quibusdam, recusandae sit vero unde,
								sed, incidunt et ea quo dolore laudantium consectetur!</p>
						</div>
					</div>
				</li>
				<li class="timeline-inverted">
					<div class="timeline-image">
						<img class="rounded-circle img-fluid" src="assets/img/about/2.jpg"
							alt="..." />
					</div>
					<div class="timeline-panel">
						<div class="timeline-heading">
							<h4>March 2011</h4>
							<h4 class="subheading">An Agency is Born</h4>
						</div>
						<div class="timeline-body">
							<p class="text-muted">Lorem ipsum dolor sit amet, consectetur
								adipisicing elit. Sunt ut voluptatum eius sapiente, totam
								reiciendis temporibus qui quibusdam, recusandae sit vero unde,
								sed, incidunt et ea quo dolore laudantium consectetur!</p>
						</div>
					</div>
				</li>
				<li>
					<div class="timeline-image">
						<img class="rounded-circle img-fluid" src="assets/img/about/3.jpg"
							alt="..." />
					</div>
					<div class="timeline-panel">
						<div class="timeline-heading">
							<h4>December 2015</h4>
							<h4 class="subheading">Transition to Full Service</h4>
						</div>
						<div class="timeline-body">
							<p class="text-muted">Lorem ipsum dolor sit amet, consectetur
								adipisicing elit. Sunt ut voluptatum eius sapiente, totam
								reiciendis temporibus qui quibusdam, recusandae sit vero unde,
								sed, incidunt et ea quo dolore laudantium consectetur!</p>
						</div>
					</div>
				</li>
				<li class="timeline-inverted">
					<div class="timeline-image">
						<img class="rounded-circle img-fluid" src="assets/img/about/4.jpg"
							alt="..." />
					</div>
					<div class="timeline-panel">
						<div class="timeline-heading">
							<h4>July 2020</h4>
							<h4 class="subheading">Phase Two Expansion</h4>
						</div>
						<div class="timeline-body">
							<p class="text-muted">Lorem ipsum dolor sit amet, consectetur
								adipisicing elit. Sunt ut voluptatum eius sapiente, totam
								reiciendis temporibus qui quibusdam, recusandae sit vero unde,
								sed, incidunt et ea quo dolore laudantium consectetur!</p>
						</div>
					</div>
				</li>
				<li class="timeline-inverted">
					<div class="timeline-image">
						<h4>
							Be Part <br /> Of Our <br /> Story!
						</h4>
					</div>
				</li>
			</ul>
		</div>
	</section>
	<!-- Team-->
	<section class="page-section bg-light" id="team">
		<div class="container">
			<div class="text-center">
				<h2 class="section-heading text-uppercase">Our Amazing Team</h2>
				<h3 class="section-subheading text-muted">Lorem ipsum dolor sit
					amet consectetur.</h3>
			</div>
			<div class="row">
				<div class="col-lg-4">
					<div class="team-member">
						<img class="mx-auto rounded-circle" src="assets/img/team/1.jpg"
							alt="..." />
						<h4>Parveen Anand</h4>
						<p class="text-muted">Lead Designer</p>
						<a class="btn btn-dark btn-social mx-2" href="#!"><i
							class="fab fa-twitter"></i></a> <a
							class="btn btn-dark btn-social mx-2" href="#!"><i
							class="fab fa-facebook-f"></i></a> <a
							class="btn btn-dark btn-social mx-2" href="#!"><i
							class="fab fa-linkedin-in"></i></a>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="team-member">
						<img class="mx-auto rounded-circle" src="assets/img/team/2.jpg"
							alt="..." />
						<h4>Diana Petersen</h4>
						<p class="text-muted">Lead Marketer</p>
						<a class="btn btn-dark btn-social mx-2" href="#!"><i
							class="fab fa-twitter"></i></a> <a
							class="btn btn-dark btn-social mx-2" href="#!"><i
							class="fab fa-facebook-f"></i></a> <a
							class="btn btn-dark btn-social mx-2" href="#!"><i
							class="fab fa-linkedin-in"></i></a>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="team-member">
						<img class="mx-auto rounded-circle" src="assets/img/team/3.jpg"
							alt="..." />
						<h4>Larry Parker</h4>
						<p class="text-muted">Lead Developer</p>
						<a class="btn btn-dark btn-social mx-2" href="#!"><i
							class="fab fa-twitter"></i></a> <a
							class="btn btn-dark btn-social mx-2" href="#!"><i
							class="fab fa-facebook-f"></i></a> <a
							class="btn btn-dark btn-social mx-2" href="#!"><i
							class="fab fa-linkedin-in"></i></a>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-8 mx-auto text-center">
					<p class="large text-muted">Lorem ipsum dolor sit amet,
						consectetur adipisicing elit. Aut eaque, laboriosam veritatis,
						quos non quis ad perspiciatis, totam corporis ea, alias ut unde.</p>
				</div>
			</div>
		</div>
	</section>
	<!-- Clients-->
	<div class="py-5">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-md-3 col-sm-6 my-3">
					<a href="#!"><img class="img-fluid img-brand d-block mx-auto"
						src="assets/img/logos/microsoft.svg" alt="..." /></a>
				</div>
				<div class="col-md-3 col-sm-6 my-3">
					<a href="#!"><img class="img-fluid img-brand d-block mx-auto"
						src="assets/img/logos/google.svg" alt="..." /></a>
				</div>
				<div class="col-md-3 col-sm-6 my-3">
					<a href="#!"><img class="img-fluid img-brand d-block mx-auto"
						src="assets/img/logos/facebook.svg" alt="..." /></a>
				</div>
				<div class="col-md-3 col-sm-6 my-3">
					<a href="#!"><img class="img-fluid img-brand d-block mx-auto"
						src="assets/img/logos/ibm.svg" alt="..." /></a>
				</div>
			</div>
		</div>
	</div>
	<!-- Contact-->
	<section class="page-section" id="contact">
		<div class="container">
			<div class="text-center">
				<h2 class="section-heading text-uppercase">Contact Us</h2>
				<h3 class="section-subheading text-muted">Lorem ipsum dolor sit
					amet consectetur.</h3>
			</div>
			<!-- * * * * * * * * * * * * * * *-->
			<!-- * * SB Forms Contact Form * *-->
			<!-- * * * * * * * * * * * * * * *-->
			<!-- This form is pre-integrated with SB Forms.-->
			<!-- To make this form functional, sign up at-->
			<!-- https://startbootstrap.com/solution/contact-forms-->
			<!-- to get an API token!-->
			<form id="contactForm" data-sb-form-api-token="API_TOKEN">
				<div class="row align-items-stretch mb-5">
					<div class="col-md-6">
						<div class="form-group">
							<!-- Name input-->
							<input class="form-control" id="name" type="text"
								placeholder="Your Name *" data-sb-validations="required" />
							<div class="invalid-feedback" data-sb-feedback="name:required">A
								name is required.</div>
						</div>
						<div class="form-group">
							<!-- Email address input-->
							<input class="form-control" id="email" type="email"
								placeholder="Your Email *" data-sb-validations="required,email" />
							<div class="invalid-feedback" data-sb-feedback="email:required">An
								email is required.</div>
							<div class="invalid-feedback" data-sb-feedback="email:email">Email
								is not valid.</div>
						</div>
						<div class="form-group mb-md-0">
							<!-- Phone number input-->
							<input class="form-control" id="phone" type="tel"
								placeholder="Your Phone *" data-sb-validations="required" />
							<div class="invalid-feedback" data-sb-feedback="phone:required">A
								phone number is required.</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group form-group-textarea mb-md-0">
							<!-- Message input-->
							<textarea class="form-control" id="message"
								placeholder="Your Message *" data-sb-validations="required"></textarea>
							<div class="invalid-feedback" data-sb-feedback="message:required">A
								message is required.</div>
						</div>
					</div>
				</div>
				<!-- Submit success message-->
				<!---->
				<!-- This is what your users will see when the form-->
				<!-- has successfully submitted-->
				<div class="d-none" id="submitSuccessMessage">
					<div class="text-center text-white mb-3">
						<div class="fw-bolder">Form submission successful!</div>
						To activate this form, sign up at <br /> <a
							href="https://startbootstrap.com/solution/contact-forms">https://startbootstrap.com/solution/contact-forms</a>
					</div>
				</div>
				<!-- Submit error message-->
				<!---->
				<!-- This is what your users will see when there is-->
				<!-- an error submitting the form-->
				<div class="d-none" id="submitErrorMessage">
					<div class="text-center text-danger mb-3">Error sending
						message!</div>
				</div>
				<!-- Submit Button-->
				<div class="text-center">
					<button class="btn btn-primary btn-xl text-uppercase disabled"
						id="submitButton" type="submit">Send Message</button>
				</div>
			</form>
		</div>
	</section>
	<!-- Footer-->
	<footer class="footer py-4">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-4 text-lg-start">Copyright &copy; Your
					Website 2021</div>
				<div class="col-lg-4 my-3 my-lg-0">
					<a class="btn btn-dark btn-social mx-2" href="#!"><i
						class="fab fa-twitter"></i></a> <a
						class="btn btn-dark btn-social mx-2" href="#!"><i
						class="fab fa-facebook-f"></i></a> <a
						class="btn btn-dark btn-social mx-2" href="#!"><i
						class="fab fa-linkedin-in"></i></a>
				</div>
				<div class="col-lg-4 text-lg-end">
					<a class="link-dark text-decoration-none me-3" href="#!">Privacy
						Policy</a> <a class="link-dark text-decoration-none" href="#!">Terms
						of Use</a>
				</div>
			</div>
		</div>
	</footer>
	<!-- Portfolio Modals-->
	<!-- Portfolio item 1 modal popup-->
	<div class="portfolio-modal modal fade" id="portfolioModal1"
		tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="close-modal" data-bs-dismiss="modal">
					<img src="assets/img/close-icon.svg" alt="Close modal" />
				</div>
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-lg-8">
							<div class="modal-body">
								<!-- Project details-->
								<h2 class="text-uppercase">Project Name</h2>
								<p class="item-intro text-muted">Lorem ipsum dolor sit amet
									consectetur.</p>
								<img class="img-fluid d-block mx-auto"
									src="assets/img/portfolio/1.jpg" alt="..." />
								<p>Use this area to describe your project. Lorem ipsum dolor
									sit amet, consectetur adipisicing elit. Est blanditiis dolorem
									culpa incidunt minus dignissimos deserunt repellat aperiam
									quasi sunt officia expedita beatae cupiditate, maiores
									repudiandae, nostrum, reiciendis facere nemo!</p>
								<ul class="list-inline">
									<li><strong>Client:</strong> Threads</li>
									<li><strong>Category:</strong> Illustration</li>
								</ul>
								<button class="btn btn-primary btn-xl text-uppercase"
									data-bs-dismiss="modal" type="button">
									<i class="fas fa-times me-1"></i> Close Project
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Portfolio item 2 modal popup-->
	<div class="portfolio-modal modal fade" id="portfolioModal2"
		tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="close-modal" data-bs-dismiss="modal">
					<img src="assets/img/close-icon.svg" alt="Close modal" />
				</div>
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-lg-8">
							<div class="modal-body">
								<!-- Project details-->
								<h2 class="text-uppercase">Project Name</h2>
								<p class="item-intro text-muted">Lorem ipsum dolor sit amet
									consectetur.</p>
								<img class="img-fluid d-block mx-auto"
									src="assets/img/portfolio/2.jpg" alt="..." />
								<p>Use this area to describe your project. Lorem ipsum dolor
									sit amet, consectetur adipisicing elit. Est blanditiis dolorem
									culpa incidunt minus dignissimos deserunt repellat aperiam
									quasi sunt officia expedita beatae cupiditate, maiores
									repudiandae, nostrum, reiciendis facere nemo!</p>
								<ul class="list-inline">
									<li><strong>Client:</strong> Explore</li>
									<li><strong>Category:</strong> Graphic Design</li>
								</ul>
								<button class="btn btn-primary btn-xl text-uppercase"
									data-bs-dismiss="modal" type="button">
									<i class="fas fa-times me-1"></i> Close Project
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Portfolio item 3 modal popup-->
	<div class="portfolio-modal modal fade" id="portfolioModal3"
		tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="close-modal" data-bs-dismiss="modal">
					<img src="assets/img/close-icon.svg" alt="Close modal" />
				</div>
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-lg-8">
							<div class="modal-body">
								<!-- Project details-->
								<h2 class="text-uppercase">Project Name</h2>
								<p class="item-intro text-muted">Lorem ipsum dolor sit amet
									consectetur.</p>
								<img class="img-fluid d-block mx-auto"
									src="assets/img/portfolio/3.jpg" alt="..." />
								<p>Use this area to describe your project. Lorem ipsum dolor
									sit amet, consectetur adipisicing elit. Est blanditiis dolorem
									culpa incidunt minus dignissimos deserunt repellat aperiam
									quasi sunt officia expedita beatae cupiditate, maiores
									repudiandae, nostrum, reiciendis facere nemo!</p>
								<ul class="list-inline">
									<li><strong>Client:</strong> Finish</li>
									<li><strong>Category:</strong> Identity</li>
								</ul>
								<button class="btn btn-primary btn-xl text-uppercase"
									data-bs-dismiss="modal" type="button">
									<i class="fas fa-times me-1"></i> Close Project
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Portfolio item 4 modal popup-->
	<div class="portfolio-modal modal fade" id="portfolioModal4"
		tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="close-modal" data-bs-dismiss="modal">
					<img src="assets/img/close-icon.svg" alt="Close modal" />
				</div>
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-lg-8">
							<div class="modal-body">
								<!-- Project details-->
								<h2 class="text-uppercase">Project Name</h2>
								<p class="item-intro text-muted">Lorem ipsum dolor sit amet
									consectetur.</p>
								<img class="img-fluid d-block mx-auto"
									src="assets/img/portfolio/4.jpg" alt="..." />
								<p>Use this area to describe your project. Lorem ipsum dolor
									sit amet, consectetur adipisicing elit. Est blanditiis dolorem
									culpa incidunt minus dignissimos deserunt repellat aperiam
									quasi sunt officia expedita beatae cupiditate, maiores
									repudiandae, nostrum, reiciendis facere nemo!</p>
								<ul class="list-inline">
									<li><strong>Client:</strong> Lines</li>
									<li><strong>Category:</strong> Branding</li>
								</ul>
								<button class="btn btn-primary btn-xl text-uppercase"
									data-bs-dismiss="modal" type="button">
									<i class="fas fa-times me-1"></i> Close Project
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Portfolio item 5 modal popup-->
	<div class="portfolio-modal modal fade" id="portfolioModal5"
		tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="close-modal" data-bs-dismiss="modal">
					<img src="assets/img/close-icon.svg" alt="Close modal" />
				</div>
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-lg-8">
							<div class="modal-body">
								<!-- Project details-->
								<h2 class="text-uppercase">Project Name</h2>
								<p class="item-intro text-muted">Lorem ipsum dolor sit amet
									consectetur.</p>
								<img class="img-fluid d-block mx-auto"
									src="assets/img/portfolio/5.jpg" alt="..." />
								<p>Use this area to describe your project. Lorem ipsum dolor
									sit amet, consectetur adipisicing elit. Est blanditiis dolorem
									culpa incidunt minus dignissimos deserunt repellat aperiam
									quasi sunt officia expedita beatae cupiditate, maiores
									repudiandae, nostrum, reiciendis facere nemo!</p>
								<ul class="list-inline">
									<li><strong>Client:</strong> Southwest</li>
									<li><strong>Category:</strong> Website Design</li>
								</ul>
								<button class="btn btn-primary btn-xl text-uppercase"
									data-bs-dismiss="modal" type="button">
									<i class="fas fa-times me-1"></i> Close Project
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Portfolio item 6 modal popup-->
	<div class="portfolio-modal modal fade" id="portfolioModal6"
		tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="close-modal" data-bs-dismiss="modal">
					<img src="assets/img/close-icon.svg" alt="Close modal" />
				</div>
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-lg-8">
							<div class="modal-body">
								<!-- Project details-->
								<h2 class="text-uppercase">Project Name</h2>
								<p class="item-intro text-muted">Lorem ipsum dolor sit amet
									consectetur.</p>
								<img class="img-fluid d-block mx-auto"
									src="assets/img/portfolio/6.jpg" alt="..." />
								<p>Use this area to describe your project. Lorem ipsum dolor
									sit amet, consectetur adipisicing elit. Est blanditiis dolorem
									culpa incidunt minus dignissimos deserunt repellat aperiam
									quasi sunt officia expedita beatae cupiditate, maiores
									repudiandae, nostrum, reiciendis facere nemo!</p>
								<ul class="list-inline">
									<li><strong>Client:</strong> Window</li>
									<li><strong>Category:</strong> Photography</li>
								</ul>
								<button class="btn btn-primary btn-xl text-uppercase"
									data-bs-dismiss="modal" type="button">
									<i class="fas fa-times me-1"></i> Close Project
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<!-- * *                               SB Forms JS                               * *-->
	<!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</body>
</html>
