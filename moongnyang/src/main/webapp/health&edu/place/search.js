/**
 * 
 */

let detachData = null;


for (let index = 0; index < cardArr.length; index++) {
	cardArr[index] = $('.card-frame').get(index);
}





$('.d-flex #search-btn').click((e) => {
	
	$.ajax({
		"url": "controller.do?command=search",
		"data": { "jsonData": JSON.stringify({ "keyword": $(e.currentTarget).prev().val() }) },
		"method": "post",
		"success": (result) => {

			const rs = JSON.parse(result);
			
			$('.card-frame').removeClass('activated');
			$('#card-border').append(detachData);

			for (let i = 0; i < rs.length; i++) {
				console.log(rs[i].idx);
				for (let index = 0; index < cardArr.length; index++) {
					if ($(cardArr[index]).find('input[type="hidden"]').val() == rs[i].idx) {
						$(cardArr[index]).addClass('activated');
					}
				}
			}
				detachData = $('.card-frame').not('.card-frame.activated').detach();
		}
	})
})


