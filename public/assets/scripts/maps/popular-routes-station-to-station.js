let popularRoutesStationToStationMap;
let popularRoutesStationToStationCanvas;
// Create a new Mappa instance using Leaflet
const mappa = new Mappa('Leaflet');

// Options for map
const options = {
    lat: 37.792196,
    lng: -122.402290,
    zoom: 13.1,
    style: 'https://stamen-tiles-{s}.a.ssl.fastly.net/toner/{z}/{x}/{y}{r}.png'
}

// Station associated with a mouseover on a row from the popular station table
let mouseoveredPopularStationID;

function setup() {
    popularRoutesStationToStationCanvas = createCanvas(330, 450);
    popularRoutesStationToStationCanvas.parent("#popular-routes-station-to-station-map");
    
    // Create a tile map and overlay the canvas on top.
    popularRoutesStationToStationMap = mappa.tileMap(options);
    popularRoutesStationToStationMap.overlay(popularRoutesStationToStationCanvas);

    const popularStationRows = document.querySelectorAll(".popular-station-row");
    popularStationRows.forEach((row) => row.addEventListener("mouseover", function(){
        mouseoveredPopularStationID = Number(this.getAttribute("data-station-id"));
    }));
    popularStationRows.forEach((row) => row.addEventListener("mouseout", function(){
        mouseoveredPopularStationID = undefined;
    }));
}

function draw() {
    clear();

    for (let i = 0; i < popularRoutesStationToStationData.length; i++) {
        const row = popularRoutesStationToStationData[i];
        const startPos = popularRoutesStationToStationMap.latLngToPixel(row.start_lat, row.start_lng);
        const endPos =  popularRoutesStationToStationMap.latLngToPixel(row.end_lat, row.end_lng);
        
        if (
            startPos.x === endPos.x
            && startPos.x === endPos.x
        ) {
            fill('rgba(255, 0, 200, 0.5)');
            const radiusValue = map(row.total, 135, 1197, 1, 10);
            ellipse(startPos.x, startPos.y, radiusValue, radiusValue);
        } else {
            stroke('rgba(255, 0, 200, 0.25)');
            const lineStrokeValue = map(row.total, 135, 1197, 1, 15);
            strokeWeight(lineStrokeValue)
            line(startPos.x, startPos.y, endPos.x, endPos.y);
        }
    }

    if (mouseoveredPopularStationID) {
        const targetStation = mostPopularStationsData.find((station) => station.station_id === mouseoveredPopularStationID);
        popularRoutesStationToStationMap.map.flyTo([targetStation.station_lat, targetStation.station_lng], 14);


        const radiusValue = 20;
        fill('#8B37FF');
        const coords =  popularRoutesStationToStationMap.latLngToPixel(targetStation.station_lat, targetStation.station_lng);
        ellipse(coords.x, coords.y, radiusValue, radiusValue);  
    }
}