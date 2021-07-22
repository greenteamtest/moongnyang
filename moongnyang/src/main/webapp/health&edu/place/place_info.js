/**
 * 
 */


$('.card-img-top').click(function() {

	$.ajax({
		"url": "controller.do?command=placeList",
		"data": { "jsonData": JSON.stringify({ "idx": $(this).prev().val() }) },
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
			$(".address").html(rs[0].address);
			$(".phone_num").html(rs[0].phone_num);
			$(".open_time").html(rs[0].open_time);
			$(".introduce").html(rs[0].introduce);
			$(".pet_kind").html(rs[0].pet_kind);
			$(".dips_cont").html(rs[0].dips_cont);

		}
	})
})


$('.d-block.w-100').on('error', function() {
	$(this).attr('src', 'health&edu/place/place_img/logo.png');
})


$('.title').click(function() {
	$(this).next().toggle();
})






$('#btn1').click(function() {
	$('#staticBackdrop').modal('show');
})

$('.ui.button').click(function() { // static 종료
	$('#staticBackdrop').modal('hide');
})


$('.btn.btn-secondary').click(function() {
	$('div').remove('.modal-backdrop.fade');
})


