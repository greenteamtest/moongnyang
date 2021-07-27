

$(document).on('click', '#rvsBtn', () => {

	if (getSessionAJAX() == 'null') { // 세션 만료 체크 
		alert('세션이 만료되었습니다. 로그인 페이지로 이동합니다');
		location.href = 'login.do';
		return;
	}

	const contents = $('#rvsBtn').closest('div#ctrlBtnGroup').next().text();
	$('#reviseReviewContainer').find('.review_textarea').text(contents);
	$('#reviseReviewContainer').find('#cntNum').text(contents.length);
	$('#reviseReviewContainer').modal('show');
})



$('#reviseReviewContainer > .ui.button').click(function() {
	$('#reviseReviewContainer').modal('hide');
})

$('#reviseReviewContainer').find('#sucRvs').click(() => {

	const contents = $('#reviseReviewContainer').find('.review_textarea').val();

	if (getSessionAJAX() == 'null') { // 세션 만료 체크 
		alert('세션이 만료되었습니다. 로그인 페이지로 이동합니다');
		location.href = 'login.do';
		return;
	}

	if (contents.trim().length < 10) { // 10글자 이상 체크 
		$('#minText').modal('show');
		return;
	}

	if (contents.trim().length > 500) { // 500글자 이상 체크 
		$('#maxText').modal('show');
		return;
	}
	
	const param = {
		"idx": clickTarget,
		"email": $('#reviseReviewContainer').find('input[type="hidden"]').val(),
		"contents": $('#reviseReviewContainer').find('.review_textarea').val(),
		"my_rating": $('#reviseReviewContainer #select_rating_revise').find('i[style="color: pink"]').length
	}

	$.ajax({
		url: "controller.do?command=reviseReview",
		data: { "jsonData": JSON.stringify(param) },
		method: "post",
		success: (result) => {
			if (result == '0') {
				alert('리뷰 수정이 완료되었습니다');
				showReviewsAJAX(param);
				$('#reviseReview').modal('hide');
				return;
			}
		},
	});
})

$('#reviseReviewContainer .ui.button').click(() => {
	$('#reviseReviewContainer').modal('hide');
})

// 리뷰 글자수 체크
$('#reviseReviewContainer').find('.review_textarea').on("propertychange change keyup paste input", (e) => {

	const newValue = $('#reviseReviewContainer').find('.review_textarea').val();
	$(e.currentTarget).closest('.modal-content').find('#cntNum').text(newValue.length);

	if (newValue.length > 500) {
		$('#cntNum').css('color', 'red');
	} else {
		$('#cntNum').css('color', 'gray');
	}
});



// 별점 주기 
$('#select_rating_revise > .star.icon').mousedown((e) => {
	
	if ($(e.currentTarget).attr('style') == 'color: black') {
		for (let index = 0; index < $(e.currentTarget).index(); index++) {
			$($('#select_rating_revise > .star.icon').get(index)).attr('style', 'color: pink');
		}
	} else {
		for (let index = $('#select_rating_insert > .star.icon').length - 1; index >= $(e.currentTarget).index() - 1; index--) {
			$($('#select_rating_revise > .star.icon').get(index)).attr('style', 'color: black');
		}
	}
})



