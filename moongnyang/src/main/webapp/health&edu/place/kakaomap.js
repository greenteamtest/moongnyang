

let placeX;
let placeY;

const container = document.getElementById('container'), // 지도와 로드뷰를 감싸고 있는 div 입니다
	mapWrapper = document.getElementById('mapWrapper'), // 지도를 감싸고 있는 div 입니다
	btnRoadview = document.getElementById('btnRoadview'), // 지도 위의 로드뷰 버튼, 클릭하면 지도는 감춰지고 로드뷰가 보입니다 
	mapContainer = document.getElementById('map'), // 지도를 표시할 div 입니다
	rvWrapper = document.getElementById('rvWrapper'), // 로드뷰 감싸는 div 
	btnMap = document.getElementById('btnMap'), // 로드뷰 위의 지도 버튼, 클릭하면 로드뷰는 감춰지고 지도가 보입니다 
	rvContainer = document.getElementById('roadview'); // 로드뷰를 표시할 div 입니다

// 지도와 로드뷰 위에 마커로 표시할 특정 장소의 좌표입니다 
const placePosition = new kakao.maps.LatLng(33.450701, 126.570667);

// 지도 옵션입니다 
const mapOption = {
	center: placePosition, // 지도의 중심좌표 
	level: 3 // 지도의 확대 레벨
};

// 지도를 표시할 div와 지도 옵션으로 지도를 생성합니다
let map = new kakao.maps.Map(mapContainer, mapOption);
//



// 지도 중심을 표시할 마커를 생성하고 특정 장소 위에 표시합니다 
const mapMarker = new kakao.maps.Marker({
	position: placePosition,
	map: map
});

// 지도와 로드뷰를 감싸고 있는 div의 class를 변경하여 지도를 숨기거나 보이게 하는 함수입니다 
function toggleMap(active) {
	if (active) {

		// 지도가 보이도록 지도와 로드뷰를 감싸고 있는 div의 class를 변경합니다
		container.className = "view_map"
	} else {

		// 지도가 숨겨지도록 지도와 로드뷰를 감싸고 있는 div의 class를 변경합니다
		container.className = "view_roadview"
	}
}


//  << 주소 변환 >> 

// 주소-좌표 변환 객체를 생성합니다
const geocoder = new kakao.maps.services.Geocoder();



function myMarker(address) {
	// 주소로 좌표를 검색합니다
	geocoder.addressSearch(address, function(result, status) {
		// 정상적으로 검색이 완료됐으면 
		if (status === daum.maps.services.Status.OK) {

			const coords = new kakao.maps.LatLng(result[0].y, result[0].x);
			placeX = result[0].x;
			placeY = result[0].y;
			
			
			// 결과값으로 받은 위치를 마커로 표시합니다
			const marker = new kakao.maps.Marker({
				map: map,
				position: coords
			});


			// 로드뷰 객체를 생성합니다 
			const roadview = new kakao.maps.Roadview(rvContainer);

			// 
			const roadviewClient = new kakao.maps.RoadviewClient()

			// 로드뷰의 위치를 특정 장소를 포함하는 파노라마 ID로 설정합니다
			// 로드뷰의 파노라마 ID는 Wizard를 사용하면 쉽게 얻을수 있습니다 
			roadviewClient.getNearestPanoId(coords, 100, function(panoId) {

				roadview.setPanoId(panoId, coords);
			});

			// 특정 장소가 잘보이도록 로드뷰의 적절한 시점(ViewPoint)을 설정합니다 
			// Wizard를 사용하면 적절한 로드뷰 시점(ViewPoint)값을 쉽게 확인할 수 있습니다
			roadview.setViewpoint({
				pan: 321,
				tilt: 0,
				zoom: 0
			});


			// 로드뷰 초기화가 완료되면 
			kakao.maps.event.addListener(roadview, 'init', function() {

				// 로드뷰에 특정 장소를 표시할 마커를 생성하고 로드뷰 위에 표시합니다 
				const rvMarker = new kakao.maps.Marker({
					position: coords,
					map: roadview
				});
			});

			// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
			map.setCenter(coords);



		}
	});
}

