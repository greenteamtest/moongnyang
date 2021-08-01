

// 리뷰 글자수 체크
$(".field > textarea").on("propertychange change keyup paste input", () => {

	const newValue = $('.field > textarea').val();
	document.getElementById("cntNum").innerHTML = newValue.length;

	if (newValue.length > 500) {
		$('#cntNum').css('color', 'red');
	} else {
		$('#cntNum').css('color', 'gray');
	}
});


// 별점 주기 
$('#select_rating_insert > .star.icon').mousedown((e) => {
	
	if ($(e.currentTarget).attr('style') == 'color: black') {
		for (let index = 0; index < $(e.currentTarget).index(); index++) {
			$($('#select_rating_insert > .star.icon').get(index)).attr('style', 'color: pink');
		}
	} else {
		for (let index = $('#select_rating_insert > .star.icon').length - 1; index >= $(e.currentTarget).index() - 1; index--) {
			$($('#select_rating_insert > .star.icon').get(index)).attr('style', 'color: black');
		}
	}
})


// 리뷰 등록
$('#write_container').find('.ui.positive.button').click(() => {
	const contents = $('#write_container').find('.review_textarea').val();

	if (contents.trim().length < 10) { // 10글자 이상 체크 
		$('#minText').modal('show');
		return;
	}

	if (contents.trim().length > 500) { // 500 글자 이하 체크 
		$('#maxText').modal('show');
		return;
	}


	if (getSessionAJAX() == 'null') {
		alert('세션이 만료되었습니다. 로그인 페이지로 이동합니다');
		location.href = 'login.do';
		return;
	}

	const param = {
		"idx": clickTarget,
		"email": $('#write_container').find('input[type="hidden"]').val(),
		"contents": contents,
		"my_rating": $('#select_rating_insert').find('i[style="color: pink"]').length
	}

	$.ajax({
		"url": "controller.do?command=insertReview",
		"data": { "jsonData": JSON.stringify(param) },
		"method": "post",
		"success": (result) => {

			if (result != 'null') {
				alert('리뷰 등록이 완료되었습니다');
				showReviewsAJAX(param);
				reflectAvgRating(param);
				$('#write_container').modal('hide');
			} else {
				alert('리뷰 등록 실패');
				$('#write_container').modal('hide');
			}
		}
	})
})





