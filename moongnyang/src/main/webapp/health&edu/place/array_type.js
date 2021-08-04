/**
 * 
 */

const cardArr = new Array($('.card-frame').length);


for (let index = 0; index < cardArr.length; index++) {
	cardArr[index] = $('.card-frame').get(index);
}


const distanceArray = () => {

	let currContents;

	for (let indexY = 0; indexY < cardArr.length; indexY++) {
		for (let indexX = 0; indexX < cardArr.length - indexY; indexX++) {

			if (new Number($($('.placeDistance').get(indexX - 1)).text()) > new Number($($('.placeDistance').get(indexX)).text())) {
				currContents = $($('.card-frame').get(indexX)).html(); // 현재 index 내용
				$($('.card-frame').get(indexX)).html($($('.card-frame').get(indexX - 1)).html());
				$($('.card-frame').get(indexX - 1)).html(currContents);
			}
		}
	}
}




$('.navbar.navbar-light .nav-link').click((e) => {

	$(e.currentTarget).addClass('active');
	$('.navbar.navbar-light .nav-link').not(e.currentTarget).removeClass('active');

	if ($(e.currentTarget).attr('id') == 'distance') {
		distanceArray();
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
					if ($($('.card-frame').get(index)).find('input[type="hidden"]').val() == rs[i].idx) {
						let $temp = $($('.card-frame').get(i)).html();
						$($('.card-frame').get(i)).html($($('.card-frame').get(index)).html());
						$($('.card-frame').get(index)).html($temp);
					}
				}

			}
		}
	})
})


