/**
 * 
 */
let position;
let distance;
let currentPosX; // 현재 위치 경도 
let currentPosY; // 현재 위치 위도
let addressArr = new Array($(".card-text").length)





for (let index = 0; index < $('.placeDistance').length; index++) {

	getAddress(index);
};



function getAddress(index) {
	return new Promise(function() {
		geocoder.addressSearch($($(".card-text").get(index)).html(), function(result, status) {
			// 정상적으로 검색이 완료됐으면
			if (status === daum.maps.services.Status.OK) {
				position = {
					Y: result[0].y, // 위도 
					X: result[0].x, // 경도 
				};
				addressArr[index] = position;
				distance = getDistanceFunc(addressArr[index].Y, addressArr[index].X);
				$($('.placeDistance').get(index)).html(distance);
			}
		});

	});
}





navigator.geolocation.getCurrentPosition(locationLoadSuccess, locationLoadError); // 현재위치


// <!-- 위치 정보 -- >
function locationLoadSuccess(pos) { // 현재 위치 정보 get success

	console.log("현재 위도 "+ pos.coords.latitude);
	console.log("현재 경도 "+ pos.coords.longitude);

	currentPosY = pos.coords.latitude; // 위도 
	currentPosX = pos.coords.longitude; // 경도 
};


function locationLoadError() { // 현재 위치 정보 get fail
	alert('위치 정보를 가져오는데 실패했습니다.');
};


function getDistanceFunc(paramY, paramX) {

	var polyline = new kakao.maps.Polyline({
		
		path: [
			new kakao.maps.LatLng(currentPosY, currentPosX),
			new kakao.maps.LatLng(paramY, paramX)
		],
	});

	//return getTimeHTML(polyline.getLength());//미터단위로 길이 반환;

	return (polyline.getLength() / 1000).toFixed(2);
}

/*
 function getDistanceFunc( lat1, lon1, unit) {

	const theta = lon1 - currentPosX;
	let dist = Math.sin(deg2rad(lat1)) * Math.sin(deg2rad(currentPosY)) + Math.cos(deg2rad(lat1)) * Math.cos(deg2rad(currentPosY)) * Math.cos(deg2rad(theta));

	dist = Math.acos(dist);
	dist = rad2deg(dist);
	dist = dist * 60 * 1.1515;

	if (unit == "kilometer") {
		dist = dist * 1.609344;
	} else if (unit == "meter") {
		dist = dist * 1609.344;
	}

	return (dist);
}


    // This function converts decimal degrees to radians
    function deg2rad(deg) {
	return (deg * Math.PI / 180.0);
}

    // This function converts radians to decimal degrees
    function rad2deg(rad) {
	return (rad * 180 / Math.PI);
}
*/



