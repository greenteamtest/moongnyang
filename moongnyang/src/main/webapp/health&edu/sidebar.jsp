<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- 사이드바 -->
<div class="ui left demo vertical inverted wide sidebar labeled icon menu">
	<a class="item" href="${pageContext.request.contextPath}/index.jsp">
		<i class="home icon"></i> 홈으로
	</a>

	<form name='frm1'>
		<a class="item business registration">
			<i class="smile icon"></i> 사업장등록
		</a>
		<input type="hidden" name="email" value="${loginUser.getEmail()}" />
		<input type="hidden" name="auth" value="${loginUser.getAuth()}" />
		<input type="hidden" name="command" value="viewBusinessPage" />
	</form>

	<form name='frm2'>
		<a class="item business status">
			<i class="block layout icon"></i> 나의 사업신청 내역
		</a>
		<input type="hidden" name="email" value="${loginUser.getEmail()}" />
		<input type="hidden" name="auth" value="${loginUser.getAuth()}" />
		<input type="hidden" name="command" value="businessRegStatus" />
	</form>



</div>


<script>

$('.left.demo.sidebar').first().sidebar('attach events', '.open.button', 'show');
$('.open.button').removeClass('disabled');

$('.item.business.registration').click((e) => {
    
    const frm1 = document.frm1 ;
    if(frm1.email.value == null || frm1.email.value =="" ){
        alert('사업자 계정 로그인이 필요합니다');
        return;
    }
    
    if (Number(frm1.auth.value) <2 ) {
        alert('사업자 계정 로그인이 필요합니다');
        return;
    }
    
	frm1.method='post';
	frm1.action='controller.do?'
	frm1.submit();
})

$('.item.business.status').click(() => {
    
    const frm2 = document.frm2 ;
    
    if(frm2.email.value == null || frm2.email.value =="" ){
        alert('사업자 계정 로그인이 필요합니다');
        return;
    }
    

    if (Number(frm2.auth.value) <2 ) {
        alert('사업자 계정 로그인이 필요합니다');
        return;
    }
    
	frm2.method='post';
	frm2.action='controller.do?'
	frm2.submit();
})
</script>