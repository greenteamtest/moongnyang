/**
 * 
 */


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
$('#select_rating > .star.icon').mousedown(function() {

	if ($(this).attr('style') == 'color:black') {
		for (let index = 0; index < $(this).index(); index++) {
			$($('#select_rating > .star.icon').get(index)).attr('style', 'color:pink');
		}
	} else {
		for (let index = $('#select_rating > .star.icon').length - 1; index >= $(this).index() - 1; index--) {
			$($('#select_rating > .star.icon').get(index)).attr('style', 'color:black');
		}
	}
})


// 리뷰 등록
$('.ui.positive.button').click(function() {
	const contents = $('#write_container').find('#review_textarea').val();
	
	if(contents.trim().length < 10  ){
		alert('10글자 이상 입력해 주세요');
		return;
	}

	
	if (getSessionAJAX() == 'null') {
		alert('세션이 만료되었습니다. 로그인 페이지로 이동합니다');
		location.href = 'login.do';
		return;
	}
	
	const param = {
		"idx": $('.card-frame').find('input[type="hidden"]').val(),
		"email": $('#write_container').find('input[type="hidden"]').val(),
		"contents": contents,
		"my_rating": $('#select_rating').find('i[style="color:pink"]').length
	}

	$.ajax({
		"url": "controller.do?command=insertReview",
		"data": { "jsonData": JSON.stringify(param) },
		"method": "post",
		"success": (result) => {
			const rs = result;
			

			if (rs == '1') {
				alert('리뷰 등록이 완료되었습니다');
				showReviewsAJAX(param);
				$('#write_container').modal('hide');
			} else {
				alert('리뷰 등록 실패');
				$('#write_container').modal('hide');
			}
		}
	})
})


// 리뷰 추가
function showReviewsAJAX(param) {
	$.ajax({
		"url": "controller.do?command=review",
		"data": { "jsonData": JSON.stringify(param) },
		"method": "post",
		"success": (result) => {
			const rs = JSON.parse(result);

			$('.comment').html("");

			if (JSON.stringify(rs) == 'null') {
				$('.comment').html(`<div id="review_nodata">리뷰가 없습니다 </div>`);
			} else {
				const maxRating = 5;
				let text;
				let rating;

				for (const key in rs) {
					text = "";
					rating = rs[key].my_rating;

					for (let index = 0; index < maxRating; index++) {

						if (index < rating) {
							text += `<i class="star icon" style ="color:pink"></i>`;
						}
						else {
							text += `<i class="star icon" ></i>`;
						}
					}

					text = `<span id="star_rating"> ${text} </span>`;

					$('.comment').append(`<div class="content">
				<img src="health&edu/place/place_img/logo.png" class="profile_img">&ensp;
				<a class="author" style="font-size: 1.8rem;">${rs[key].user_email}</a>
				<div class="metadata">
				<span class="date">${rs[key].write_date} at ${rs[key].write_time}</span>
				&ensp;
				${text}&ensp; ${rs[key].my_rating}
				</div>
				<div class="text" style="font-size: 1.8rem;">${rs[key].contents}</div>
				<div class="actions"></div>
				</div>`)
				}
			}
		}
	})
}

function getSessionAJAX() {

	let rs = "";

	$.ajax({
		url: "controller.do?command=getSession",
		data: null,
		method: "post",
		async: false,
		success: (result) => {
			rs = result;
		},
	});
	return rs;
}

