/**
 * 
 */

let sendURL;
let targetAddress;
let placeIdx;
let place;
let dipsCnt;
let reviewersCnt;
let sharingCnt;
let imgURL;

// SDK를 초기화 합니다. 사용할 앱의 JavaScript 키를 설정해 주세요.
Kakao.init('61eaf0ccb670c71fede5ee3ff459092e');

// SDK 초기화 여부를 판단합니다.
console.log("kakao.isInitialized ? " + Kakao.isInitialized());




$('.ui.labeled.button').click((e) => {
	const $parent = $(e.currentTarget).closest('.card-frame');
	sendURL = $(e.currentTarget).find('input[type="hidden"]').val(); // 전달할 URL

	targetAddress = $parent.find('.card-body > .card-text').text();
	place = $parent.find('.card-body > .card-title').text();
	placeIdx = $parent.find('.card > input[type="hidden"]').val();

	dipsCnt = $parent.find('.ui.basic.red.left.pointing.label').text();
	reviewersCnt = $parent.find('.reviewersCnt').val();
	sharingCnt = $parent.find('.sharingCnt').text();
	imgURL = $parent.find('.imgURL').val();


	Kakao.Link.createDefaultButton({ // 카톡 
		container: '#create-kakao-link-btn',
		objectType: 'location',
		address: `${targetAddress}`,
		addressTitle: '뭉냥뭉냥',
		content: {
			title: `${place}       from 뭉냥뭉냥`,
			description: `${targetAddress}`,
			imageUrl:
				`${imgURL}`,
			link: {
				mobileWebUrl: 'http://www.naver.com',
				webUrl: 'http://www.naver.com',
			},
		},
		social: {
			likeCount: Number(dipsCnt),
			commentCount: Number(reviewersCnt),
			sharedCount: Number(sharingCnt),
		},
		buttons: [
			{
				title: '웹으로 보기',
				link: {
					mobileWebUrl: 'http://www.naver.com',
					webUrl: 'http://www.naver.com',
				},
			},
		],
	})

})



$('#sharingModal .modal-body > button').click((e) => { // 페북 , 트위터 
	
	if ($(e.currentTarget).attr('class')!= 'ui linkedin button') {
		let targetURL = $(e.currentTarget).next().val();
		window.open(targetURL + sendURL);
	}
})



