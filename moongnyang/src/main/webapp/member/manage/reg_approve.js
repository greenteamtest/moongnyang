/**
 * 
 */

let arr;

$('.checkbox').click((e) => {
	$(e.currentTarget).toggleClass('activated');
})

$('.approve').click((e) => {
	$('.alert').addClass('approve');
	$('.alert').removeClass('approveAll');
	$('.alert').removeClass('reject');
	$('.alert .modal-body').text('승인 하시겠습니까 ?');
	$('.alert').modal('show');
})

$('.approveAll').click((e) => {
	$('.alert').addClass('approveAll');
	$('.alert').removeClass('approve');
	$('.alert').removeClass('reject');
	$('.alert .modal-body').text('일괄 승인 하시겠습니까 ?');
	$('.alert').modal('show');
})

$('.reject').click((e) => {
	$('.alert').addClass('reject');
	$('.alert').removeClass('approveAll');
	$('.alert').removeClass('approve');
	$('.alert .modal-body').text('승인 거부 하시겠습니까 ?');
	$('.alert').modal('show');
})


$('.yes').click(() => {
	
	let key ;
	
	if ($('.alert').hasClass('approve')) {
		arr = new Array($('.activated').length);
		for (var i = 0; i < $('.activated').length; i++) {
			arr[i] = $($('.activated').get(i)).closest('.tr').prev().val();
			console.log(arr[i]);
		}
		key = 'approve';
	} else if ($('.alert').hasClass('approveAll')) {
		arr = new Array($('.checkbox').length);
		for (var i = 0; i < $('.checkbox').length; i++) {
			arr[i] = $($('.checkbox').get(i)).closest('.tr').prev().val();
			console.log(arr[i]);
		}
		key = 'approveAll';
	} else if ($('.alert').hasClass('reject')) {
		arr = new Array($('.activated').length);
		for (var i = 0; i < $('.activated').length; i++) {
			arr[i] = $($('.activated').get(i)).closest('.tr').prev().val();
			console.log(arr[i]);
		}
		key = 'reject';
	}
	location.href = `controller.do?command=approveReg&key=${key}&param=${arr}`;
})


$('.no').click((e) => {
	$('.alert').modal('hide');
})
