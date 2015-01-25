// for HTML    <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?libraries=places,weather&sensor=FALSE"></script>

var map;
var service;
var marker;


function handleSearchResults(results, status){
	console.log(results);

	for(var i = 0; i < results.length; i++){
	marker = new google.maps.Marker({
  	position: results[i].geometry.location,
  	map: map,
  	icon: "http://www.seriouseats.com/images/bug-qb-mcdonalds.png"
  });
	}
};




function performSearch() {
	
	var request = {
		bounds: map.getBounds(),
		name: "Giraffe"
	}
	service.nearbySearch(request, handleSearchResults);
};


function initialize (location) {

console.log(location);

var currentPos = new google.maps.LatLng(location.coords.latitude, location.coords.longitude);

var mapOptions = {
    zoom: 10,
    center: currentPos,
    mapTypeId: google.maps.MapTypeId.ROADMAP
};

map = new google.maps.Map(document.getElementById("map_canvas"),
    mapOptions);

  var marker = new google.maps.Marker({
  	position: currentPos,
  	map: map
  });



  service = new google.maps.places.PlacesService(map);

  google.maps.event.addListenerOnce(map, 'bounds_changed', performSearch);

  $('#refresh').click(performSearch);



  //traffic 
  var trafficLayer = new google.maps.TrafficLayer();
  $('#toggle_traffic').click(function(){
  	if (trafficLayer.getMap()) {
  		trafficLayer.setMap(null);
  	} else {
  		trafficLayer.setMap(map);
  	}

  });

  //weather
var weatherLayer = new google.maps.weather.WeatherLayer({
  temperatureUnits: google.maps.weather.TemperatureUnit.CELSIUS
});
var cloudLayer = new google.maps.weather.CloudLayer();
  $('#toggle_weather').click(function(){
  	if(weatherLayer.getMap() || cloudLayer.getMap()) {
  		weatherLayer.setMap(null);
  		cloudLayer.setMap(null);
  	}	else {
  		weatherLayer.setMap(map);
  		cloudLayer.setMap(map);
  	}

  });

}
$(document).ready(function () {
navigator.geolocation.getCurrentPosition(initialize);

});
