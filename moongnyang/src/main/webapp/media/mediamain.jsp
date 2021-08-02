<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../bootstrap/boot.jsp"%>
<%@ include file="../top&down/header.jsp"%>
<%@ page import="java.net.URLEncoder"%>
<%@ page import="java.security.SecureRandom"%>
<%@ page import="java.math.BigInteger"%>

<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.84.0">
<title>미디어</title>

<link rel="canonical"
	href="https://getbootstrap.com/docs/5.0/examples/blog/">



<!-- Bootstrap core CSS -->
<link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}

#box1-1 {
	background-color: white;
}
</style>


<!-- Custom styles for this template -->
<link
	href="https://fonts.googleapis.com/css?family=Playfair&#43;Display:700,900&amp;
	display=swap"
	rel="stylesheet">
<!-- Custom styles for this template -->
<link href="blog.css" rel="stylesheet">
</head>
<body>
	<div>
		<br> <br> <br> <br> <br>
	</div>
	<main class="container">
		<div class="p-4 p-md-5 mb-4 text-white rounded bg-dark">
			<div class="col-md-6 px-0">
				<h1 class="display-4 fst-italic">Title of a longer featured
					blog post</h1>
				<p class="lead my-3">Multiple lines of text that form the lede,
					informing new readers quickly and efficiently about what’s most
					interesting in this post’s contents.</p>
				<p class="lead mb-0">
					<a href="#" class="text-white fw-bold">Continue reading...</a>
				</p>
			</div>
		</div>

		<div class="row g-5">
			<div class="col-md-8">
				<article class="blog-post">
					<div class="position-sticky" style="top: 5rem;" id="box1-1">
						<div class="container">
							<div class="row">
								<div class="col-sm-10">
									<input type="text" class="form-control" placeholder=""
										aria-label="찾으시는 글의 제목 및 #태그를 입력해서 검색해보세요!"
										aria-describedby="basic-addon1">
								</div>
								<div class="col-sm-2">
									<button type="button" class="btn btn-primary">검색</button>
								</div>
							</div>
						</div>
					</div>
					<hr>



					<!--  여기 밑에서 부터 옆 네이버게이션 따라다님 -->
					<div
						class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
						<!--  한싸이클 시작 -->
						<div class="col-auto d-none d-lg-block">
							<svg class="bd-placeholder-img" width="200" height="250"
								xmlns="http://www.w3.org/2000/svg" role="img"
								aria-label="Placeholder: Thumbnail"
								preserveAspectRatio="xMidYMid slice" focusable="false">
							<title>Placeholder</title><rect width="100%" height="100%"
									fill="#55595c" />
							<text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>

						</div>
						<div class="col p-4 d-flex flex-column ">
							<strong class="d-inline-block mb-2 text-success">Design</strong>
							<h3 class="mb-0">Post title</h3>
							<div class="mb-1 text-muted">Nov 11</div>
							<p class="mb-auto">This is a wider card with supporting text
								below as a natural lead-in to additional content.</p>
							<a href="#" class="stretched-link">Continue reading</a>
						</div>
					</div>

					<!--  c: each 로 돌리면서 게시글 만들기 -->
					<div
						class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
						<div class="col-auto d-none d-lg-block">
							<svg class="bd-placeholder-img" width="200" height="250"
								xmlns="http://www.w3.org/2000/svg" role="img"
								aria-label="Placeholder: Thumbnail"
								preserveAspectRatio="xMidYMid slice" focusable="false">
							<title>Placeholder</title><rect width="100%" height="100%"
									fill="#55595c" />
							<text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>

						</div>
						<div class="col p-4 d-flex flex-column ">
							<strong class="d-inline-block mb-2 text-success">Design</strong>
							<h3 class="mb-0">Post title</h3>
							<div class="mb-1 text-muted">Nov 11</div>
							<p class="mb-auto">This is a wider card with supporting text
								below as a natural lead-in to additional content.</p>
							<a href="#" class="stretched-link">Continue reading</a>
						</div>
					</div>

					<p>This blog post shows a few different types of content that’s
						supported and styled with Bootstrap. Basic typography, lists,
						tables, images, code, and more are all supported as expected.</p>
					<hr>
					<p>This is some additional paragraph placeholder content. It
						has been written to fill the available space and show how a longer
						snippet of text affects the surrounding content. We'll repeat it
						often to keep the demonstration flowing, so be on the lookout for
						this exact same string of text.</p>
					<h2>Blockquotes</h2>
					<p>This is an example blockquote in action:</p>
					<blockquote class="blockquote">
						<p>Quoted text goes here.</p>
					</blockquote>
					<p>This is some additional paragraph placeholder content. It
						has been written to fill the available space and show how a longer
						snippet of text affects the surrounding content. We'll repeat it
						often to keep the demonstration flowing, so be on the lookout for
						this exact same string of text.</p>
					<h3>Example lists</h3>
					<p>This is some additional paragraph placeholder content. It's
						a slightly shorter version of the other highly repetitive body
						text used throughout. This is an example unordered list:</p>
					<ul>
						<li>First list item</li>
						<li>Second list item with a longer description</li>
						<li>Third list item to close it out</li>
					</ul>
					<p>And this is an ordered list:</p>
					<ol>
						<li>First list item</li>
						<li>Second list item with a longer description</li>
						<li>Third list item to close it out</li>
					</ol>
					<p>And this is a definiton list:</p>
					<dl>
						<dt>HyperText Markup Language (HTML)</dt>
						<dd>The language used to describe and define the content of a
							Web page</dd>
						<dt>Cascading Style Sheets (CSS)</dt>
						<dd>Used to describe the appearance of Web content</dd>
						<dt>JavaScript (JS)</dt>
						<dd>The programming language used to build advanced Web sites
							and applications</dd>
					</dl>
					<h2>Inline HTML elements</h2>
					<p>
						HTML defines a long list of available inline tags, a complete list
						of which can be found on the <a
							href="https://developer.mozilla.org/en-US/docs/Web/HTML/Element">Mozilla
							Developer Network</a>.
					</p>
					<ul>
						<li><strong>To bold text</strong>, use <code
								class="language-plaintext highlighter-rouge">&lt;strong&gt;</code>.</li>
						<li><em>To italicize text</em>, use <code
								class="language-plaintext highlighter-rouge">&lt;em&gt;</code>.</li>
						<li>Abbreviations, like <abbr
							title="HyperText Markup Langage">HTML</abbr> should use <code
								class="language-plaintext highlighter-rouge">&lt;abbr&gt;</code>,
							with an optional <code
								class="language-plaintext highlighter-rouge">title</code>
							attribute for the full phrase.
						</li>
						<li>Citations, like <cite>— Mark Otto</cite>, should use <code
								class="language-plaintext highlighter-rouge">&lt;cite&gt;</code>.
						</li>
						<li><del>Deleted</del> text should use <code
								class="language-plaintext highlighter-rouge">&lt;del&gt;</code>
							and <ins>inserted</ins> text should use <code
								class="language-plaintext highlighter-rouge">&lt;ins&gt;</code>.</li>
						<li>Superscript <sup>text</sup> uses <code
								class="language-plaintext highlighter-rouge">&lt;sup&gt;</code>
							and subscript <sub>text</sub> uses <code
								class="language-plaintext highlighter-rouge">&lt;sub&gt;</code>.
						</li>
					</ul>
					<p>Most of these elements are styled by browsers with few
						modifications on our part.</p>
					<h2>Heading</h2>
					<p>This is some additional paragraph placeholder content. It
						has been written to fill the available space and show how a longer
						snippet of text affects the surrounding content. We'll repeat it
						often to keep the demonstration flowing, so be on the lookout for
						this exact same string of text.</p>
					<h3>Sub-heading</h3>
					<p>This is some additional paragraph placeholder content. It
						has been written to fill the available space and show how a longer
						snippet of text affects the surrounding content. We'll repeat it
						often to keep the demonstration flowing, so be on the lookout for
						this exact same string of text.</p>
					<pre>
						<code>Example code block</code>
					</pre>
					<p>This is some additional paragraph placeholder content. It's
						a slightly shorter version of the other highly repetitive body
						text used throughout.</p>
				</article>

				<article class="blog-post">
					<h2 class="blog-post-title">Another blog post</h2>
					<p class="blog-post-meta">
						December 23, 2020 by <a href="#">Jacob</a>
					</p>

					<p>This is some additional paragraph placeholder content. It
						has been written to fill the available space and show how a longer
						snippet of text affects the surrounding content. We'll repeat it
						often to keep the demonstration flowing, so be on the lookout for
						this exact same string of text.</p>
					<blockquote>
						<p>
							Longer quote goes here, maybe with some <strong>emphasized
								text</strong> in the middle of it.
						</p>
					</blockquote>
					<p>This is some additional paragraph placeholder content. It
						has been written to fill the available space and show how a longer
						snippet of text affects the surrounding content. We'll repeat it
						often to keep the demonstration flowing, so be on the lookout for
						this exact same string of text.</p>
					<h3>Example table</h3>
					<p>And don't forget about tables in these posts:</p>
					<table class="table">
						<thead>
							<tr>
								<th>Name</th>
								<th>Upvotes</th>
								<th>Downvotes</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>Alice</td>
								<td>10</td>
								<td>11</td>
							</tr>
							<tr>
								<td>Bob</td>
								<td>4</td>
								<td>3</td>
							</tr>
							<tr>
								<td>Charlie</td>
								<td>7</td>
								<td>9</td>
							</tr>
						</tbody>
						<tfoot>
							<tr>
								<td>Totals</td>
								<td>21</td>
								<td>23</td>
							</tr>
						</tfoot>
					</table>

					<p>This is some additional paragraph placeholder content. It's
						a slightly shorter version of the other highly repetitive body
						text used throughout.</p>
				</article>

				<article class="blog-post">
					<h2 class="blog-post-title">New feature</h2>
					<p class="blog-post-meta">
						December 14, 2020 by <a href="#">Chris</a>
					</p>

					<p>This is some additional paragraph placeholder content. It
						has been written to fill the available space and show how a longer
						snippet of text affects the surrounding content. We'll repeat it
						often to keep the demonstration flowing, so be on the lookout for
						this exact same string of text.</p>
					<ul>
						<li>First list item</li>
						<li>Second list item with a longer description</li>
						<li>Third list item to close it out</li>
					</ul>
					<p>This is some additional paragraph placeholder content. It's
						a slightly shorter version of the other highly repetitive body
						text used throughout.</p>
				</article>

				<nav class="blog-pagination" aria-label="Pagination">
					<a class="btn btn-outline-primary" href="#">Older</a> <a
						class="btn btn-outline-secondary disabled" href="#" tabindex="-1"
						aria-disabled="true">Newer</a>
				</nav>

			</div>

			<div class="col-md-4">
				<div class="position-sticky" style="top: 5rem;">
					<div class="p-4 mb-3 bg-light rounded">
						<h4 class="fst-italic">미디어</h4>
						<p class="mb-0">여러분의 사랑스러운 천사들과의 소중한 추억을 담아, 모두와 공유하고 주인공이
							되어보세요!</p>
					</div>

					<div class="p-4">
						<div>
							<br>
						</div>
						<h4 class="fst-italic">글올리기</h4>
						<ol class="list-unstyled mb-0">

							<li><div class="d-grid gap-2">
									<button class="btn btn-primary" type="button"
										data-bs-toggle="modal" data-bs-target="#uploadeMedia">글올리기</button>
									<button class="btn btn-primary" type="button">새글보기</button>
								</div></li>

						</ol>
					</div>

					<div class="p-4">
						<h4 class="fst-italic">Elsewhere</h4>
						<ol class="list-unstyled">
							<li><a href="#">GitHub</a></li>
							<li><a href="#">Twitter</a></li>
							<li><a href="#">Facebook</a></li>
						</ol>
					</div>
				</div>
			</div>
		</div>

	</main>

</body>
</html>
<div class="modal fade" id="uploadeMedia" data-bs-backdrop="static"
	data-bs-keyboard="false" tabindex="-1"
	aria-labelledby="staticBackdropLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg modal-dialog-centered">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="staticBackdropLabel">업로드하기</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="modal-body">
				<input type="text" class="form-control" name="title"
					placeholder="제목을 입력해주세요!" aria-label="제목을 입력해주세요!" id="title"
					aria-describedby="basic-addon1">
				<hr>
				<input type="text" class="form-control" name="hashtag"
					placeholder="#태그를 추가해주세요!" aria-label="태그를 입력해주세요!" id="hashtag"
					aria-describedby="basic-addon1">
				<hr>
				<div class="form-floating">
					<textarea class="form-control" placeholder="Leave a comment here"
						name="content" id="content" id="floatingTextarea2"
						style="height: 100px"></textarea>
					<label for="floatingTextarea2">내용을 입력해주세요!(최대 4000자 이내)</label>
				</div>
				<div>
					<br> <br>
				</div>
				<div class="mb-3">
					<label for="formFile" class="form-label">올리실 파일을 선택해주세요!</label> <input
						class="form-control" type="file" id="file">
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary"
					data-bs-dismiss="modal">닫기</button>
				<button type="button" class="btn btn-primary">업로드하기</button>
			</div>
		</div>
	</div>
</div>
