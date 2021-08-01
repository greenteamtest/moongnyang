$(document).on('click', '#dltBtn', () => {
	if (getSessionAJAX() == 'null') { // 세션 만료 체크 
		alert('세션이 만료되었습니다. 로그인 페이지로 이동합니다');
		location.href = 'login.do';
		return;
	}
	$('#deleteReviewContainer').modal('show');
})


$('#deleteReviewContainer .ui.positive.button').click(() => {
	
	const param = {
		"idx": clickTarget,
		"email": $('#deleteReviewContainer').find('input[type="hidden"]').val(),
	}
	

	$.ajax({
		url: "controller.do?command=deleteReview",
		data: { "jsonData": JSON.stringify(param) },
		method: "post",
		success: (result) => {
			if (result == '0') {
				alert('리뷰가 삭제되었습니다');
				showReviewsAJAX(param);
				reflectAvgRating(param);
				$('##deleteReviewContainer').modal('hide');
				return;
			}
		},
	});
})

$('#deleteReviewContainer .ui.button').click(() => {
	$('#deleteReviewContainer').modal('hide');
})



