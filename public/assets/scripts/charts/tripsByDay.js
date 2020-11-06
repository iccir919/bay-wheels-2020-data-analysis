new Chart(
	document.getElementById("trips-by-day-chart"),
	{
		"type":"bar",
		"data":{
			"labels": tripsByDay.map((row) => row.day),
			"datasets":[
				{
					"label":"Daily total number of trips",
					"data": tripsByDay.map((row) => row.total),
					"backgroundColor": 'rgb(255, 99, 132)',
					"borderColor":"rgb(255, 99, 132)",
					"lineTension":0.1
				}
			]
		},
		"options": {
			scales: {
				xAxes: [{
					type: 'time',
					time: {
						displayFormats: {
							quarter: 'MMM YYYY'
						}
					}
				}]
			}
		}
	}
);



