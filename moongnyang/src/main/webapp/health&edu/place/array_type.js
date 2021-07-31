/**
 * 
 */

const arr = new Array($('.card-frame').length);


for (let index = 0; index < arr.length; index++) {
	arr[index] = $('.card-frame').get(index);
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
				for (let index = 0; index < arr.length; index++) {
					if ($(arr[index]).find('input[type="hidden"]').val() == rs[i].idx) {
						let $temp = $(arr[i]).html();
						$(arr[i]).html($(arr[index]).html());
						$(arr[index]).html($temp);
					}
				}

			}
		}
	})
})