/**
 * 
 */




//모달을 전역변수로 선언
var modalContents = $(".modal-contents");
var modal = $("#defaultModal");



$('.onlyAlphabetAndNumber').keyup(function(event) {
	console.log(event.keyCode);
	if (!(event.keyCode >= 37 && event.keyCode <= 40)) {
		var inputVal = $(this).val();
		$(this).val(inputVal.replace(/[^_a-z0-9\s][^ㄱ-ㅎ|ㅏ-ㅣ|가-힣\s]/gi, '')); //_(underscore), 영어, 숫자만 가능
	}

});

$('#phoneNumber').keyup(function(event) {

	var divPhoneNumber = $('#divPhoneNumber');

	if ($.trim($('#phoneNumber').val()) == "") {
		divPhoneNumber.removeClass("has-success");
		divPhoneNumber.addClass("has-error");
	} else {
		divPhoneNumber.removeClass("has-error");
		divPhoneNumber.addClass("has-success");
	}
});





//------- validation 검사

$('.submit-btn').click(

	function(event) {

		var provision = $('#provision');
		var memberInfo = $('#memberInfo');
		var divId = $('#divId');
		var divPassword = $('#divPassword');
		var divPhoneNumber = $('#divPhoneNumber');
		var session = $('.session').val();
		
		if(session == null || session.trim().length == 0){
			alert('세션이 만료되었습니다. 로그인 페이지로 이동합니다');
			location.href='mypageServlet?command=loginpage';
			return;
		}
		

		//회원가입약관
		if ($('#provisionYn:checked').val() == "N") {
			modalContents.text("회원가입약관에 동의하여 주시기 바랍니다."); //모달 메시지 입력
			modal.modal('show'); //모달 띄우기

			provision.removeClass("has-success");
			provision.addClass("has-error");
			$('#provisionYn').focus();
			$('div').remove('.modal-backdrop.fade.show');
			return false;
		} else {
			provision.removeClass("has-error");
			provision.addClass("has-success");
			$('div').remove('.modal-backdrop.fade.show');
		}

		//개인정보취급방침
		if ($('#memberInfoYn:checked').val() == "N") {
			modalContents.text("개인정보취급방침에 동의하여 주시기 바랍니다.");
			modal.modal('show');

			memberInfo.removeClass("has-success");
			memberInfo.addClass("has-error");
			$('#memberInfoYn').focus();
			$('div').remove('.modal-backdrop.fade.show');
			return false;
		} else {
			memberInfo.removeClass("has-error");
			memberInfo.addClass("has-success");
			$('div').remove('.modal-backdrop.fade.show');
		}

		// 상호명
		if ($('#company-name').val() == "") {
			modalContents.text("상호명을 입력하여 주시기 바랍니다.");
			modal.modal('show');

			divId.removeClass("has-success");
			divId.addClass("has-error");
			$('#company-name').focus();
			$('div').remove('.modal-backdrop.fade.show');
			return false;
		} else {
			divId.removeClass("has-error");
			divId.addClass("has-success");
			$('div').remove('.modal-backdrop.fade.show');
		}

		// 우편번호 
		if ($('#userZipcode').val() == "") {
			modalContents.text("[우편번호찾기] 를 완료 해 주시기 바랍니다.");
			modal.modal('show');

			divPassword.removeClass("has-success");
			divPassword.addClass("has-error");
			$('div').remove('.modal-backdrop.fade.show');
			return false;
		} else {
			divPassword.removeClass("has-error");
			divPassword.addClass("has-success");
			$('div').remove('.modal-backdrop.fade.show');
		}

	

		if ($('.start-sales >option:selected').text() == '영업시작' && $('.start-sales >option:selected').css('background-color') == 'white') {
			modalContents.text("영업시작 시간을  선택 해 주시기 바랍니다.");
			modal.modal('show');

			$('.start-sales').focus();
			$('div').remove('.modal-backdrop.fade.show');
			return false;
		}


		if ($('.end-sales >option:selected').text() == '영업종료' && $('.end-sales >option:selected').css('background-color') == 'white') {
			modalContents.text("영업종료 시간을  선택 해 주시기 바랍니다.");
			modal.modal('show');

			$('.end-sales').focus();
			$('div').remove('.modal-backdrop.fade.show');
			return false;
		}






		//전화 번호
		if ($('#phoneNumber').val() == "") {
			modalContents.text("전화 번호를 입력하여 주시기 바랍니다.");
			modal.modal('show');

			divPhoneNumber.removeClass("has-success");
			divPhoneNumber.addClass("has-error");
			$('#phoneNumber').focus(); $('div').remove('.modal-backdrop.fade.show');
			return false;
		} else {
			divPhoneNumber.removeClass("has-error");
			divPhoneNumber.addClass("has-success"); $('div').remove('.modal-backdrop.fade.show');
		}


		// 소개글 
		if ($('.introduce').val() == "") {
			modalContents.text("매장 소개 글을 입력하여 주시기 바랍니다.");
			modal.modal('show');

			divPhoneNumber.removeClass("has-success");
			divPhoneNumber.addClass("has-error");
			$('.introduce').focus();
			$('div').remove('.modal-backdrop.fade.show');
			return false;
		} else {
			divPhoneNumber.removeClass("has-error");
			divPhoneNumber.addClass("has-success"); $('div').remove('.modal-backdrop.fade.show');
		}


		const ph_num = $('#phoneNumber').val();



		// 전화번호
		if ((ph_num.match(/^\d{2,4}-\d{3,4}-\d{4}$/) == null)) {
			$('#phoneNumber').val(ph_num.replace(ph_num, ''));
			$('#phoneNumber').focus();
			modalContents.text("전화번호를  형식에 맞추어 입력 해 주시기 바랍니다.");
			modal.modal('show');
			$('div').remove('.modal-backdrop.fade.show');
			return false;
		}


		const link_url = $('.link_url').val();


		// 대표 url
		if ((link_url.match(/(http(s)?:\/\/)([a-z0-9\w]+\.*)+[a-z0-9]{2,4}/gi)) == null && link_url.trim().length != 0) {
			$('.link_url').val(link_url.replace(link_url, ''));
			$('.link_url').focus();
			modalContents.text("대표 URL 을  형식에 맞추어 입력 해 주시기 바랍니다.");
			modal.modal('show');
			$('div').remove('.modal-backdrop.fade.show');
			console.log(link_url);
			return false;
		}


		const frm = event.target.form;
		console.log(frm);
		frm.method = 'post';
		frm.action = 'controller.do';
		frm.submit();


	})


$('.start-sales').change((e) => {

	let op = $('.end-sales > option');
	console.log($(e.currentTarget).val());

	for (let index = 0; index < op.length; index++) {
		if ($(op.get(index)).val() <= $(e.currentTarget).val()) {
			$(op.get(index)).attr('disabled', 'disabled').css('background-color', '#d5d6d7');
		}
	}
})



$('.all-day').change((e) => {

	if ($(e.currentTarget).is(":checked")) {
		$('.start-sales').attr('disabled', 'disabled').css('background-color', '#d5d6d7');
		$('.end-sales').attr('disabled', 'disabled').css('background-color', '#d5d6d7');
		$('#time .date').removeAttr('disabled').css('background-color', 'white');
		$('#time .closed').prop('checked', false);
		$(e.currentTarget).attr('name', 'date');
	} else {
		$('.start-sales').removeAttr('disabled').css('background-color', 'white');
		$('.end-sales').removeAttr('disabled').css('background-color', 'white');


		$(e.currentTarget).removeAttr('name');
	}
})



$('.closed').change((e) => {

	if ($(e.currentTarget).is(":checked")) {
		$('#time > select').attr('disabled', 'disabled').css('background-color', '#d5d6d7');
		$('#time .all-day').prop('checked', false);
		$(e.currentTarget).attr('name', 'date');
	} else {
		$('#time > select').removeAttr('disabled', 'disabled').css('background-color', 'white');
		$(e.currentTarget).removeAttr('name');
	}
})




$('.start-sales option:eq(0)').prop("selected", true);
$('.end-sales option:eq(0)').prop("selected", true);

$('.close-btn').click(() => {
	modal.modal('hide');
})



// test case 


/*
$('#company-name').val('크루엘라동물병원');
$('#user-detail-address').val('불양짜장면');
$('#phoneNumber').val('02-3365-9545');
$('.link_url').val('http://www.naver.com');
$('.introduce').text('로렘 입숨(lorem ipsum; 줄여서 립숨, lipsum)은 출판이나');
$('#userZipcode').val('123456');
$('#userAddress').val('주소주소');
$('#all-day').attr('checked','checked');
*/