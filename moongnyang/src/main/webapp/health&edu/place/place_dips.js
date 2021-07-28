/**
 * 
 */




$('.ui.red.button').click((e) => {
	
	
	if (getSessionAJAX() == 'null') {
		alert('세션이 만료되었습니다. 재로그인 해 주세요');
		return;
	}
	
	
	const dipsIcon = $(e.currentTarget);
	const idx = $(e.currentTarget).closest('.card').find('input[type="hidden"]').val();
	const email = $('#user_email input[type="hidden"]').val();
	let state = "";
	
	
	
	
	$(e.currentTarget).toggleClass('activated');
	
	if(dipsIcon.hasClass('activated')){
		dipsIcon.css('background-color', 'red').css('color', 'white');
		state = 'positive';
	}else {
		dipsIcon.css('background-color', 'white').css('color', 'red');
		state = 'negative';
	}

	$.ajax({
		"url": "controller.do?command=placeDips",
		"data": { "jsonData": JSON.stringify({ "idx": idx ,"state" : state, "email": email}) },
		"method": "post",
		"success": (result) => {

			if (result == 'null') {
				alert('*에러* (개발자 문의)');
			} else {
				dipsIcon.next().text(result);
			}
		}
	})
})