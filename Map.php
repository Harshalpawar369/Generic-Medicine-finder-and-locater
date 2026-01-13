<?php
include 'php/connect.php';
session_start();

if(isset($_SESSION['user_id'])){
   $user_id = $_SESSION['user_id'];
}else{
   $user_id = '';
   header('location:login.php');
};
?>
<!DOCTYPE html>
<html>

<head>
  <!-- Basic -->
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <!-- Mobile Metas -->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <!-- Site Metas -->
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta name="author" content="" />

  <title>Mico</title>

  <!-- bootstrap core css -->
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

  <!-- fonts style -->
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700;900&display=swap" rel="stylesheet">

  <!-- owl slider stylesheet -->
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />

  <!-- font awesome style -->
  <link href="css/font-awesome.min.css" rel="stylesheet" />
  <!-- nice select -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/css/nice-select.min.css" integrity="sha256-mLBIhmBvigTFWPSCtvdu6a76T+3Xyt+K571hupeFLg4=" crossorigin="anonymous" />
  <!-- datepicker -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.css">

  <script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>
  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet" />
  <link href="css/css/map.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="css/responsive.css" rel="stylesheet" />


</head>

<body>
    <div class="hero_area">
        <?php include 'php/header.php'; ?>
        
        <section class="map_section">
            <div class="name" style="background-color:white; margin-top:10px; text-align:center;">
                <h2><span style="color:#4f9195;">Find Generic Medicals</span> Available in your Area</h2>
            </div>
            <div class="info-section">
            <img src="./images/worldwide.gif" alt="Innovative Technology">
                <input type="text" name="search_query" class="" placeholder="Search products..." id="searchField">
                <button type="button" class="button microphone-button" id="mic"><i class="fas fa-microphone"></i></button>
                <button onclick="searchLocation()" id="searchBtn">Search</button>
                <div id="map"></div>

                <h2>Welcome to GenoCare</h2>
                <p>Discover nearby medical facilities easily with Mico. Whether you're looking for hospitals, pharmacies, or other medical services, we've got you covered.</p>
                <div class="innovative">
                    <h3>Our Innovative Approach</h3>
                    <p>We utilize cutting-edge technology to provide real-time updates on medical facilities in your area. Our user-friendly interface makes it simple to find the care you need.</p>
                    
                </div>
            </div>
        </section>
    </div>
   
    <script>
        var map, infoWindow, geocoder, directionsService, directionsRenderer;

        function initMap() {
            map = new google.maps.Map(document.getElementById('map'), {
                center: { lat: 0, lng: 0 },
                zoom: 17
            });
            geocoder = new google.maps.Geocoder();
            infoWindow = new google.maps.InfoWindow;
            directionsService = new google.maps.DirectionsService();
            directionsRenderer = new google.maps.DirectionsRenderer();
            directionsRenderer.setMap(map);

            // Search for nearby medical facilities from user's location
            if (navigator.geolocation) {
                navigator.geolocation.getCurrentPosition(function(position) {
                    var pos = {
                        lat: position.coords.latitude,
                        lng: position.coords.longitude
                    };

                    infoWindow.setPosition(pos);
                    infoWindow.setContent('You are here.');
                    infoWindow.open(map);
                    map.setCenter(pos);

                    searchMedicalFacilities(pos);
                }, function() {
                    handleLocationError(true, infoWindow, map.getCenter());
                });
            } else {
                // Browser doesn't support Geolocation
                handleLocationError(false, infoWindow, map.getCenter());
            }
        }

        function handleLocationError(browserHasGeolocation, infoWindow, pos) {
            infoWindow.setPosition(pos);
            infoWindow.setContent(browserHasGeolocation ?
                'Error: The Geolocation service failed.' :
                'Error: Your browser doesn\'t support geolocation.');
            infoWindow.open(map);
        }

        function searchMedicalFacilities(location) {
            var request = {
                location: location,
                radius: '500', // Search radius in meters
                type: ['pharmacy'] // Types of medical facilities to search for
            };

            service = new google.maps.places.PlacesService(map);
            service.nearbySearch(request, callback);

            function callback(results, status) {
                if (status == google.maps.places.PlacesServiceStatus.OK) {
                    for (var i = 0; i < results.length; i++) {
                        var place = results[i];
                        createMarker(results[i]);
                    }
                }
            }
        }

        function searchLocation() {
            var address = document.getElementById('searchField').value;

            geocoder.geocode({ 'address': address }, function(results, status) {
                if (status === 'OK') {
                    var destination = results[0].geometry.location;
                    calculateAndDisplayRoute(destination);
                } else {
                    alert('Geocode was not successful for the following reason: ' + status);
                }
            });
        }

        function calculateAndDisplayRoute(destination) {
            if (navigator.geolocation) {
                navigator.geolocation.getCurrentPosition(function(position) {
                    var origin = {
                        lat: position.coords.latitude,
                        lng: position.coords.longitude
                    };

                    directionsService.route({
                        origin: origin,
                        destination: destination,
                        travelMode: 'DRIVING'
                    }, function(response, status) {
                        if (status === 'OK') {
                            directionsRenderer.setDirections(response);
                        } else {
                            window.alert('Directions request failed due to ' + status);
                        }
                    });
                }, function() {
                    handleLocationError(true);
                });
            } else {
                handleLocationError(false);
            }
        }

        function createMarker(place) {
            var marker = new google.maps.Marker({
                map: map,
                position: place.geometry.location
            });

            var infowindow = new google.maps.InfoWindow({
                content: place.name
            });

            marker.addListener('click', function() {
                infowindow.open(map, marker);
            });
        }
    </script>
      
     <script async
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCrrVEJ_rGSySaQzZmMzyE-HYIiOWopQzY&loading=async&libraries=places&callback=initMap">
</script>
      </body>

    </div>
    </section>
    <?php include 'php/footer.php'; ?>
    <!-- footer section -->

    <!-- jQery -->
    <script src="js/jquery-3.4.1.min.js"></script>
    <!-- bootstrap js -->
    <script src="js/bootstrap.js"></script>
    <!-- nice select -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/js/jquery.nice-select.min.js" integrity="sha256-Zr3vByTlMGQhvMfgkQ5BtWRSKBGa2QlspKYJnkjZTmo=" crossorigin="anonymous"></script>
    <!-- owl slider -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
    <!-- datepicker -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.js"></script>
    <!-- custom js -->
    <script src="js/custom.js"></script>
    <script src="js/js/mic.js"></script>

</body>

</html>
