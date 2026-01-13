var google;

function init() {
    var myLatlng = new google.maps.LatLng(40.69847032728747, -73.9514422416687);
    
    var mapOptions = {
        zoom: 7,
        center: myLatlng,
        scrollwheel: false,
        styles: [
            {
                "featureType": "administrative.country",
                "elementType": "geometry",
                "stylers": [
                    {
                        "visibility": "simplified"
                    },
                    {
                        "hue": "#ff0000"
                    }
                ]
            }
        ]
    };

    var mapElement = document.getElementById('map');
    var map = new google.maps.Map(mapElement, mapOptions);
    
    var addresses = ['New York'];

    // Function to add markers to the map
    function addMarkers() {
        for (var x = 0; x < addresses.length; x++) {
            $.getJSON('https://maps.googleapis.com/maps/api/geocode/json?address='+addresses[x]+'&sensor=false', null, function (data) {
                var p = data.results[0].geometry.location
                var latlng = new google.maps.LatLng(p.lat, p.lng);
                new google.maps.Marker({
                    position: latlng,
                    map: map,
                    icon: 'images/loc.png'
                });
            });
        }
    }

    // Callback function to ensure markers are added only after all requests have completed
    function handleAllRequestsComplete() {
        addMarkers();
    }

    // Count the number of requests completed
    var requestsCompleted = 0;

    // Increment the requestsCompleted counter for each completed request
    function onRequestComplete() {
        requestsCompleted++;
        if (requestsCompleted === addresses.length) {
            handleAllRequestsComplete();
        }
    }

    // Make geocoding requests and call onRequestComplete when each request is complete
    for (var i = 0; i < addresses.length; i++) {
        $.getJSON('https://maps.googleapis.com/maps/api/geocode/json?address=' + addresses[i] + '&sensor=false', onRequestComplete);
    }
}

google.maps.event.addDomListener(window, 'load', init);
