let popularRoutesStationToStationMap;
let popularRoutesStationToStationCanvas;
// Create a new Mappa instance using Leaflet
const mappa = new Mappa('Leaflet');

// Options for map
const options = {
    lat: 37.780033,
    lng: -122.425400,
    zoom: 12.45,
    style: 'http://{s}.basemaps.cartocdn.com/dark_all/{z}/{x}/{y}.png'
}

function setup() {
    popularRoutesStationToStationCanvas = createCanvas(500, 400);
    popularRoutesStationToStationCanvas.parent("#popular-routes-station-to-station-map");
    
    // Create a tile map and overlay the canvas on top.
    popularRoutesStationToStationMap = mappa.tileMap(options);
    popularRoutesStationToStationMap.overlay(popularRoutesStationToStationCanvas);
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
            stroke('rgba(255, 0, 200, 0.5)');
            const lineStrokeValue = map(row.total, 135, 1197, 1, 15);
            strokeWeight(lineStrokeValue)
            line(startPos.x, startPos.y, endPos.x, endPos.y);
        }
    }
}