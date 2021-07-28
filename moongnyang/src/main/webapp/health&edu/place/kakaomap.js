
const container = document.getElementById('testmap');

const options = {
	center: new kakao.maps.LatLng(33.450701, 126.570667),
	level: 5
};
const map = new kakao.maps.Map(container, options);
// 주소-좌표 변환 객체를 생성합니다
const geocoder = new daum.maps.services.Geocoder();



function myMarker(address) {
	// 주소로 좌표를 검색합니다
	geocoder.addressSearch(address, function(result, status) {
		// 정상적으로 검색이 완료됐으면 
		if (status === daum.maps.services.Status.OK) {

			const coords = new daum.maps.LatLng(result[0].y, result[0].x);

			// 결과값으로 받은 위치를 마커로 표시합니다
			var marker = new daum.maps.Marker({
				map: map,
				position: coords
			});
		

			// 커스텀 오버레이에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
			var content = '<div class="customoverlay">'
				+ '    <span class="title">'
				+ '<div style="font-style:normal; color:red; font-weight:bold; font-size:2.0em">'
				+ '*' + '</div>' + '</span>'
				+ '</div>';

			// 커스텀 오버레이가 표시될 위치입니다 
			var position = new daum.maps.LatLng(result[0].y-0.0003, result[0].x);

			// 커스텀 오버레이를 생성합니다
			var customOverlay = new daum.maps.CustomOverlay(
				{
					map: map,
					position: position,
					content: content,
					yAnchor: 1
				});

			// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
			map.setCenter(coords);
			layout();
		}
	});
}


