<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뭉냥뭉냥 community</title>
<!-- blog.naver.com 참고해서 만든 레이아웃... -->


</head>
<body>
	<ui-view>
	<div blog-name-exception id="wrap" class="wrap">

		<!-- header 부분-->
		<div menu-name="BLOG_HOME">안뇽안뇽</div>

		<!-- 메인 화면 부분 -->
		<main id="container" class="container">
			<h2>커뮤니티 게시판 글 리스트</h2>
			<!-- 인기 글 모아놓은 부분 -->
			<section class="hot_topic">
				<div class="area_topic">
					<h3>인기글</h3>
					<div class="list_group">
						<div class="list_hottopic">
							<div class="item_wrap">인기 게시물 1</div>
							<div class="item_wrap">인기 게시물 2</div>
							<div class="item_wrap">인기 게시물 3</div>
							<div class="item_wrap">인기 게시물 4</div>
							<div class="item_wrap">인기 게시물 5</div>
						</div>
					</div>
				</div>
				------------------------------------------------------------------인기
				게시판
			</section>

			<!-- 게시글 모아놓은 부분 -->
			<div class="layout_content">
				<section class="wrap_category_postlist">
					<div class="category">게시판 태그 (1,2,3,4,5) 동물 태그 (1,2,0) 버튼 형식으로 들어가야 함</div>
					<div class="post_list">게시물들 하나하나 들어갈 곳</div>
				</section>
			</div>
		-------------------------------------------------------------------글 게시판 
		</main>
		<!-- footer 부분 -->
		<footer id="footer" class="footer">이거슨 푸터</footer>
	</div>
	</ui-view>




</body>
</html>


