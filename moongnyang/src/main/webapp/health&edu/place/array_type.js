/**
 * 
 */

const cardArr = new Array($('.card-frame').length);


for (let index = 0; index < cardArr.length; index++) {
	cardArr[index] = $('.card-frame').get(index);
}





$('.navbar.navbar-light .nav-link').click((e) => {

	$(e.currentTarget).addClass('active');
	$('.navbar.navbar-light .nav-link').not(e.currentTarget).removeClass('active');

	if ($(e.currentTarget).attr('id') == 'distance') {
		alert("구현 예정 중");
		return;
	}

	$.ajax({
		"url": "controller.do?command=arrayType",
		"data": { "jsonData": JSON.stringify({ "type": $(e.currentTarget).attr('id') }) },
		"method": "post",
		"success": (result) => {

			const rs = JSON.parse(result);
			
			for (let i = 0; i < rs.length; i++) {
				for (let index = 0; index < cardArr.length; index++) {
					if ($(cardArr[index]).find('input[type="hidden"]').val() == rs[i].idx) {
						let $temp = $(cardArr[i]).html();
						$(cardArr[i]).html($(cardArr[index]).html());
						$(cardArr[index]).html($temp);
					}
				}

			}
		}
	})
})