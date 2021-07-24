/**
 * 
 */


$('.card-img-top').click(function() {

	const param = {
		"idx": $(this).prev().val()
	};

	showPlaceInfoAJAX(param);
	showReviewAJAX(param);
	
})


function showPlaceInfoAJAX(param){
	$.ajax({
		"url": "controller.do?command=placeList",
		"data": { "jsonData": JSON.stringify(param) },
		"method": "post",
		"success": (result) => {
			const rs = JSON.parse(result);

			rs[0].place.replace("\"", "");
			rs[0].idx.replace("\"", "");

			const imgs = document.getElementsByClassName('d-block w-100');

			for (let index = 0; index < imgs.length; index++) {
				if (index == 0) {
					imgs[index].src = `health&edu/place/place_img/${rs[0].place}_${rs[0].idx}.png`;
				} else {
					imgs[index].src = `health&edu/place/place_img/${rs[0].place}_${rs[0].idx}_${index}.png`;
				}
			}
			$(".place").html(rs[0].place);
			$("#header_comment").html(rs[0].place);
			$(".address").html(rs[0].address);
			$(".phone_num").html(rs[0].phone_num);
			$(".open_time").html(rs[0].open_time);
			$(".introduce").html(rs[0].introduce);
			$(".pet_kind").html(rs[0].pet_kind);
			$(".dips_cont").html(rs[0].dips_cont);
		}
	})
}


function showReviewAJAX(param){
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

$('.d-block.w-100').on('error', function() {
	$(this).attr('src', 'health&edu/place/place_img/logo.png');
})


$('.title').click(function() {
	$(this).next().toggle();
})


$('.card-img-top').click(function() {
	$('.title').next().hide();
})


$('#btn1').click(function() { // static modal show
	
	$('#write_container').find('#review_textarea').val("");
	$('#cntNum').text('0');
	$('#write_container').modal('show');
})

$('.ui.button').click(function() { // static modal hide
	$('#write_container').modal('hide');

})



