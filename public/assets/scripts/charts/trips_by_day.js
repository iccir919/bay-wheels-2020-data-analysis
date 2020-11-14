new Chart(
	document.getElementById("trips-by-day-chart"),
	{
		"type":"bar",
		"data":{
			"labels": tripsByDay.map((row) => "" + row.day),
			"datasets":[
				{
					"label":"Daily total number of trips",
					"data": tripsByDay.map((row) => row.total),
					"backgroundColor": "rgba(255, 0, 200)",
					"borderColor": "rgba(255, 0, 200)",
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



