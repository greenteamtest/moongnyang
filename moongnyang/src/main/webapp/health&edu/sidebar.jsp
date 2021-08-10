<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- 사이드바 -->
<div class="ui left demo vertical inverted wide sidebar labeled icon menu">
	<a class="item" href="${pageContext.request.contextPath}/index.jsp">
		<i class="home icon"></i> 홈으로
	</a>
	<a class="item">
		<i class="block layout icon"></i> 핫토픽
	</a>
	<a class="item business registration">
		<i class="smile icon"></i> 사업장등록
	</a>
</div>


<script>

$('.left.demo.sidebar').first().sidebar('attach events', '.open.button', 'show');
$('.open.button').removeClass('disabled');

$('.item.business.registration').click(() => {
	location.href = "controller.do?command=viewBusinessPage";
})
</script>