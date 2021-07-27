(function() {
	'use strict'
	feather.replace({ 'aria-hidden': 'true' })
	var ctx = document.getElementById('myChart')
	var myChart = new Chart(ctx, {
		type: 'line',
		data: {
			labels: [
				'일요일',
				'월요일',
				'화요일',
				'수요일',
				'목요일',
				'금요일',
				'토요일'
			],
			datasets: [{
				data: [
					1200,
					1150,
					995,
					850,
					1015,
					1190,
					1700
				],
				lineTension: 0,
				backgroundColor: 'transparent',
				borderColor: '#007bff',
				borderWidth: 4,
				pointBackgroundColor: '#007bff'
			}]
		},
		options: {
			scales: {
				yAxes: [{
					ticks: {
						beginAtZero: false
					}
				}]
			},
			legend: {
				display: false
			}
		}
	})
})();
(function() {
	'use strict'
	feather.replace({ 'aria-hidden': 'true' })
	var ctx = document.getElementById('totalView')
	var totalView = new Chart(ctx, {
		type: 'line',
		data: {
			labels: [
				'일요일',
				'월요일',
				'화요일',
				'수요일',
				'목요일',
				'금요일',
				'토요일'
			],
			datasets: [{
				data: [
					500,
					1150,
					995,
					850,
					1015,
					1190,
					1700
				],
				lineTension: 0,
				backgroundColor: 'transparent',
				borderColor: '#007bff',
				borderWidth: 4,
				pointBackgroundColor: '#007bff'
			}]
		},
		options: {
			scales: {
				yAxes: [{
					ticks: {
						beginAtZero: false
					}
				}]
			},
			legend: {
				display: false
			}
		}
	})
})();
