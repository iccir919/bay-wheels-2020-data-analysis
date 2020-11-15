const table = document.getElementById("most-popular-stations-table");
const tableBody = document.createElement("tbody");

for (let i = 0; i < mostPopularStationsData.length; i++) {
    const data = mostPopularStationsData[i];

    const row = document.createElement("tr");
    row.classList.add("popular-station-row");
    row.dataset.stationId = data.station_id;

    row.innerHTML = `
        <th scope="row">${i+1}</th>
        <td>${data.station_name}</td>
        <td>${data.total.toLocaleString()}</td>
    `;

    tableBody.append(row);
}

table.append(tableBody)