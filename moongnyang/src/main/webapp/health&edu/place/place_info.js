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

			$(".place_img").attr('src', `health&edu/place/place_img/${rs[0].place}_${rs[0].idx}.png`);
			$(".place").html(rs[0].place);
			$(".address").html(rs[0].address);
			$(".phon_num").html(rs[0].phone_num);
			$(".open_time").html(rs[0].open_time);
			$(".introduce").html(rs[0].introduce);
			$(".pet_kind").html(rs[0].pet_kind);
			$(".dips_cont").html(rs[0].dips_cont);

		}
	})
})

