/**
 * 
 */

let userEmail = $('#write_container').find('input[type="hidden"]').val();
let clickTarget;
let placeName ;

const showPlaceInfoAJAX = (param) => {
	$.ajax({
		"url": "controller.do?command=placeList",
		"data": { "jsonData": JSON.stringify(param) },
		"method": "post",
		"success": (result) => {
			const rs = JSON.parse(result);

			rs[0].place.replace("\"", "");
			rs[0].idx.replace("\"", "");

			const imgs = $('#showPhoto .d-block.w-100');

			for (let index = 0; index < imgs.length; index++) {
				if (index == 0) {
					imgs[index].src = `health&edu/place/place_img/${rs[0].place}_${rs[0].idx}.png`;
				} else {
					imgs[index].src = `health&edu/place/place_img/${rs[0].place}_${rs[0].idx}_${index}.png`;
				}
			}
			placeName = rs[0].place;
			$(".place").html(rs[0].place);
			$("#header_comment").html(rs[0].place);
			$(".address").html(rs[0].address);
			$(".phone_num").html(rs[0].phone_num);
			$(".open_time").html(rs[0].open_time);
			$(".pet_kind").html(rs[0].pet_kind);
			$(".dips_cont").html(rs[0].dips_cont);
			$(".introduce").html(rs[0].introduce);
			myMarker($('.address').text());

		}
	})
}

// 리뷰 목록
const showReviewsAJAX = (param) => {
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

					if (userEmail == rs[key].user_email) {
						$('.comment').append(`<div class="content">
				<img src="health&edu/place/place_img/logo.png" class="profile_img">&ensp;
				<a class="author" style="font-size: 1.8rem;">${rs[key].user_email}</a>
				<div class="metadata">
				<span class="date">${rs[key].write_date} at ${rs[key].write_time}</span>
				&ensp;
				${text}&ensp; ${rs[key].my_rating}
				</div>
				<div id="ctrlBtnGroup">
					 <div><button  id="rvsBtn" class="ui inverted violet button">수정</button></div>
					 <div><button  id="dltBtn" class="ui inverted violet button">삭제</button></div>
				</div>
				<div class="text" style="font-size: 1.8rem;">${rs[key].contents}</div>
				<div class="actions"></div>
				</div>`)
					} else {
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
		}
	})
}
const checkForOverlapReviewAJAX = () => {

	let rs = "";

	const param = {
		"idx": clickTarget,
		"email": $('#write_container').find('input[type="hidden"]').val(),
	}

	$.ajax({
		url: "controller.do?command=overlapReview",
		data: { "jsonData": JSON.stringify(param) },
		method: "post",
		async: false,
		success: (result) => {
			rs = result;
		},
	});
	return rs;
}


const getSessionAJAX = () => {

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

const reflectAvgRating = (param) => {
	$.ajax({
		"url": "controller.do?command=reflectEachAvgRating",
		"data": { "jsonData": JSON.stringify({ "idx": param.idx }) },
		"method": "post",
		"success": (result) => {
			$(document).find(`.photo_${param.idx}`).closest('.card-frame').find('.avg_rating').text(result);
		}
	})
}



$(document).on('click', '.card-img-top', (e) => {
	const param = {
		"idx": $(e.currentTarget).prev().val()
	};
	clickTarget = param.idx;
	console.log(clickTarget);
	showPlaceInfoAJAX(param);
	showReviewsAJAX(param);
	$('.title').next().hide();
	

})





$('.d-block.w-100').on('error', (e) => {
	$(e.currentTarget).attr('src', 'health&edu/place/place_img/logo.png');
})


$('.title').click((e) => {
	$(e.currentTarget).next().toggle();
	map.relayout();
})







$('#btn1').click(() => { // static modal (글등록창) show


	if (userEmail.length == 0 || userEmail == null) { // 로그인 여부 체크 
		$('#requestLogin').modal('show');
		return;
	}

	if (getSessionAJAX() == 'null') { // 세션 만료 체크 
		alert('세션이 만료되었습니다. 로그인 페이지로 이동합니다');
		location.href = 'login.do';
		return;
	}

	if (checkForOverlapReviewAJAX() == '-1') {
		$('#checkOverlap').modal('show');
		return;
	}


	$('#select_rating > .star.icon').attr('style', 'color: pink');
	$('#write_container').find('.review_textarea').val("");
	$('#cntNum').text('0');
	$('#write_container').modal('show');
})

$('.ui.button').click(() => { // static modal hide
	$('#write_container').modal('hide');

})



$('#searchmapBtn').click(() => {
	var link = `https://map.kakao.com/link/to/${placeName},${placeY},${placeX}`;
	window.open('about:blank').location.href = link;
})


$('.tiny.ui.button').click(()=>{
	const frm = document.showPlaceListFrm;
	
	frm.method='post';
	frm.action='controller.do';
	frm.submit();
})







