// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
var map;
function initialize() {
    var mapOptions = {
        zoom: 15,
        mapTypeId: google.maps.MapTypeId.HYBRID,
        center: new google.maps.LatLng(52.28147059389942,20.88599681854248)
    };
    map = new google.maps.Map(document.getElementById('map-canvas'),
        mapOptions);

    google.maps.event.addListener(map, 'click', function(event) {
        placeMarker(event.latLng);
    });


}

var marker = null
var infowindow = new google.maps.InfoWindow();
google.maps.event.addListener(infowindow, 'domready', function(event){
    $( "#report_seen_on" ).datepicker({ altFormat: "yy-mm-dd",altField: '#report_seen_on'});
})
function load_content(marker, latLng){
    $.ajax({
        url: '/reports/new',
        success: function(data){
            infowindow.setContent(data);
            infowindow.open(map, marker);
            alert(latLng.lat()+', '+latLng.lng())
            $('#report_lat').val(latLng.lat())
            $('#report_lng').val(latLng.lng())
        }
    });
}


function placeMarker(location) {
    if (marker != null) return
    marker = new google.maps.Marker({
        position: location,
        draggable:true,
        map: map
    });
    google.maps.event.addListener(marker, 'click',function(event){
        infowindow.close();
        load_content(marker,marker.getPosition());
    });
}

google.maps.event.addDomListener(window, 'load', initialize);



