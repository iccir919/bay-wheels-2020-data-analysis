const table = document.getElementById("most-popular-stations-table");

for (let i = 0; i < mostPopularStationsData.length; i++) {
    const row = document.createElement("tr");

    const data = mostPopularStationsData[i];
    row.innerHTML = `
        <th scope="row">${i+1}</th>
        <td>${data.station_name}</td>
        <td>${data.total}</td>
    `;

    table.append(row);
}